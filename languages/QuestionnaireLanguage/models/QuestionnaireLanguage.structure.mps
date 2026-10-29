<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e8876d31-137a-458a-aef5-06f967861a7c(QuestionnaireLanguage.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="4kwy" ref="r:657c9fde-2f36-4e61-ae17-20f02b8630ad(org.iets3.core.base.structure)" />
    <import index="2c95" ref="r:5f7188a9-e7b4-4a2e-bef9-38d2cf379fdc(com.mbeddr.doc.structure)" />
    <import index="hm2y" ref="r:66e07cb4-a4b0-4bf3-a36d-5e9ed1ff1bd3(org.iets3.core.expr.base.structure)" />
    <import index="5qo5" ref="r:6d93ddb1-b0b0-4eee-8079-51303666672a(org.iets3.core.expr.simpleTypes.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
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
  <node concept="1TIwiD" id="2fKtARxBmmk">
    <property role="EcuMT" value="2589700000046736788" />
    <property role="TrG5h" value="Form" />
    <property role="34LRSv" value="form" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="1TJgyj" id="2fKtARxBmmt" role="1TKVEi">
      <property role="IQ2ns" value="2589700000046736797" />
      <property role="20kJfa" value="items" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="2fKtARxBmml" resolve="Item" />
    </node>
    <node concept="PrWs8" id="2fKtARxCAQc" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyi" id="2fKtARxDoDs" role="1TKVEl">
      <property role="IQ2nx" value="2589700000046743938" />
      <property role="TrG5h" value="title" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="2fKtARxBmml">
    <property role="EcuMT" value="2589700000046736789" />
    <property role="TrG5h" value="Item" />
    <property role="34LRSv" value="item" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
  </node>
  <node concept="1TIwiD" id="2fKtARxBmmm">
    <property role="EcuMT" value="2589700000046736790" />
    <property role="TrG5h" value="Question" />
    <property role="34LRSv" value="question" />
    <ref role="1TJDcQ" node="2fKtARxBmml" resolve="Item" />
    <node concept="1TJgyi" id="2fKtARxBmmv" role="1TKVEl">
      <property role="IQ2nx" value="2589700000046736799" />
      <property role="TrG5h" value="label" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="2fKtARxBmmw" role="1TKVEl">
      <property role="IQ2nx" value="2589700000046736800" />
      <property role="TrG5h" value="valueType" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="2fKtARxBo66" role="1TKVEl">
      <property role="IQ2nx" value="2589700000046743942" />
      <property role="TrG5h" value="id" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="2fKtARxBmmn">
    <property role="EcuMT" value="2589700000046736791" />
    <property role="TrG5h" value="Branch" />
    <property role="34LRSv" value="when" />
    <ref role="1TJDcQ" node="2fKtARxBmml" resolve="Item" />
    <node concept="1TJgyj" id="2fKtARxBmmz" role="1TKVEi">
      <property role="IQ2ns" value="2589700000046736803" />
      <property role="20kJfa" value="condition" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="2fKtARxBmmo" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="2fKtARxBmm$" role="1TKVEi">
      <property role="IQ2ns" value="2589700000046736804" />
      <property role="20kJfa" value="items" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="2fKtARxBmml" resolve="Item" />
    </node>
  </node>
  <node concept="1TIwiD" id="2fKtARxBmmo">
    <property role="EcuMT" value="2589700000046736792" />
    <property role="TrG5h" value="Expression" />
    <property role="34LRSv" value="expression" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
  </node>
  <node concept="1TIwiD" id="2fKtARxBmmp">
    <property role="EcuMT" value="2589700000046736793" />
    <property role="TrG5h" value="Literal" />
    <property role="34LRSv" value="literal" />
    <ref role="1TJDcQ" node="2fKtARxBmmo" resolve="Expression" />
    <node concept="1TJgyi" id="2fKtARxBmm_" role="1TKVEl">
      <property role="IQ2nx" value="2589700000046736805" />
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="2fKtARxBmmA" role="1TKVEl">
      <property role="IQ2nx" value="2589700000046736806" />
      <property role="TrG5h" value="literalType" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="2fKtARxBmmq">
    <property role="EcuMT" value="2589700000046736794" />
    <property role="TrG5h" value="Reference" />
    <property role="34LRSv" value="ref" />
    <ref role="1TJDcQ" node="2fKtARxBmmo" resolve="Expression" />
    <node concept="1TJgyj" id="2fKtARxBmmB" role="1TKVEi">
      <property role="IQ2ns" value="2589700000046736807" />
      <property role="20kJfa" value="target" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="2fKtARxBmmm" resolve="Question" />
    </node>
    <node concept="1TJgyi" id="2fKtARxBnz5" role="1TKVEl">
      <property role="IQ2nx" value="2589700000046741701" />
      <property role="TrG5h" value="targetId" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="2fKtARxBmmr">
    <property role="EcuMT" value="2589700000046736795" />
    <property role="TrG5h" value="Binary" />
    <property role="34LRSv" value="binary" />
    <ref role="1TJDcQ" node="2fKtARxBmmo" resolve="Expression" />
    <node concept="1TJgyi" id="2fKtARxBmmC" role="1TKVEl">
      <property role="IQ2nx" value="2589700000046736808" />
      <property role="TrG5h" value="operator" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="2fKtARxBmmD" role="1TKVEi">
      <property role="IQ2ns" value="2589700000046736809" />
      <property role="20kJfa" value="left" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="2fKtARxBmmo" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="2fKtARxBmmE" role="1TKVEi">
      <property role="IQ2ns" value="2589700000046736810" />
      <property role="20kJfa" value="right" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="2fKtARxBmmo" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="2fKtARxBmms">
    <property role="EcuMT" value="2589700000046736796" />
    <property role="TrG5h" value="Unary" />
    <property role="34LRSv" value="unary" />
    <ref role="1TJDcQ" node="2fKtARxBmmo" resolve="Expression" />
    <node concept="1TJgyi" id="2fKtARxBmmF" role="1TKVEl">
      <property role="IQ2nx" value="2589700000046736811" />
      <property role="TrG5h" value="operator" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="2fKtARxBmmG" role="1TKVEi">
      <property role="IQ2ns" value="2589700000046736812" />
      <property role="20kJfa" value="operand" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="2fKtARxBmmo" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="2fKtARxBnbO">
    <property role="EcuMT" value="2589700000046740212" />
    <property role="TrG5h" value="Calculated" />
    <property role="34LRSv" value="computed question" />
    <ref role="1TJDcQ" node="2fKtARxBmmm" />
    <node concept="1TJgyj" id="2fKtARxBnbR" role="1TKVEi">
      <property role="IQ2ns" value="2589700000046740215" />
      <property role="20kJfa" value="computed" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="2fKtARxBmmo" resolve="Expression" />
    </node>
  </node>
</model>

