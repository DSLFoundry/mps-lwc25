<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:42ca1683-55a3-4ef8-ae96-cea57fe97aeb(CSS.structure)" version="7">
  <persistence version="8" />
  <language namespace="c72da2b9-7cce-4447-8389-f407dc1158b7(jetbrains.mps.lang.structure)" />
  <devkit namespace="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  <import index="i20n" modelUID="r:b7836e91-229f-413d-9749-bf9b6cb59d80(CSS.core.structure)" version="5" />
  <import index="tpce" modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" implicit="yes" />
  <import index="jqyd" modelUID="r:42ca1683-55a3-4ef8-ae96-cea57fe97aeb(CSS.structure)" version="7" implicit="yes" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <root type="tpce.InterfaceConceptDeclaration" typeId="tpce.1169125989551" id="237132406978975148" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="ISelector" />
  </root>
  <root type="tpce.InterfaceConceptDeclaration" typeId="tpce.1169125989551" id="237132406978975165" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="IValue" />
  </root>
  <root type="tpce.InterfaceConceptDeclaration" typeId="tpce.1169125989551" id="237132406978975166" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="IProperty" />
    <node role="extends" roleId="tpce.1169127546356" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="237132406979003470" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.InterfaceConceptDeclaration" typeId="tpce.1169125989551" id="237132406979335051" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="IRule" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="237132406979402160" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="selectors" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="237132406978975148" resolveInfo="ISelector" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="237132406979402162" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="declarations" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="237132406979335052" resolveInfo="IDeclaration" />
    </node>
    <node role="extends" roleId="tpce.1169127546356" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1861977163052462329" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="1861977163052423256" resolveInfo="IStylesheetContent" />
    </node>
  </root>
  <root type="tpce.InterfaceConceptDeclaration" typeId="tpce.1169125989551" id="237132406979335052" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="IDeclaration" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="237132406979335053" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="property" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="237132406978975166" resolveInfo="IProperty" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="237132406979335055" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="value" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="237132406978975165" resolveInfo="IValue" />
    </node>
  </root>
  <root type="tpce.InterfaceConceptDeclaration" typeId="tpce.1169125989551" id="237132406979402165" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="IStylesheet" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="237132406979402166" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="rules" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1861977163052423256" resolveInfo="IStylesheetContent" />
    </node>
    <node role="extends" roleId="tpce.1169127546356" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1861977163052190448" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.InterfaceConceptDeclaration" typeId="tpce.1169125989551" id="1861977163052423256" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="IStylesheetContent" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1861977163052501618" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="CommentNode" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="/*" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="CSS comment" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1861977163052501700" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="comment" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1861977163052501619" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="1861977163052423256" resolveInfo="IStylesheetContent" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7718501755500729912" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="NewLineNode" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7718501755501032852" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="1861977163052423256" resolveInfo="IStylesheetContent" />
    </node>
  </root>
</model>

