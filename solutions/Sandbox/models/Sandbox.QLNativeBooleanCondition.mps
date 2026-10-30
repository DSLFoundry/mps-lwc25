<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:0147a6a6-9193-49e5-9738-436f22f41f70(Sandbox.QLNativeBooleanCondition)">
  <persistence version="9" />
  <attribute name="doNotGenerate" value="true" />
  <languages>
    <use id="83a543da-6367-4b94-9df8-b626b1b2132c" name="QuestionnaireLanguage" version="0" />
    <use id="cfaa4966-b7d5-4b69-b66a-309a6e1a7290" name="org.iets3.core.expr.base" version="22" />
    <use id="6b277d9a-d52d-416f-a209-1919bd737f50" name="org.iets3.core.expr.simpleTypes" version="11" />
  </languages>
  <imports />
  <registry>
    <language id="cfaa4966-b7d5-4b69-b66a-309a6e1a7290" name="org.iets3.core.expr.base">
      <concept id="5115872837156724025" name="org.iets3.core.expr.base.structure.LogicalAndExpression" flags="ng" index="30deo4" />
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
      <concept id="1793300702800009" name="QuestionnaireLanguage.structure.Questionnaire" flags="ng" index="1rmZpQ">
        <property id="1793300702800010" name="name" index="1rmZpP" />
        <child id="1793300702800011" name="items" index="1rmZpO" />
      </concept>
      <concept id="1793300702800006" name="QuestionnaireLanguage.structure.Conditional" flags="ng" index="1rmZpT">
        <child id="1793300702800007" name="condition" index="1rmZpS" />
      </concept>
    </language>
  </registry>
  <node concept="1rmZpQ" id="7LUSrG7q2wS">
    <property role="1rmZpP" value="Native complex boolean condition" />
    <node concept="1rmZpT" id="7LUSrG7q2wT" role="1rmZpO">
      <node concept="30deo4" id="7LUSrG7q2wU" role="1rmZpS">
        <node concept="2vmpnb" id="7LUSrG7q2wV" role="30dEsF" />
        <node concept="30bXRB" id="7LUSrG7q2wW" role="30dEs_">
          <property role="30bXRw" value="9" />
        </node>
      </node>
    </node>
  </node>
</model>

