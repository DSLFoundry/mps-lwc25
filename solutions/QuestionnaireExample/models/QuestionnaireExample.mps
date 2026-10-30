<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:30d1f7ef-ee36-4bbf-a5bc-da6b15e2da30(QuestionnaireExample)">
  <persistence version="9" />
  <languages>
    <use id="83a543da-6367-4b94-9df8-b626b1b2132c" name="QuestionnaireLanguage" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="83a543da-6367-4b94-9df8-b626b1b2132c" name="QuestionnaireLanguage">
      <concept id="2589700000046740212" name="QuestionnaireLanguage.structure.Calculated" flags="ng" index="32rgip">
        <child id="2589700000046740215" name="computed" index="32rgiq" />
      </concept>
      <concept id="2589700000046736796" name="QuestionnaireLanguage.structure.Unary" flags="ng" index="32rhfL">
        <property id="2589700000046736811" name="operator" index="32rhf6" />
        <child id="2589700000046736812" name="operand" index="32rhf1" />
      </concept>
      <concept id="2589700000046736793" name="QuestionnaireLanguage.structure.Literal" flags="ng" index="32rhfO">
        <property id="2589700000046736805" name="value" index="32rhf8" />
        <property id="2589700000046736806" name="literalType" index="32rhfb" />
      </concept>
      <concept id="2589700000046736795" name="QuestionnaireLanguage.structure.Binary" flags="ng" index="32rhfQ">
        <property id="2589700000046736808" name="operator" index="32rhf5" />
        <child id="2589700000046736809" name="left" index="32rhf4" />
        <child id="2589700000046736810" name="right" index="32rhf7" />
      </concept>
      <concept id="2589700000046736794" name="QuestionnaireLanguage.structure.Reference" flags="ng" index="32rhfR">
        <property id="2589700000046741701" name="targetId" index="32rgUC" />
        <reference id="2589700000046736807" name="target" index="32rhfa" />
      </concept>
      <concept id="2589700000046736788" name="QuestionnaireLanguage.structure.Form" flags="ng" index="32rhfT">
        <property id="2589700000046743938" name="title" index="32rvvJ" />
        <child id="2589700000046736797" name="items" index="32rhfK" />
      </concept>
      <concept id="2589700000046736791" name="QuestionnaireLanguage.structure.Branch" flags="ng" index="32rhfU">
        <child id="2589700000046736804" name="items" index="32rhf9" />
        <child id="2589700000046736803" name="condition" index="32rhfe" />
      </concept>
      <concept id="2589700000046736790" name="QuestionnaireLanguage.structure.Question" flags="ng" index="32rhfV">
        <property id="2589700000046736800" name="valueType" index="32rhfd" />
        <property id="2589700000046736799" name="label" index="32rhfM" />
        <property id="2589700000046743942" name="id" index="32rvvF" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="32rhfT" id="2fKtARxBnV4">
    <property role="TrG5h" value="BenefitSurvey" />
    <property role="32rvvJ" value="BenefitSurvey" />
    <node concept="32rhfV" id="2fKtARxBvAR" role="32rhfK">
      <property role="32rvvF" value="ownsHome" />
      <property role="32rhfM" value="Do you own a home?" />
      <property role="32rhfd" value="boolean" />
    </node>
    <node concept="32rhfV" id="2fKtARxBvAS" role="32rhfK">
      <property role="32rvvF" value="residents" />
      <property role="32rhfM" value="How many residents?" />
      <property role="32rhfd" value="integer" />
    </node>
    <node concept="32rgip" id="2fKtARxDbW9" role="32rhfK">
      <property role="32rhfM" value="Annual cost estimate" />
      <property role="32rhfd" value="money" />
      <property role="32rvvF" value="annualCost" />
      <node concept="32rhfQ" id="2fKtARxDbWb" role="32rgiq">
        <property role="32rhf5" value="+" />
        <node concept="32rhfR" id="2fKtARxDbWe" role="32rhf4">
          <property role="32rgUC" value="residents" />
          <ref role="32rhfa" node="2fKtARxBvAS" />
        </node>
        <node concept="32rhfO" id="2fKtARxDbWf" role="32rhf7">
          <property role="32rhf8" value="5" />
          <property role="32rhfb" value="money" />
        </node>
      </node>
    </node>
    <node concept="32rhfU" id="2fKtARxBvB0" role="32rhfK">
      <node concept="32rhfR" id="2fKtARxBvB2" role="32rhfe">
        <property role="32rgUC" value="ownsHome" />
        <ref role="32rhfa" node="2fKtARxBvAR" />
      </node>
      <node concept="32rhfV" id="2fKtARxBvB3" role="32rhf9">
        <property role="32rvvF" value="homeType" />
        <property role="32rhfM" value="What type of home?" />
        <property role="32rhfd" value="string" />
      </node>
      <node concept="32rhfU" id="2fKtARxDc11" role="32rhf9">
        <node concept="32rhfQ" id="2fKtARxDc13" role="32rhfe">
          <property role="32rhf5" value="&gt;" />
          <node concept="32rhfR" id="2fKtARxDc16" role="32rhf4">
            <property role="32rgUC" value="residents" />
            <ref role="32rhfa" node="2fKtARxBvAS" />
          </node>
          <node concept="32rhfO" id="2fKtARxDc17" role="32rhf7">
            <property role="32rhf8" value="2" />
            <property role="32rhfb" value="integer" />
          </node>
        </node>
        <node concept="32rhfV" id="2fKtARxDc18" role="32rhf9">
          <property role="32rhfM" value="Does your home have a garden?" />
          <property role="32rhfd" value="boolean" />
          <property role="32rvvF" value="hasGarden" />
        </node>
      </node>
    </node>
    <node concept="32rgip" id="2fKtARxDc0W" role="32rhfK">
      <property role="32rhfM" value="Not a homeowner" />
      <property role="32rhfd" value="boolean" />
      <property role="32rvvF" value="notHomeowner" />
      <node concept="32rhfL" id="2fKtARxDc0Y" role="32rgiq">
        <property role="32rhf6" value="!" />
        <node concept="32rhfR" id="2fKtARxDc10" role="32rhf1">
          <property role="32rgUC" value="ownsHome" />
          <ref role="32rhfa" node="2fKtARxBvAR" />
        </node>
      </node>
    </node>
  </node>
  <node concept="32rhfT" id="2fKtARxCqdx">
    <property role="32rvvJ" value="InvalidNativeFixtures" />
    <property role="TrG5h" value="InvalidNativeFixtures" />
    <node concept="32rhfV" id="2fKtARxCZaq" role="32rhfK">
      <property role="32rvvF" value="duplicate" />
      <property role="32rhfM" value="Duplicate one" />
      <property role="32rhfd" value="string" />
    </node>
    <node concept="32rhfV" id="2fKtARxCZar" role="32rhfK">
      <property role="32rvvF" value="duplicate" />
      <property role="32rhfM" value="Duplicate two" />
      <property role="32rhfd" value="integer" />
    </node>
    <node concept="32rhfV" id="2fKtARxCZas" role="32rhfK">
      <property role="32rvvF" value="stringSource" />
      <property role="32rhfM" value="String source" />
      <property role="32rhfd" value="string" />
    </node>
    <node concept="32rgip" id="2fKtARxCZat" role="32rhfK">
      <property role="32rvvF" value="badArithmetic" />
      <property role="32rhfM" value="badArithmetic" />
      <property role="32rhfd" value="boolean" />
      <node concept="32rhfQ" id="2fKtARxCZav" role="32rgiq">
        <property role="32rhf5" value="+" />
        <node concept="32rhfR" id="2fKtARxCZay" role="32rhf4">
          <property role="32rgUC" value="stringSource" />
          <ref role="32rhfa" node="2fKtARxCZas" />
        </node>
        <node concept="32rhfO" id="2fKtARxCZaz" role="32rhf7">
          <property role="32rhf8" value="2" />
          <property role="32rhfb" value="integer" />
        </node>
      </node>
    </node>
    <node concept="32rgip" id="2fKtARxCZa$" role="32rhfK">
      <property role="32rvvF" value="cycleA" />
      <property role="32rhfM" value="cycleA" />
      <property role="32rhfd" value="integer" />
      <node concept="32rhfR" id="2fKtARxCZaA" role="32rgiq">
        <property role="32rgUC" value="cycleB" />
        <ref role="32rhfa" node="2fKtARxCZaB" />
      </node>
    </node>
    <node concept="32rgip" id="2fKtARxCZaB" role="32rhfK">
      <property role="32rvvF" value="cycleB" />
      <property role="32rhfM" value="cycleB" />
      <property role="32rhfd" value="integer" />
      <node concept="32rhfR" id="2fKtARxCZaD" role="32rgiq">
        <property role="32rgUC" value="cycleA" />
        <ref role="32rhfa" node="2fKtARxCZa$" />
      </node>
    </node>
    <node concept="32rgip" id="2fKtARxCZaE" role="32rhfK">
      <property role="32rvvF" value="unresolved" />
      <property role="32rhfM" value="unresolved" />
      <property role="32rhfd" value="integer" />
      <node concept="32rhfR" id="2fKtARxCZaG" role="32rgiq">
        <property role="32rgUC" value="missing" />
      </node>
    </node>
    <node concept="32rhfU" id="2fKtARxCZaH" role="32rhfK">
      <node concept="32rhfO" id="2fKtARxCZaJ" role="32rhfe">
        <property role="32rhf8" value="42" />
        <property role="32rhfb" value="integer" />
      </node>
      <node concept="32rhfV" id="2fKtARxCZaK" role="32rhf9">
        <property role="32rvvF" value="conditional" />
        <property role="32rhfM" value="Inside invalid condition" />
        <property role="32rhfd" value="string" />
      </node>
    </node>
    <node concept="32rgip" id="2fKtARxD_i4" role="32rhfK">
      <property role="32rhfM" value="Missing native target" />
      <property role="32rhfd" value="integer" />
      <property role="32rvvF" value="unresolvedNative" />
      <node concept="32rhfR" id="2fKtARxD_i6" role="32rgiq">
        <property role="32rgUC" value="absentFromForm" />
      </node>
    </node>
    <node concept="32rhfU" id="2fKtARxElQ1" role="32rhfK">
      <node concept="32rhfO" id="2fKtARxElQ3" role="32rhfe">
        <property role="32rhf8" value="true" />
        <property role="32rhfb" value="boolean" />
      </node>
      <node concept="32rhfV" id="2fKtARxElQ4" role="32rhf9">
        <property role="32rhfM" value="Nested duplicate" />
        <property role="32rhfd" value="string" />
        <property role="32rvvF" value="duplicate" />
      </node>
    </node>
    <node concept="32rgip" id="2fKtARxElQ5" role="32rhfK">
      <property role="32rhfM" value="Result type mismatch" />
      <property role="32rhfd" value="boolean" />
      <property role="32rvvF" value="badResult" />
      <node concept="32rhfQ" id="2fKtARxElQ7" role="32rgiq">
        <property role="32rhf5" value="+" />
        <node concept="32rhfO" id="2fKtARxElQa" role="32rhf4">
          <property role="32rhf8" value="1" />
          <property role="32rhfb" value="integer" />
        </node>
        <node concept="32rhfO" id="2fKtARxElQb" role="32rhf7">
          <property role="32rhf8" value="2" />
          <property role="32rhfb" value="integer" />
        </node>
      </node>
    </node>
    <node concept="32rgip" id="2fKtARxElQc" role="32rhfK">
      <property role="32rhfM" value="Logical operand mismatch" />
      <property role="32rhfd" value="boolean" />
      <property role="32rvvF" value="badLogical" />
      <node concept="32rhfQ" id="2fKtARxElQe" role="32rgiq">
        <property role="32rhf5" value="&amp;&amp;" />
        <node concept="32rhfO" id="2fKtARxElQh" role="32rhf4">
          <property role="32rhf8" value="true" />
          <property role="32rhfb" value="boolean" />
        </node>
        <node concept="32rhfO" id="2fKtARxElQi" role="32rhf7">
          <property role="32rhf8" value="0" />
          <property role="32rhfb" value="integer" />
        </node>
      </node>
    </node>
    <node concept="32rgip" id="2fKtARxElQj" role="32rhfK">
      <property role="32rhfM" value="Unary operand mismatch" />
      <property role="32rhfd" value="boolean" />
      <property role="32rvvF" value="badUnary" />
      <node concept="32rhfL" id="2fKtARxElQl" role="32rgiq">
        <property role="32rhf6" value="!" />
        <node concept="32rhfO" id="2fKtARxElQn" role="32rhf1">
          <property role="32rhf8" value="1" />
          <property role="32rhfb" value="integer" />
        </node>
      </node>
    </node>
    <node concept="32rgip" id="2fKtARxElQo" role="32rhfK">
      <property role="32rhfM" value="Comparison operand mismatch" />
      <property role="32rhfd" value="boolean" />
      <property role="32rvvF" value="badComparison" />
      <node concept="32rhfQ" id="2fKtARxElQq" role="32rgiq">
        <property role="32rhf5" value="&gt;" />
        <node concept="32rhfR" id="2fKtARxElQA" role="32rhf4">
          <property role="32rgUC" value="stringSource" />
          <ref role="32rhfa" node="2fKtARxCZas" />
        </node>
        <node concept="32rhfO" id="2fKtARxElQu" role="32rhf7">
          <property role="32rhf8" value="1" />
          <property role="32rhfb" value="integer" />
        </node>
      </node>
    </node>
    <node concept="32rgip" id="2fKtARxElQv" role="32rhfK">
      <property role="32rhfM" value="Direct self dependency" />
      <property role="32rhfd" value="integer" />
      <property role="32rvvF" value="directCycle" />
      <node concept="32rhfR" id="2fKtARxElQx" role="32rgiq">
        <property role="32rgUC" value="directCycle" />
        <ref role="32rhfa" node="2fKtARxElQv" />
      </node>
    </node>
    <node concept="32rgip" id="2fKtARxElQy" role="32rhfK">
      <property role="32rhfM" value="Out of form dependency" />
      <property role="32rhfd" value="string" />
      <property role="32rvvF" value="externalReference" />
      <node concept="32rhfR" id="2fKtARxElQ$" role="32rgiq">
        <property role="32rgUC" value="outsideQuestion" />
        <ref role="32rhfa" node="2fKtARxElQ0" />
      </node>
    </node>
    <node concept="32rgip" id="2fKtARxFMGf" role="32rhfK">
      <property role="32rvvF" value="badSubtract" />
      <property role="32rhfM" value="badSubtract" />
      <property role="32rhfd" value="integer" />
      <node concept="32rhfQ" id="2fKtARxFMGh" role="32rgiq">
        <property role="32rhf5" value="-" />
        <node concept="32rhfO" id="2fKtARxFMGk" role="32rhf4">
          <property role="32rhf8" value="x" />
          <property role="32rhfb" value="string" />
        </node>
        <node concept="32rhfO" id="2fKtARxFMGl" role="32rhf7">
          <property role="32rhf8" value="1" />
          <property role="32rhfb" value="integer" />
        </node>
      </node>
    </node>
    <node concept="32rgip" id="2fKtARxFMGm" role="32rhfK">
      <property role="32rvvF" value="badMultiply" />
      <property role="32rhfM" value="badMultiply" />
      <property role="32rhfd" value="integer" />
      <node concept="32rhfQ" id="2fKtARxFMGo" role="32rgiq">
        <property role="32rhf5" value="*" />
        <node concept="32rhfO" id="2fKtARxFMGr" role="32rhf4">
          <property role="32rhf8" value="x" />
          <property role="32rhfb" value="string" />
        </node>
        <node concept="32rhfO" id="2fKtARxFMGs" role="32rhf7">
          <property role="32rhf8" value="1" />
          <property role="32rhfb" value="integer" />
        </node>
      </node>
    </node>
    <node concept="32rgip" id="2fKtARxFMGt" role="32rhfK">
      <property role="32rvvF" value="badDivide" />
      <property role="32rhfM" value="badDivide" />
      <property role="32rhfd" value="integer" />
      <node concept="32rhfQ" id="2fKtARxFMGv" role="32rgiq">
        <property role="32rhf5" value="/" />
        <node concept="32rhfO" id="2fKtARxFMGy" role="32rhf4">
          <property role="32rhf8" value="x" />
          <property role="32rhfb" value="string" />
        </node>
        <node concept="32rhfO" id="2fKtARxFMGz" role="32rhf7">
          <property role="32rhf8" value="1" />
          <property role="32rhfb" value="integer" />
        </node>
      </node>
    </node>
    <node concept="32rgip" id="2fKtARxFMG$" role="32rhfK">
      <property role="32rvvF" value="badOr" />
      <property role="32rhfM" value="badOr" />
      <property role="32rhfd" value="boolean" />
      <node concept="32rhfQ" id="2fKtARxFMGA" role="32rgiq">
        <property role="32rhf5" value="||" />
        <node concept="32rhfO" id="2fKtARxFMGD" role="32rhf4">
          <property role="32rhf8" value="true" />
          <property role="32rhfb" value="boolean" />
        </node>
        <node concept="32rhfO" id="2fKtARxFMGE" role="32rhf7">
          <property role="32rhf8" value="1" />
          <property role="32rhfb" value="integer" />
        </node>
      </node>
    </node>
    <node concept="32rgip" id="2fKtARxFMGF" role="32rhfK">
      <property role="32rvvF" value="badEqual" />
      <property role="32rhfM" value="badEqual" />
      <property role="32rhfd" value="boolean" />
      <node concept="32rhfQ" id="2fKtARxFMGH" role="32rgiq">
        <property role="32rhf5" value="==" />
        <node concept="32rhfO" id="2fKtARxFMGK" role="32rhf4">
          <property role="32rhf8" value="x" />
          <property role="32rhfb" value="string" />
        </node>
        <node concept="32rhfO" id="2fKtARxFMGL" role="32rhf7">
          <property role="32rhf8" value="1" />
          <property role="32rhfb" value="integer" />
        </node>
      </node>
    </node>
    <node concept="32rgip" id="2fKtARxFMGM" role="32rhfK">
      <property role="32rvvF" value="badNotEqual" />
      <property role="32rhfM" value="badNotEqual" />
      <property role="32rhfd" value="boolean" />
      <node concept="32rhfQ" id="2fKtARxFMGO" role="32rgiq">
        <property role="32rhf5" value="!=" />
        <node concept="32rhfO" id="2fKtARxFMGR" role="32rhf4">
          <property role="32rhf8" value="x" />
          <property role="32rhfb" value="string" />
        </node>
        <node concept="32rhfO" id="2fKtARxFMGS" role="32rhf7">
          <property role="32rhf8" value="1" />
          <property role="32rhfb" value="integer" />
        </node>
      </node>
    </node>
    <node concept="32rgip" id="2fKtARxFMGT" role="32rhfK">
      <property role="32rvvF" value="badLess" />
      <property role="32rhfM" value="badLess" />
      <property role="32rhfd" value="boolean" />
      <node concept="32rhfQ" id="2fKtARxFMGV" role="32rgiq">
        <property role="32rhf5" value="&lt;" />
        <node concept="32rhfO" id="2fKtARxFMGY" role="32rhf4">
          <property role="32rhf8" value="x" />
          <property role="32rhfb" value="string" />
        </node>
        <node concept="32rhfO" id="2fKtARxFMGZ" role="32rhf7">
          <property role="32rhf8" value="1" />
          <property role="32rhfb" value="integer" />
        </node>
      </node>
    </node>
    <node concept="32rgip" id="2fKtARxFMH0" role="32rhfK">
      <property role="32rvvF" value="badGreaterEqual" />
      <property role="32rhfM" value="badGreaterEqual" />
      <property role="32rhfd" value="boolean" />
      <node concept="32rhfQ" id="2fKtARxFMH2" role="32rgiq">
        <property role="32rhf5" value="&gt;=" />
        <node concept="32rhfO" id="2fKtARxFMH5" role="32rhf4">
          <property role="32rhf8" value="x" />
          <property role="32rhfb" value="string" />
        </node>
        <node concept="32rhfO" id="2fKtARxFMH6" role="32rhf7">
          <property role="32rhf8" value="1" />
          <property role="32rhfb" value="integer" />
        </node>
      </node>
    </node>
    <node concept="32rgip" id="2fKtARxFMH7" role="32rhfK">
      <property role="32rvvF" value="badLessEqual" />
      <property role="32rhfM" value="badLessEqual" />
      <property role="32rhfd" value="boolean" />
      <node concept="32rhfQ" id="2fKtARxFMH9" role="32rgiq">
        <property role="32rhf5" value="&lt;=" />
        <node concept="32rhfO" id="2fKtARxFMHc" role="32rhf4">
          <property role="32rhf8" value="x" />
          <property role="32rhfb" value="string" />
        </node>
        <node concept="32rhfO" id="2fKtARxFMHd" role="32rhf7">
          <property role="32rhf8" value="1" />
          <property role="32rhfb" value="integer" />
        </node>
      </node>
    </node>
    <node concept="32rgip" id="2fKtARxFMHe" role="32rhfK">
      <property role="32rvvF" value="badUnaryMinus" />
      <property role="32rhfM" value="badUnaryMinus" />
      <property role="32rhfd" value="integer" />
      <node concept="32rhfL" id="2fKtARxFMHg" role="32rgiq">
        <property role="32rhf6" value="-" />
        <node concept="32rhfO" id="2fKtARxFMHi" role="32rhf1">
          <property role="32rhf8" value="true" />
          <property role="32rhfb" value="boolean" />
        </node>
      </node>
    </node>
  </node>
  <node concept="32rhfT" id="2fKtARxElPZ">
    <property role="32rvvJ" value="ReferenceTargetForm" />
    <property role="TrG5h" value="ReferenceTargetForm" />
    <node concept="32rhfV" id="2fKtARxElQ0" role="32rhfK">
      <property role="32rhfM" value="Outside form question" />
      <property role="32rhfd" value="string" />
      <property role="32rvvF" value="outsideQuestion" />
    </node>
    <node concept="32rgip" id="2fKtARxFMGc" role="32rhfK">
      <property role="32rhfM" value="Escaped string literal" />
      <property role="32rhfd" value="string" />
      <property role="32rvvF" value="greeting" />
      <node concept="32rhfO" id="2fKtARxFMGe" role="32rgiq">
        <property role="32rhf8" value="He said &quot;hi&quot;&#10;C:\path" />
        <property role="32rhfb" value="string" />
      </node>
    </node>
    <node concept="32rgip" id="2fKtARxFMHj" role="32rhfK">
      <property role="32rvvF" value="stringConcat" />
      <property role="32rhfM" value="stringConcat" />
      <property role="32rhfd" value="string" />
      <node concept="32rhfQ" id="2fKtARxFMHl" role="32rgiq">
        <property role="32rhf5" value="+" />
        <node concept="32rhfO" id="2fKtARxFMHo" role="32rhf4">
          <property role="32rhf8" value="He said " />
          <property role="32rhfb" value="string" />
        </node>
        <node concept="32rhfO" id="2fKtARxFMHp" role="32rhf7">
          <property role="32rhf8" value="hello" />
          <property role="32rhfb" value="string" />
        </node>
      </node>
    </node>
    <node concept="32rgip" id="2fKtARxFMHq" role="32rhfK">
      <property role="32rvvF" value="negative" />
      <property role="32rhfM" value="Unary negative value" />
      <property role="32rhfd" value="integer" />
      <node concept="32rhfL" id="2fKtARxFMHs" role="32rgiq">
        <property role="32rhf6" value="-" />
        <node concept="32rhfO" id="2fKtARxFMHu" role="32rhf1">
          <property role="32rhf8" value="4" />
          <property role="32rhfb" value="integer" />
        </node>
      </node>
    </node>
    <node concept="32rgip" id="2fKtARxH1g6" role="32rhfK">
      <property role="32rvvF" value="division" />
      <property role="32rhfM" value="Integer division produces decimal" />
      <property role="32rhfd" value="decimal" />
      <node concept="32rhfQ" id="2fKtARxH1g8" role="32rgiq">
        <property role="32rhf5" value="/" />
        <node concept="32rhfO" id="2fKtARxH1gb" role="32rhf4">
          <property role="32rhf8" value="4" />
          <property role="32rhfb" value="integer" />
        </node>
        <node concept="32rhfO" id="2fKtARxH1gc" role="32rhf7">
          <property role="32rhf8" value="2" />
          <property role="32rhfb" value="integer" />
        </node>
      </node>
    </node>
  </node>
</model>

