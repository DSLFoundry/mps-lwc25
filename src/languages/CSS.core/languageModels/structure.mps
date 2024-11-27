<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:b7836e91-229f-413d-9749-bf9b6cb59d80(CSS.core.structure)" version="5">
  <persistence version="8" />
  <language namespace="c72da2b9-7cce-4447-8389-f407dc1158b7(jetbrains.mps.lang.structure)" />
  <devkit namespace="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  <import index="jqyd" modelUID="r:42ca1683-55a3-4ef8-ae96-cea57fe97aeb(CSS.structure)" version="7" />
  <import index="tpce" modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" implicit="yes" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="237132406979335064" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Declaration" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value=":" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="Declaration of a CSS property and its value" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="237132406979335065" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="jqyd.237132406979335052" resolveInfo="IDeclaration" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="237132406979402219" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Stylesheet" />
    <property name="rootable" nameId="tpce.1096454100552" value="true" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="A CSS style sheet containing styling rules." />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="237132406979402220" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="jqyd.237132406979402165" resolveInfo="IStylesheet" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1861977163052269796" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Rule" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="{" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="A CSS rule that is appliccable for the specified selectors." />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1861977163052269797" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="jqyd.237132406979335051" resolveInfo="IRule" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1861977163052293604" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Property" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="A CSS property." />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1861977163052293605" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="jqyd.237132406978975166" resolveInfo="IProperty" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1715308974561305611" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="GenericTextGenValue" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="A value can be used to represent any type in CSS, but does not offer any checks." />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="val" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1715308974561334457" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="value" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1715308974561334455" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="jqyd.237132406978975165" resolveInfo="IValue" />
    </node>
  </root>
</model>

