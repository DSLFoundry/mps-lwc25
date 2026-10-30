<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:3306a8f4-4f0f-42bd-a9bd-336923466b60(Sandbox.QLNativeDirectCycle)">
  <persistence version="9" />
  <attribute name="doNotGenerate" value="true" />
  <languages>
    <use id="83a543da-6367-4b94-9df8-b626b1b2132c" name="QuestionnaireLanguage" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="83a543da-6367-4b94-9df8-b626b1b2132c" name="QuestionnaireLanguage">
      <concept id="1793300702800012" name="QuestionnaireLanguage.structure.QuestionReference" flags="ng" index="1rmZpN">
        <reference id="1793300702800013" name="question" index="1rmZpM" />
      </concept>
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
  <node concept="1rmZpQ" id="7LUSrG7oRUl">
    <property role="1rmZpP" value="Native direct-cycle fixture" />
    <node concept="1rmZpY" id="7LUSrG7oRUm" role="1rmZpO">
      <property role="1rmZpX" value="directOnly" />
      <property role="1rmZpW" value="Direct" />
      <property role="1rmZpV" value="integer" />
      <node concept="1rmZpN" id="7LUSrG7oRUn" role="1rmZpU">
        <ref role="1rmZpM" node="7LUSrG7oRUm" />
      </node>
    </node>
  </node>
</model>

