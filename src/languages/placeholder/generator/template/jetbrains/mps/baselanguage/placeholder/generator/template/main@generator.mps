<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:7e210fdd-68a3-4bd6-8430-65d9a6e631c4(jetbrains.mps.baselanguage.placeholder.generator.template.main@generator)">
  <persistence version="8" />
  <language namespace="b401a680-8325-4110-8fd3-84331ff25bef(jetbrains.mps.lang.generator)" />
  <language namespace="d7706f63-9be2-479c-a3da-ae92af1e64d5(jetbrains.mps.lang.generator.generationContext)" />
  <devkit namespace="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  <import index="9331" modelUID="r:0ebd123d-01a5-46c2-ab79-4a63d53b7d41(jetbrains.mps.baselanguage.placeholder.structure)" version="-1" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="tpf8" modelUID="r:00000000-0000-4000-0000-011c895902e8(jetbrains.mps.lang.generator.structure)" version="2" implicit="yes" />
  <root type="tpf8.MappingConfiguration" typeId="tpf8.1095416546421" id="5310625304505733731" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="removePlaceholders" />
    <node role="reductionMappingRule" roleId="tpf8.1167328349397" type="tpf8.Reduction_MappingRule" typeId="tpf8.1167327847730" id="5310625304505733734" nodeInfo="ng">
      <link role="applicableConcept" roleId="tpf8.1167169349424" targetNodeId="9331.5310625304505733350" resolveInfo="PlaceholderStatement" />
      <node role="ruleConsequence" roleId="tpf8.1169672767469" type="tpf8.AbandonInput_RuleConsequence" typeId="tpf8.1202776937179" id="5310625304505733736" nodeInfo="ng" />
    </node>
  </root>
</model>

