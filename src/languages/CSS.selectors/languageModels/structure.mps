<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:fbe9b8d9-cfd4-45f8-9eb7-78ad705c5e21(CSS.selectors.structure)" version="1">
  <persistence version="8" />
  <language namespace="c72da2b9-7cce-4447-8389-f407dc1158b7(jetbrains.mps.lang.structure)" />
  <devkit namespace="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  <import index="jqyd" modelUID="r:42ca1683-55a3-4ef8-ae96-cea57fe97aeb(CSS.structure)" version="7" />
  <import index="tpce" modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" implicit="yes" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="237132406979242349" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="IdSelector" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="#" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1861977163052400137" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="id" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="237132406979242862" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="jqyd.237132406978975148" resolveInfo="ISelector" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="237132406979242558" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="ClassSelector" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="." />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1861977163052399255" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="className" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="237132406979242860" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="jqyd.237132406978975148" resolveInfo="ISelector" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="237132406979242864" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="StarSelector" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="*" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="237132406979242865" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="jqyd.237132406978975148" resolveInfo="ISelector" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1751130803059509813" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="TagSelector" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1751130803059509913" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="tagName" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1751130803059565267" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="jqyd.237132406978975148" resolveInfo="ISelector" />
    </node>
  </root>
</model>

