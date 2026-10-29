<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d38310d7-e2d7-445d-9e37-03c515a7c638(Sandbox.QLInvalid)">
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
      <property role="1rmZpX" value="duplicate" />
      <property role="1rmZpW" value="Duplicate identifier" />
      <property role="1rmZpV" value="string" />
    </node>
    <node concept="1rmZpT" id="6mf4SGrepe3" role="1rmZpO">
      <node concept="1rmZpN" id="6mf4SGrepe4" role="1rmZpS" />
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
  </node>
</model>

