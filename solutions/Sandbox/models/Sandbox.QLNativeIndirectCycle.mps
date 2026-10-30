<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b9f170a5-177c-40df-82f8-db3fae2f8a02(Sandbox.QLNativeIndirectCycle)">
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
  <node concept="1rmZpQ" id="7LUSrG7oRUo">
    <property role="1rmZpP" value="Native indirect-cycle fixture" />
    <node concept="1rmZpY" id="7LUSrG7oRUp" role="1rmZpO">
      <property role="1rmZpX" value="indirectA" />
      <property role="1rmZpW" value="A" />
      <property role="1rmZpV" value="integer" />
      <node concept="1rmZpN" id="7LUSrG7oRUr" role="1rmZpU">
        <ref role="1rmZpM" node="7LUSrG7oRUq" />
      </node>
    </node>
    <node concept="1rmZpY" id="7LUSrG7oRUq" role="1rmZpO">
      <property role="1rmZpX" value="indirectB" />
      <property role="1rmZpW" value="B" />
      <property role="1rmZpV" value="integer" />
      <node concept="1rmZpN" id="7LUSrG7oRUs" role="1rmZpU">
        <ref role="1rmZpM" node="7LUSrG7oRUp" />
      </node>
    </node>
  </node>
</model>

