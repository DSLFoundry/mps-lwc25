<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:754e612c-f44d-417f-a070-39dcdf0bfa5c(CSS.values.structure)" version="0">
  <persistence version="8" />
  <language namespace="c72da2b9-7cce-4447-8389-f407dc1158b7(jetbrains.mps.lang.structure)" />
  <devkit namespace="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  <import index="tpce" modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" implicit="yes" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="jqyd" modelUID="r:42ca1683-55a3-4ef8-ae96-cea57fe97aeb(CSS.structure)" version="7" implicit="yes" />
  <import index="qmdv" modelUID="r:754e612c-f44d-417f-a070-39dcdf0bfa5c(CSS.values.structure)" version="0" implicit="yes" />
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1751130803059568634" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="HexColor" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="#" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1751130803059573378" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="color" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="1751130803059572168" resolveInfo="HexColorString" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1751130803059573381" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="1751130803059573380" resolveInfo="IColor" />
    </node>
  </root>
  <root type="tpce.ConstrainedDataTypeDeclaration" typeId="tpce.1082978499127" id="1751130803059572168" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="HexColorString" />
    <property name="constraint" nameId="tpce.1083066089218" value="[0-9a-f]{3}|[0-9a-f]{6}" />
  </root>
  <root type="tpce.InterfaceConceptDeclaration" typeId="tpce.1169125989551" id="1751130803059573380" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="IColor" />
    <node role="extends" roleId="tpce.1169127546356" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1751130803059573383" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="jqyd.237132406978975165" resolveInfo="IValue" />
    </node>
  </root>
</model>

