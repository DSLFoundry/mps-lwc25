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
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
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
  <node concept="1TIwiD" id="6mf4SGrdOo4">
    <property role="TrG5h" value="QLItem" />
    <property role="EcuMT" value="1793300702800000" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="6mf4SGrdOo5">
    <property role="TrG5h" value="Question" />
    <property role="EcuMT" value="1793300702800001" />
    <ref role="1TJDcQ" node="6mf4SGrdOo4" resolve="QLItem" />
    <node concept="1TJgyi" id="6mf4SGrdOo6" role="1TKVEl">
      <property role="TrG5h" value="id" />
      <property role="IQ2nx" value="1793300702800002" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="6mf4SGrdOo7" role="1TKVEl">
      <property role="TrG5h" value="label" />
      <property role="IQ2nx" value="1793300702800003" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="6mf4SGrdOo8" role="1TKVEl">
      <property role="TrG5h" value="type" />
      <property role="IQ2nx" value="1793300702800004" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="6mf4SGrdOo9" role="1TKVEi">
      <property role="20kJfa" value="computed" />
      <property role="IQ2ns" value="1793300702800005" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" to="hm2y:6sdnDbSla17" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="6mf4SGrdOoa">
    <property role="TrG5h" value="Conditional" />
    <property role="EcuMT" value="1793300702800006" />
    <ref role="1TJDcQ" node="6mf4SGrdOo4" resolve="QLItem" />
    <node concept="1TJgyj" id="6mf4SGrdOob" role="1TKVEi">
      <property role="20kJfa" value="condition" />
      <property role="IQ2ns" value="1793300702800007" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" to="hm2y:6sdnDbSla17" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="6mf4SGrdOoc" role="1TKVEi">
      <property role="20kJfa" value="items" />
      <property role="IQ2ns" value="1793300702800008" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="6mf4SGrdOo4" resolve="QLItem" />
    </node>
  </node>
  <node concept="1TIwiD" id="6mf4SGrdOod">
    <property role="TrG5h" value="Questionnaire" />
    <property role="EcuMT" value="1793300702800009" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6mf4SGrdOoe" role="1TKVEl">
      <property role="TrG5h" value="name" />
      <property role="IQ2nx" value="1793300702800010" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="6mf4SGrdOof" role="1TKVEi">
      <property role="20kJfa" value="items" />
      <property role="IQ2ns" value="1793300702800011" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="6mf4SGrdOo4" resolve="QLItem" />
    </node>
  </node>
  <node concept="1TIwiD" id="6mf4SGrdOog">
    <property role="TrG5h" value="QuestionReference" />
    <property role="EcuMT" value="1793300702800012" />
    <ref role="1TJDcQ" to="hm2y:6sdnDbSla17" resolve="Expression" />
    <node concept="1TJgyj" id="6mf4SGrdOoh" role="1TKVEi">
      <property role="20kJfa" value="question" />
      <property role="IQ2ns" value="1793300702800013" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="6mf4SGrdOo5" resolve="Question" />
    </node>
  </node>
</model>

