<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:a96e69fb-b2ea-4eac-b994-570ea4d99eed(JSON.structure)" version="1">
  <persistence version="8" />
  <language namespace="c72da2b9-7cce-4447-8389-f407dc1158b7(jetbrains.mps.lang.structure)" />
  <devkit namespace="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="4" />
  <import index="tpce" modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" implicit="yes" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="t7lg" modelUID="r:a96e69fb-b2ea-4eac-b994-570ea4d99eed(JSON.structure)" version="1" implicit="yes" />
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="10699986371514977" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Object" />
    <property name="rootable" nameId="tpce.1096454100552" value="true" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="{" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="Object" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="10699986372082105" resolveInfo="Value" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="10699986371534188" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="members" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="10699986371534184" resolveInfo="Member" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="10699986371534184" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Member" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="10699986371562304" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="value" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="10699986372082105" resolveInfo="Value" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="10699986371562302" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="10699986371534185" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Array" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="[" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="Array" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="10699986372082105" resolveInfo="Value" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="10699986371562306" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="elements" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="10699986372082105" resolveInfo="Value" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="10699986371562314" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="StringValue" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="&quot;" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="10699986372082105" resolveInfo="Value" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="10699986371562366" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="value" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="10699986371811561" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="TrueConstant" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="true" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="10699986372082105" resolveInfo="Value" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="10699986371811562" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="FalseConstant" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="false" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="10699986372082105" resolveInfo="Value" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="10699986371863604" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="NullValue" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="null" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="10699986372082105" resolveInfo="Value" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="10699986372082105" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Value" />
    <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="JSON value" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="49445023081988872" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="NumberValue" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="number" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="10699986372082105" resolveInfo="Value" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="49445023082761044" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="value" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="49445023082761927" resolveInfo="float" />
    </node>
  </root>
  <root type="tpce.ConstrainedDataTypeDeclaration" typeId="tpce.1082978499127" id="49445023082761927" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="float" />
    <property name="constraint" nameId="tpce.1083066089218" value="-?(0|([1-9][0-9]*))(.[0-9]+)?([eE][+-]?[0-9]+)?" />
  </root>
</model>

