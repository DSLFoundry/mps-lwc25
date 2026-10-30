<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d38310d7-e2d7-445d-9e37-03c515a7c638(Sandbox.QLInvalid)">
  <persistence version="9" />
  <languages>
    <use id="83a543da-6367-4b94-9df8-b626b1b2132c" name="QuestionnaireLanguage" version="0" />
    <use id="6b277d9a-d52d-416f-a209-1919bd737f50" name="org.iets3.core.expr.simpleTypes" version="11" />
  </languages>
  <imports>
    <import index="myp5" ref="r:1563aa75-9e95-4906-b5e3-c9d7c1e3928d(Sandbox.QLBasic)" implicit="true" />
  </imports>
  <registry>
    <language id="cfaa4966-b7d5-4b69-b66a-309a6e1a7290" name="org.iets3.core.expr.base">
      <concept id="5115872837156724025" name="org.iets3.core.expr.base.structure.LogicalAndExpression" flags="ng" index="30deo4" />
      <concept id="5115872837156578546" name="org.iets3.core.expr.base.structure.PlusExpression" flags="ng" index="30dDZf" />
      <concept id="5115872837156576277" name="org.iets3.core.expr.base.structure.BinaryExpression" flags="ng" index="30dEsC">
        <child id="5115872837156576280" name="right" index="30dEs_" />
        <child id="5115872837156576278" name="left" index="30dEsF" />
      </concept>
    </language>
    <language id="6b277d9a-d52d-416f-a209-1919bd737f50" name="org.iets3.core.expr.simpleTypes">
      <concept id="7425695345928358745" name="org.iets3.core.expr.simpleTypes.structure.TrueLiteral" flags="ng" index="2vmpnb" />
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
  <node concept="1rmZpQ" id="6mf4SGrepdX">
    <property role="1rmZpP" value="Invalid diagnostics fixture" />
    <node concept="1rmZpY" id="6mf4SGrepdY" role="1rmZpO">
      <property role="1rmZpX" value="duplicate" />
      <property role="1rmZpW" value="Invalid arithmetic" />
      <property role="1rmZpV" value="integer" />
      <node concept="30dDZf" id="6mf4SGrepdZ" role="1rmZpU">
        <node concept="2vmpnb" id="6mf4SGrepe0" role="30dEsF" />
        <node concept="30bXRB" id="6mf4SGrepe1" role="30dEs_">
          <property role="30bXRw" value="1" />
        </node>
      </node>
    </node>
    <node concept="1rmZpY" id="6mf4SGrepe2" role="1rmZpO">
      <property role="1rmZpX" value="otherIdentifier" />
      <property role="1rmZpW" value="Distinct top-level identifier" />
      <property role="1rmZpV" value="string" />
    </node>
    <node concept="1rmZpT" id="6mf4SGrepe3" role="1rmZpO">
      <node concept="1rmZpN" id="6mf4SGrepe4" role="1rmZpS">
        <ref role="1rmZpM" node="6mf4SGrepe2" />
      </node>
      <node concept="1rmZpY" id="7LUSrG7oRKD" role="1rmZpR">
        <property role="1rmZpX" value="duplicate" />
        <property role="1rmZpW" value="Nested duplicate" />
        <property role="1rmZpV" value="string" />
      </node>
    </node>
    <node concept="1rmZpY" id="6mf4SGrev45" role="1rmZpO">
      <property role="1rmZpX" value="cycleA" />
      <property role="1rmZpW" value="Cycle A" />
      <property role="1rmZpV" value="integer" />
      <node concept="1rmZpN" id="6mf4SGrev47" role="1rmZpU">
        <ref role="1rmZpM" node="6mf4SGrev46" />
      </node>
    </node>
    <node concept="1rmZpY" id="6mf4SGrev46" role="1rmZpO">
      <property role="1rmZpX" value="cycleB" />
      <property role="1rmZpW" value="Cycle B" />
      <property role="1rmZpV" value="integer" />
      <node concept="1rmZpN" id="6mf4SGrev48" role="1rmZpU">
        <ref role="1rmZpM" node="6mf4SGrev45" />
      </node>
    </node>
    <node concept="1rmZpT" id="6mf4SGrev49" role="1rmZpO">
      <node concept="30bXRB" id="6mf4SGrev4a" role="1rmZpS">
        <property role="30bXRw" value="42" />
      </node>
    </node>
    <node concept="1rmZpT" id="7LUSrG7oRKE" role="1rmZpO">
      <node concept="30deo4" id="7LUSrG7oRKF" role="1rmZpS">
        <node concept="2vmpnb" id="7LUSrG7oRKG" role="30dEsF" />
        <node concept="30bXRB" id="7LUSrG7oRKH" role="30dEs_">
          <property role="30bXRw" value="5" />
        </node>
      </node>
    </node>
    <node concept="1rmZpY" id="7LUSrG7oRKI" role="1rmZpO">
      <property role="1rmZpX" value="directCycle" />
      <property role="1rmZpW" value="Direct cycle" />
      <property role="1rmZpV" value="integer" />
      <node concept="1rmZpN" id="7LUSrG7oRKJ" role="1rmZpU">
        <ref role="1rmZpM" node="7LUSrG7oRKI" />
      </node>
    </node>
    <node concept="1rmZpY" id="7LUSrG7oRKK" role="1rmZpO">
      <property role="1rmZpX" value="outOfForm" />
      <property role="1rmZpW" value="Out-of-form reference" />
      <property role="1rmZpV" value="boolean" />
      <node concept="1rmZpN" id="7LUSrG7oRKL" role="1rmZpU">
        <ref role="1rmZpM" to="myp5:6mf4SGre7Cv" />
      </node>
    </node>
    <node concept="1rmZpY" id="7LUSrG7q2tb" role="1rmZpO">
      <property role="1rmZpX" value="computedTypeMismatch" />
      <property role="1rmZpW" value="Computed type mismatch" />
      <property role="1rmZpV" value="string" />
      <node concept="30bXRB" id="7LUSrG7q2tc" role="1rmZpU">
        <property role="30bXRw" value="7" />
      </node>
    </node>
  </node>
</model>

