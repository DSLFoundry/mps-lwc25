<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:c5f8d912-f4d2-4fd5-8ec6-1c24a1213d72(zandbak.html)">
  <persistence version="8" />
  <language namespace="5dce24ab-5a66-4b11-9530-2ee690157f45(HTML)" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="gyg4" modelUID="r:b1050b74-cd4e-4385-802a-b15e56ed05cb(HTML.structure)" version="0" implicit="yes" />
  <root type="gyg4.DocType" typeId="gyg4.2670064481914934848" id="5113206762598153367" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="test" />
    <node role="tags" roleId="gyg4.2670064481914992573" type="gyg4.GenericTag" typeId="gyg4.2670064481914982244" id="5113206762598153381" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="aSimpleTag" />
    </node>
    <node role="tags" roleId="gyg4.2670064481914992573" type="gyg4.GenericTag" typeId="gyg4.2670064481914982244" id="5113206762598153389" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="aLessSimpleTag" />
      <property name="text" nameId="gyg4.2670064481914982294" value="foo" />
    </node>
    <node role="tags" roleId="gyg4.2670064481914992573" type="gyg4.GenericTag" typeId="gyg4.2670064481914982244" id="5113206762598153394" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="p" />
      <property name="text" nameId="gyg4.2670064481914982294" value="foo" />
    </node>
    <node role="tags" roleId="gyg4.2670064481914992573" type="gyg4.GenericTag" typeId="gyg4.2670064481914982244" id="5113206762598153405" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="a" />
      <node role="body" roleId="gyg4.2670064481914982283" type="gyg4.GenericTag" typeId="gyg4.2670064481914982244" id="5113206762598794512" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="b" />
        <node role="body" roleId="gyg4.2670064481914982283" type="gyg4.GenericTag" typeId="gyg4.2670064481914982244" id="5113206762598794516" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="c" />
          <node role="attributes" roleId="gyg4.2670064481914992560" type="gyg4.Attribute" typeId="gyg4.2670064481914982302" id="5113206762598794519" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="attrib" />
            <property name="value" nameId="gyg4.2670064481914982312" value="c" />
          </node>
        </node>
        <node role="body" roleId="gyg4.2670064481914982283" type="gyg4.GenericTag" typeId="gyg4.2670064481914982244" id="5113206762598794514" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="d" />
          <property name="text" nameId="gyg4.2670064481914982294" value="text node" />
        </node>
      </node>
    </node>
    <node role="tags" roleId="gyg4.2670064481914992573" type="gyg4.Comment" typeId="gyg4.2670064481914954124" id="5113206762598153368" nodeInfo="ng">
      <property name="value" nameId="gyg4.2670064481914982239" value="Dit is commentaar" />
    </node>
  </root>
</model>

