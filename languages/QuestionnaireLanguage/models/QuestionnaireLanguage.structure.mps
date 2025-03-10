<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e8876d31-137a-458a-aef5-06f967861a7c(QuestionnaireLanguage.structure)">
  <persistence version="9" />
  <languages>
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="4kwy" ref="r:657c9fde-2f36-4e61-ae17-20f02b8630ad(org.iets3.core.base.structure)" />
    <import index="2c95" ref="r:5f7188a9-e7b4-4a2e-bef9-38d2cf379fdc(com.mbeddr.doc.structure)" />
    <import index="hm2y" ref="r:66e07cb4-a4b0-4bf3-a36d-5e9ed1ff1bd3(org.iets3.core.expr.base.structure)" />
    <import index="5qo5" ref="r:6d93ddb1-b0b0-4eee-8079-51303666672a(org.iets3.core.expr.simpleTypes.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="vs0r" ref="r:f7764ca4-8c75-4049-922b-08516400a727(com.mbeddr.core.base.structure)" implicit="true" />
    <import index="87nw" ref="r:ca2ab6bb-f6e7-4c0f-a88c-b78b9b31fff3(de.slisson.mps.richtext.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765907488" name="conceptShortDescription" index="R4oN_" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ" />
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="6vTVXvbAy8x">
    <property role="EcuMT" value="7492283165220413985" />
    <property role="TrG5h" value="Form" />
    <property role="19KtqR" value="true" />
    <property role="34LRSv" value="form" />
    <property role="R4oN_" value="Form" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6vTVXvbANVL" role="PzmwI">
      <ref role="PrY4T" to="4kwy:cJpacq5T0O" resolve="IValidNamedConcept" />
    </node>
    <node concept="PrWs8" id="5Qt2gdxAhuO" role="PzmwI">
      <ref role="PrY4T" to="vs0r:4qSf1u1TQeO" resolve="IContainerOfUniqueNames" />
    </node>
    <node concept="1TJgyj" id="257K23PtZxr" role="1TKVEi">
      <property role="IQ2ns" value="2398096574387845211" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="contents" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="257K23PuhQy" resolve="IFormContents" />
    </node>
  </node>
  <node concept="1TIwiD" id="6vTVXvbANVN">
    <property role="EcuMT" value="7492283165220486899" />
    <property role="TrG5h" value="Question" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6vTVXvbANVP" role="PzmwI">
      <ref role="PrY4T" to="4kwy:cJpacq5T0O" resolve="IValidNamedConcept" />
    </node>
    <node concept="PrWs8" id="257K23PuhQA" role="PzmwI">
      <ref role="PrY4T" node="257K23PuhQy" resolve="IFormContents" />
    </node>
    <node concept="1TJgyj" id="6vTVXvbANVS" role="1TKVEi">
      <property role="IQ2ns" value="7492283165220486904" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="label" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="87nw:2dWzqxEB$Tx" resolve="Text" />
    </node>
    <node concept="1TJgyj" id="257K23PtZmx" role="1TKVEi">
      <property role="IQ2ns" value="2398096574387844513" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="hm2y:6sdnDbSlaok" resolve="Type" />
    </node>
  </node>
  <node concept="1TIwiD" id="257K23PuhQr">
    <property role="EcuMT" value="2398096574387920283" />
    <property role="TrG5h" value="ConditionalBlock" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="257K23PuhQu" role="1TKVEi">
      <property role="IQ2ns" value="2398096574387920286" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="condition" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="hm2y:6sdnDbSla17" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="257K23PuhQv" role="1TKVEi">
      <property role="IQ2ns" value="2398096574387920287" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="body" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="257K23PuhQy" resolve="IFormContents" />
    </node>
    <node concept="PrWs8" id="257K23Puuaz" role="PzmwI">
      <ref role="PrY4T" node="257K23PuhQy" resolve="IFormContents" />
    </node>
  </node>
  <node concept="PlHQZ" id="257K23PuhQy">
    <property role="EcuMT" value="2398096574387920290" />
    <property role="TrG5h" value="IFormContents" />
  </node>
  <node concept="1TIwiD" id="257K23PulpM">
    <property role="EcuMT" value="2398096574387934834" />
    <property role="TrG5h" value="Empty" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="257K23PulpN" role="PzmwI">
      <ref role="PrY4T" node="257K23PuhQy" resolve="IFormContents" />
    </node>
  </node>
  <node concept="1TIwiD" id="257K23PuuqZ">
    <property role="EcuMT" value="2398096574387971775" />
    <property role="TrG5h" value="QuestionReference" />
    <ref role="1TJDcQ" to="hm2y:6sdnDbSla17" resolve="Expression" />
    <node concept="1TJgyj" id="257K23Puur0" role="1TKVEi">
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="2398096574387971776" />
      <property role="20kJfa" value="question" />
      <ref role="20lvS9" node="6vTVXvbANVN" resolve="Question" />
    </node>
  </node>
  <node concept="1TIwiD" id="257K23Pv1P0">
    <property role="EcuMT" value="2398096574388116800" />
    <property role="TrG5h" value="Money" />
    <property role="34LRSv" value="money" />
    <ref role="1TJDcQ" to="5qo5:4rZeNQ6Oerp" resolve="IntegerType" />
  </node>
  <node concept="1TIwiD" id="257K23Pv8vo">
    <property role="EcuMT" value="2398096574388144088" />
    <property role="TrG5h" value="DerivedValue" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="257K23Pv8vs" role="1TKVEi">
      <property role="IQ2ns" value="2398096574388144092" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="label" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="87nw:2dWzqxEB$Tx" resolve="Text" />
    </node>
    <node concept="1TJgyj" id="257K23Pv8vu" role="1TKVEi">
      <property role="IQ2ns" value="2398096574388144094" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="value" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="hm2y:6sdnDbSla17" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="257K23PveTO" role="1TKVEi">
      <property role="IQ2ns" value="2398096574388170356" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="expectedType" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="hm2y:6sdnDbSlaok" resolve="Type" />
    </node>
    <node concept="PrWs8" id="257K23Pv8vq" role="PzmwI">
      <ref role="PrY4T" to="4kwy:cJpacq5T0O" resolve="IValidNamedConcept" />
    </node>
    <node concept="PrWs8" id="257K23Pv8vp" role="PzmwI">
      <ref role="PrY4T" node="257K23PuhQy" resolve="IFormContents" />
    </node>
  </node>
  <node concept="1TIwiD" id="4FCftMPq_h4">
    <property role="EcuMT" value="5397632171549283396" />
    <property role="TrG5h" value="DerivedValueReference" />
    <ref role="1TJDcQ" to="hm2y:6sdnDbSla17" resolve="Expression" />
    <node concept="1TJgyj" id="4FCftMPq_h5" role="1TKVEi">
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="5397632171549283397" />
      <property role="20kJfa" value="derivedValue" />
      <ref role="20lvS9" node="257K23Pv8vo" resolve="DerivedValue" />
    </node>
  </node>
</model>

