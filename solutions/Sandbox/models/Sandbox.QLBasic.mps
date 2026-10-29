<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:1563aa75-9e95-4906-b5e3-c9d7c1e3928d(Sandbox.QLBasic)">
  <persistence version="9" />
  <languages>
    <use id="83a543da-6367-4b94-9df8-b626b1b2132c" name="QuestionnaireLanguage" version="0" />
    <use id="6b277d9a-d52d-416f-a209-1919bd737f50" name="org.iets3.core.expr.simpleTypes" version="11" />
  </languages>
  <imports />
  <registry>
    <language id="cfaa4966-b7d5-4b69-b66a-309a6e1a7290" name="org.iets3.core.expr.base">
      <concept id="5115872837156578546" name="org.iets3.core.expr.base.structure.PlusExpression" flags="ng" index="30dDZf" />
      <concept id="5115872837156576277" name="org.iets3.core.expr.base.structure.BinaryExpression" flags="ng" index="30dEsC">
        <child id="5115872837156576280" name="right" index="30dEs_" />
        <child id="5115872837156576278" name="left" index="30dEsF" />
      </concept>
    </language>
    <language id="6b277d9a-d52d-416f-a209-1919bd737f50" name="org.iets3.core.expr.simpleTypes">
      <concept id="5115872837157054170" name="org.iets3.core.expr.simpleTypes.structure.NumberLiteral" flags="ng" index="30bXRB">
        <property id="5115872837157054173" name="value" index="30bXRw" />
      </concept>
    </language>
    <language id="83a543da-6367-4b94-9df8-b626b1b2132c" name="QuestionnaireLanguage">
      <concept id="1793300702800012" name="QuestionnaireLanguage.structure.QuestionReference" flags="ng" index="1rmZpN">
        <reference id="1793300702800013" name="question" index="1rmZpM" />
      </concept>
      <concept id="1793300702800009" name="QuestionnaireLanguage.structure.Questionnaire" flags="ng" index="1rmZpQ">
        <property id="1793300702800010" name="name" index="1rmZpP" />
        <child id="1793300702800011" name="items" index="1rmZpO" />
      </concept>
      <concept id="1793300702800006" name="QuestionnaireLanguage.structure.Conditional" flags="ng" index="1rmZpT">
        <child id="1793300702800008" name="items" index="1rmZpR" />
        <child id="1793300702800007" name="condition" index="1rmZpS" />
      </concept>
      <concept id="1793300702800001" name="QuestionnaireLanguage.structure.Question" flags="ng" index="1rmZpY">
        <property id="1793300702800004" name="type" index="1rmZpV" />
        <property id="1793300702800003" name="label" index="1rmZpW" />
        <property id="1793300702800002" name="id" index="1rmZpX" />
        <child id="1793300702800005" name="computed" index="1rmZpU" />
      </concept>
    </language>
  </registry>
  <node concept="1rmZpQ" id="6mf4SGre7Cp">
    <property role="1rmZpP" value="Household questionnaire" />
    <node concept="1rmZpY" id="6mf4SGre7Cq" role="1rmZpO">
      <property role="1rmZpX" value="age" />
      <property role="1rmZpW" value="Your age" />
      <property role="1rmZpV" value="integer" />
    </node>
    <node concept="1rmZpY" id="6mf4SGre7Cr" role="1rmZpO">
      <property role="1rmZpX" value="derived" />
      <property role="1rmZpW" value="Computed sample" />
      <property role="1rmZpV" value="integer" />
      <node concept="30dDZf" id="6mf4SGre7Cs" role="1rmZpU">
        <node concept="30bXRB" id="6mf4SGre7Ct" role="30dEsF">
          <property role="30bXRw" value="2" />
        </node>
        <node concept="30bXRB" id="6mf4SGre7Cu" role="30dEs_">
          <property role="30bXRw" value="3" />
        </node>
      </node>
    </node>
    <node concept="1rmZpY" id="6mf4SGre7Cv" role="1rmZpO">
      <property role="1rmZpX" value="ownsCar" />
      <property role="1rmZpW" value="Do you own a car?" />
      <property role="1rmZpV" value="boolean" />
    </node>
    <node concept="1rmZpT" id="6mf4SGre7Cw" role="1rmZpO">
      <node concept="1rmZpN" id="6mf4SGre7Cx" role="1rmZpS">
        <ref role="1rmZpM" node="6mf4SGre7Cv" />
      </node>
      <node concept="1rmZpY" id="6mf4SGre7Cy" role="1rmZpR">
        <property role="1rmZpX" value="carDetails" />
        <property role="1rmZpW" value="Describe your car" />
        <property role="1rmZpV" value="string" />
      </node>
    </node>
    <node concept="1rmZpY" id="6mf4SGrep8e" role="1rmZpO">
      <property role="1rmZpX" value="monthlyIncome" />
      <property role="1rmZpW" value="Monthly income" />
      <property role="1rmZpV" value="money" />
    </node>
    <node concept="1rmZpY" id="6mf4SGrep8f" role="1rmZpO">
      <property role="1rmZpX" value="adjustment" />
      <property role="1rmZpW" value="Adjustment factor" />
      <property role="1rmZpV" value="decimal" />
    </node>
    <node concept="1rmZpY" id="6mf4SGrep8g" role="1rmZpO">
      <property role="1rmZpX" value="startDate" />
      <property role="1rmZpW" value="Start date" />
      <property role="1rmZpV" value="date" />
    </node>
  </node>
</model>

