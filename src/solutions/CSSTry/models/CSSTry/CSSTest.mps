<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:246274c2-c441-40dc-9020-e1b2c28db02d(CSSTry.CSSTest)">
  <persistence version="8" />
  <language namespace="b6766d0d-c1ce-46cc-ae3b-3f523d614533(CSS.core)" />
  <language namespace="47a2d30e-7a93-4c58-b1ab-aaffa3b12323(CSS)" />
  <language namespace="f2c256ad-cebe-4aff-9bcf-101f9cdba1b3(CSS.selectors)" />
  <language namespace="0236e8e9-05f1-4baf-8ec2-e6d06d11c4b1(CSS.values)" />
  <import index="jqyd" modelUID="r:42ca1683-55a3-4ef8-ae96-cea57fe97aeb(CSS.structure)" version="7" implicit="yes" />
  <import index="t8dp" modelUID="r:fbe9b8d9-cfd4-45f8-9eb7-78ad705c5e21(CSS.selectors.structure)" version="1" implicit="yes" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="i20n" modelUID="r:b7836e91-229f-413d-9749-bf9b6cb59d80(CSS.core.structure)" version="5" implicit="yes" />
  <import index="qmdv" modelUID="r:754e612c-f44d-417f-a070-39dcdf0bfa5c(CSS.values.structure)" version="0" implicit="yes" />
  <root type="i20n.Stylesheet" typeId="i20n.237132406979402219" id="1715308974559618214" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="CSSTest" />
    <node role="rules" roleId="jqyd.237132406979402166" type="jqyd.CommentNode" typeId="jqyd.1861977163052501618" id="1715308974559618215" nodeInfo="ng">
      <property name="comment" nameId="jqyd.1861977163052501700" value="Test comment" />
    </node>
    <node role="rules" roleId="jqyd.237132406979402166" type="i20n.Rule" typeId="i20n.1861977163052269796" id="1715308974559618230" nodeInfo="ng">
      <node role="selectors" roleId="jqyd.237132406979402160" type="t8dp.IdSelector" typeId="t8dp.237132406979242349" id="1715308974559618236" nodeInfo="ng">
        <property name="id" nameId="t8dp.1861977163052400137" value="one" />
      </node>
      <node role="selectors" roleId="jqyd.237132406979402160" type="t8dp.ClassSelector" typeId="t8dp.237132406979242558" id="1715308974559618242" nodeInfo="ng">
        <property name="className" nameId="t8dp.1861977163052399255" value="two" />
      </node>
      <node role="selectors" roleId="jqyd.237132406979402160" type="t8dp.StarSelector" typeId="t8dp.237132406979242864" id="1715308974559618250" nodeInfo="ng" />
      <node role="declarations" roleId="jqyd.237132406979402162" type="i20n.Declaration" typeId="i20n.237132406979335064" id="1715308974561927020" nodeInfo="ng">
        <node role="property" roleId="jqyd.237132406979335053" type="i20n.Property" typeId="i20n.1861977163052293604" id="1715308974561927026" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="background-color" />
        </node>
        <node role="value" roleId="jqyd.237132406979335055" type="i20n.GenericTextGenValue" typeId="i20n.1715308974561305611" id="1715308974561927029" nodeInfo="ng">
          <property name="value" nameId="i20n.1715308974561334457" value="blue" />
        </node>
      </node>
    </node>
    <node role="rules" roleId="jqyd.237132406979402166" type="jqyd.NewLineNode" typeId="jqyd.7718501755500729912" id="7718501755501100210" nodeInfo="ng" />
    <node role="rules" roleId="jqyd.237132406979402166" type="i20n.Rule" typeId="i20n.1861977163052269796" id="1751130803059509800" nodeInfo="ng">
      <node role="selectors" roleId="jqyd.237132406979402160" type="t8dp.TagSelector" typeId="t8dp.1751130803059509813" id="1751130803059566856" nodeInfo="ng">
        <property name="tagName" nameId="t8dp.1751130803059509913" value="body" />
      </node>
      <node role="declarations" roleId="jqyd.237132406979402162" type="i20n.Declaration" typeId="i20n.237132406979335064" id="1751130803059566859" nodeInfo="ng">
        <node role="property" roleId="jqyd.237132406979335053" type="i20n.Property" typeId="i20n.1861977163052293604" id="1751130803059566865" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="background-color" />
        </node>
        <node role="value" roleId="jqyd.237132406979335055" type="qmdv.HexColor" typeId="qmdv.1751130803059568634" id="5017852631253472335" nodeInfo="ng">
          <property name="color" nameId="qmdv.1751130803059573378" value="fd4ad3" />
        </node>
      </node>
      <node role="declarations" roleId="jqyd.237132406979402162" type="i20n.Declaration" typeId="i20n.237132406979335064" id="1751130803059566880" nodeInfo="ng">
        <node role="property" roleId="jqyd.237132406979335053" type="i20n.Property" typeId="i20n.1861977163052293604" id="1751130803059566881" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="color" />
        </node>
        <node role="value" roleId="jqyd.237132406979335055" type="i20n.GenericTextGenValue" typeId="i20n.1715308974561305611" id="1751130803059566882" nodeInfo="ng">
          <property name="value" nameId="i20n.1715308974561334457" value="#" />
        </node>
      </node>
      <node role="declarations" roleId="jqyd.237132406979402162" type="i20n.Declaration" typeId="i20n.237132406979335064" id="1751130803059566871" nodeInfo="ng">
        <node role="property" roleId="jqyd.237132406979335053" type="i20n.Property" typeId="i20n.1861977163052293604" id="1751130803059566872" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="background-color" />
        </node>
        <node role="value" roleId="jqyd.237132406979335055" type="i20n.GenericTextGenValue" typeId="i20n.1715308974561305611" id="1751130803059566873" nodeInfo="ng">
          <property name="value" nameId="i20n.1715308974561334457" value="#ccc" />
        </node>
      </node>
    </node>
  </root>
</model>

