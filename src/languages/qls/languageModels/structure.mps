<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:f057e858-859b-4354-956f-efbe0e6a9dfa(qls.structure)" version="4">
  <persistence version="8" />
  <language namespace="c72da2b9-7cce-4447-8389-f407dc1158b7(jetbrains.mps.lang.structure)" />
  <devkit namespace="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  <import index="2u6g" modelUID="r:f057e858-859b-4354-956f-efbe0e6a9dfa(qls.structure)" version="4" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="4" />
  <import index="q3i4" modelUID="r:db49606d-91ef-488e-ab05-ec0c916f7ed3(ql.structure)" version="7" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="tpce" modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" implicit="yes" />
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="8418675792474610304" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="StyleDefinition" />
    <property name="rootable" nameId="tpce.1096454100552" value="true" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="8418675792474650541" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="rules" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="8418675792474650530" resolveInfo="StylingRule" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="8418675792474681677" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="8418675792474650530" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="StylingRule" />
    <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="8418675792474650543" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="5310625304505888034" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <property name="role" nameId="tpce.1071599776563" value="stylingRuleStatements" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="5310625304505888031" resolveInfo="RuleStatement" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="8418675792474650535" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="QuestionRule" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="question rule" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="8418675792474650530" resolveInfo="StylingRule" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="8418675792474839657" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="8418675792474863824" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="questionReference" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="8418675792474863223" resolveInfo="QuestionReference" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="8418675792474863223" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="QuestionReference" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="8418675792474863279" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="question" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="q3i4.917898825946650079" resolveInfo="Question" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="5310625304505873664" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Widget" />
    <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="5310625304505873667" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="RadioButton" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="radio" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="5310625304505873664" resolveInfo="Widget" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="5310625304505888031" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="RuleStatement" />
    <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="5310625304505895066" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="WidgetStatement" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="widget" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="5310625304505888031" resolveInfo="RuleStatement" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="5310625304505895068" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="widget" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="5310625304505873664" resolveInfo="Widget" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4947776192970053028" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Checkbox" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="checkbox" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="5310625304505873664" resolveInfo="Widget" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7394587662563428930" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Range" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="range" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="5310625304505873664" resolveInfo="Widget" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7394587662563561008" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="BackgroundColorStatement" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="background-color" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="5310625304505888031" resolveInfo="RuleStatement" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="7394587662563563194" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="color" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="1083952545109" resolveInfo="Colors" />
    </node>
  </root>
  <root type="tpce.EnumerationDataTypeDeclaration" typeId="tpce.1082978164219" id="1083952545109" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="Colors" />
    <link role="memberDataType" roleId="tpce.1083171729157" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    <link role="defaultMember" roleId="tpce.1083241965437" targetNodeId="1083952545111" />
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1083952545111" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="red" />
      <property name="internalValue" nameId="tpce.1083923523171" value="red" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1083952545112" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="pink" />
      <property name="internalValue" nameId="tpce.1083923523171" value="pink" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1083952545113" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="orange" />
      <property name="internalValue" nameId="tpce.1083923523171" value="orange" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1083952545114" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="yellow" />
      <property name="internalValue" nameId="tpce.1083923523171" value="yellow" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1083952545115" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="green" />
      <property name="internalValue" nameId="tpce.1083923523171" value="green" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1101213169706" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="darkGreen" />
      <property name="internalValue" nameId="tpce.1083923523171" value="DARK_GREEN" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1083952545116" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="magenta" />
      <property name="internalValue" nameId="tpce.1083923523171" value="magenta" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1101213185757" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="darkMagenta" />
      <property name="internalValue" nameId="tpce.1083923523171" value="DARK_MAGENTA" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1083952545117" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="cyan" />
      <property name="internalValue" nameId="tpce.1083923523171" value="cyan" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1083952545118" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="blue" />
      <property name="internalValue" nameId="tpce.1083923523171" value="blue" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1216404713420" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="lightBlue" />
      <property name="internalValue" nameId="tpce.1083923523171" value="LIGHT_BLUE" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1101209985304" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="darkBlue" />
      <property name="internalValue" nameId="tpce.1083923523171" value="DARK_BLUE" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1084208529765" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="gray" />
      <property name="internalValue" nameId="tpce.1083923523171" value="gray" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1084208529766" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="lightGray" />
      <property name="internalValue" nameId="tpce.1083923523171" value="light_Gray" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1084208529767" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="darkGray" />
      <property name="internalValue" nameId="tpce.1083923523171" value="dark_Gray" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1214395400259" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="white" />
      <property name="internalValue" nameId="tpce.1083923523171" value="WHITE" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="7151630269404055096" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="black" />
      <property name="internalValue" nameId="tpce.1083923523171" value="black" />
    </node>
  </root>
</model>

