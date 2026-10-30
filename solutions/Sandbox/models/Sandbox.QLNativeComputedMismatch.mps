<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:13d6fcc3-c902-428e-84fb-1f4b2878aeb4(Sandbox.QLNativeComputedMismatch)">
  <persistence version="9" />
  <attribute name="doNotGenerate" value="true" />
  <languages>
    <use id="83a543da-6367-4b94-9df8-b626b1b2132c" name="QuestionnaireLanguage" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="6b277d9a-d52d-416f-a209-1919bd737f50" name="org.iets3.core.expr.simpleTypes">
      <concept id="5115872837157054170" name="org.iets3.core.expr.simpleTypes.structure.NumberLiteral" flags="ng" index="30bXRB">
        <property id="5115872837157054173" name="value" index="30bXRw" />
      </concept>
    </language>
    <language id="83a543da-6367-4b94-9df8-b626b1b2132c" name="QuestionnaireLanguage">
      <concept id="1793300702800009" name="QuestionnaireLanguage.structure.Questionnaire" flags="ng" index="1rmZpQ">
        <property id="1793300702800010" name="name" index="1rmZpP" />
        <child id="1793300702800011" name="items" index="1rmZpO" />
      </concept>
      <concept id="1793300702800001" name="QuestionnaireLanguage.structure.Question" flags="ng" index="1rmZpY">
        <property id="1793300702800004" name="type" index="1rmZpV" />
        <property id="1793300702800003" name="label" index="1rmZpW" />
        <property id="1793300702800002" name="id" index="1rmZpX" />
        <child id="1793300702800005" name="computed" index="1rmZpU" />
      </concept>
    </language>
  </registry>
  <node concept="1rmZpQ" id="7LUSrG7q2wP">
    <property role="1rmZpP" value="Native computed result mismatch" />
    <node concept="1rmZpY" id="7LUSrG7q2wQ" role="1rmZpO">
      <property role="1rmZpX" value="wrongType" />
      <property role="1rmZpW" value="Declared string, computed number" />
      <property role="1rmZpV" value="string" />
      <node concept="30bXRB" id="7LUSrG7q2wR" role="1rmZpU">
        <property role="30bXRw" value="7" />
      </node>
    </node>
  </node>
</model>

