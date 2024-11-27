<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:4a93140b-2182-44c7-b0d5-d6eb92fdf477(zandbak.javascript)">
  <persistence version="8" />
  <language namespace="23f8f5c8-c424-4585-9e67-e43ec0c23c7d(JavaScript)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="60846345-74ad-46ca-aeec-8ec9b1fd7587(JSON)" />
  <import index="gsa0" modelUID="r:749a161a-c4fa-4ccd-9eb8-e79f5e4a6a60(JavaScript.structure)" version="10" implicit="yes" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="4" implicit="yes" />
  <root type="gsa0.Program" typeId="gsa0.4031917828564848554" id="9188439651719218839" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="test" />
    <node role="elements" roleId="gsa0.9188439651718537906" type="gsa0.Function" typeId="gsa0.9188439651718537914" id="5486623725157609521" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="ab92174_9" />
      <node role="body" roleId="gsa0.9188439651719047860" type="gsa0.CompoundStatement" typeId="gsa0.9188439651719047863" id="5486623725157609523" nodeInfo="ng">
        <node role="statements" roleId="gsa0.9188439651719047866" type="gsa0.ExprStatement" typeId="gsa0.632813521157717787" id="3605617378894171523" nodeInfo="ng">
          <node role="expr" roleId="gsa0.632813521157717827" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="3605617378894172564" nodeInfo="nn">
            <property name="value" nameId="tpee.1068580320021" value="3" />
          </node>
        </node>
        <node role="statements" roleId="gsa0.9188439651719047866" type="gsa0.ReturnStatement" typeId="gsa0.632813521157666055" id="632813521157883935" nodeInfo="ng">
          <node role="expr" roleId="gsa0.632813521157666090" type="tpee.BooleanConstant" typeId="tpee.1068580123137" id="2868603563888815941" nodeInfo="nn">
            <property name="value" nameId="tpee.1068580123138" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node role="elements" roleId="gsa0.9188439651718537906" type="gsa0.BreakStatement" typeId="gsa0.9188439651719100131" id="632813521157301168" nodeInfo="ng" />
    <node role="elements" roleId="gsa0.9188439651718537906" type="gsa0.ContinueStatement" typeId="gsa0.9188439651719100276" id="632813521157301178" nodeInfo="ng" />
    <node role="elements" roleId="gsa0.9188439651718537906" type="gsa0.IfElseStatement" typeId="gsa0.1252553052053096753" id="3605617378896175456" nodeInfo="ng">
      <node role="condition" roleId="gsa0.1252553052053096754" type="gsa0.Condition" typeId="gsa0.9188439651719101201" id="3605617378896175458" nodeInfo="ng">
        <node role="expression" roleId="gsa0.9188439651719101244" type="tpee.EqualsExpression" typeId="tpee.1068580123152" id="3605617378896287791" nodeInfo="nn">
          <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="3605617378896287816" nodeInfo="nn">
            <property name="value" nameId="tpee.1068580320021" value="3" />
          </node>
          <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="3605617378896285898" nodeInfo="nn">
            <property name="value" nameId="tpee.1068580320021" value="2" />
          </node>
        </node>
      </node>
      <node role="ifstatement" roleId="gsa0.1252553052053096756" type="gsa0.Block" typeId="gsa0.3605617378894395578" id="3605617378896175462" nodeInfo="ng">
        <node role="statement" roleId="gsa0.3605617378894395660" type="gsa0.ReturnStatement" typeId="gsa0.632813521157666055" id="3605617378896289071" nodeInfo="ng">
          <node role="expr" roleId="gsa0.632813521157666090" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="3605617378896290315" nodeInfo="nn">
            <property name="value" nameId="tpee.1068580320021" value="3" />
          </node>
        </node>
      </node>
      <node role="elsestatement" roleId="gsa0.1252553052053096759" type="gsa0.Block" typeId="gsa0.3605617378894395578" id="3605617378896294165" nodeInfo="ng">
        <node role="statement" roleId="gsa0.3605617378894395660" type="gsa0.WhileStatement" typeId="gsa0.632813521157150902" id="3605617378896295426" nodeInfo="ng">
          <node role="condition" roleId="gsa0.632813521157179744" type="gsa0.Condition" typeId="gsa0.9188439651719101201" id="3605617378896295428" nodeInfo="ng">
            <node role="expression" roleId="gsa0.9188439651719101244" type="tpee.BooleanConstant" typeId="tpee.1068580123137" id="3605617378896296690" nodeInfo="nn">
              <property name="value" nameId="tpee.1068580123138" value="true" />
            </node>
          </node>
          <node role="statement" roleId="gsa0.632813521157179746" type="gsa0.Block" typeId="gsa0.3605617378894395578" id="3605617378896295432" nodeInfo="ng">
            <node role="statement" roleId="gsa0.3605617378894395660" type="gsa0.ReturnStatement" typeId="gsa0.632813521157666055" id="3605617378896297944" nodeInfo="ng">
              <node role="expr" roleId="gsa0.632813521157666090" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="3605617378896299195" nodeInfo="nn">
                <property name="value" nameId="tpee.1068580320021" value="3" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="elements" roleId="gsa0.9188439651718537906" type="gsa0.BreakStatement" typeId="gsa0.9188439651719100131" id="3605617378896136703" nodeInfo="ng" />
    <node role="elements" roleId="gsa0.9188439651718537906" type="gsa0.Assignment" typeId="gsa0.632813521157821425" id="3605617378896169117" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="abc" />
      <node role="expr" roleId="gsa0.632813521157821428" type="tpee.FloatingPointConstant" typeId="tpee.1111509017652" id="3605617378896171587" nodeInfo="nn">
        <property name="value" nameId="tpee.1113006610751" value="3.4" />
      </node>
      <node role="lval" roleId="gsa0.2957252048716734855" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048717118367" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="x" />
      </node>
    </node>
    <node role="elements" roleId="gsa0.9188439651718537906" type="gsa0.ForStatement" typeId="gsa0.632813521158670736" id="1674600665746303184" nodeInfo="ng">
      <node role="statement" roleId="gsa0.632813521158671475" type="gsa0.Block" typeId="gsa0.3605617378894395578" id="1674600665746303186" nodeInfo="ng">
        <node role="statement" roleId="gsa0.3605617378894395660" type="gsa0.IStatement" typeId="gsa0.9188439651718569645" id="1674600665746303188" nodeInfo="ng" />
      </node>
      <node role="initializer" roleId="gsa0.632813521158670739" type="gsa0.Assignment" typeId="gsa0.632813521157821425" id="1674600665746303256" nodeInfo="ng">
        <node role="lval" roleId="gsa0.2957252048716734855" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="1674600665746303270" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="x" />
        </node>
        <node role="expr" roleId="gsa0.632813521157821428" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="1674600665746303262" nodeInfo="nn">
          <property name="value" nameId="tpee.1068580320021" value="0" />
        </node>
      </node>
    </node>
    <node role="elements" roleId="gsa0.9188439651718537906" type="gsa0.ForStatement" typeId="gsa0.632813521158670736" id="3605617378896408053" nodeInfo="ng">
      <node role="statement" roleId="gsa0.632813521158671475" type="gsa0.Block" typeId="gsa0.3605617378894395578" id="3605617378896408055" nodeInfo="ng">
        <node role="statement" roleId="gsa0.3605617378894395660" type="gsa0.ExprStatement" typeId="gsa0.632813521157717787" id="3605617378896418089" nodeInfo="ng">
          <node role="expr" roleId="gsa0.632813521157717827" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="3605617378896419326" nodeInfo="nn">
            <property name="value" nameId="tpee.1068580320021" value="5" />
          </node>
        </node>
      </node>
      <node role="test" roleId="gsa0.632813521158671109" type="tpee.LessThanExpression" typeId="tpee.1081506773034" id="3605617378896409341" nodeInfo="nn">
        <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="3605617378896410562" nodeInfo="nn">
          <property name="value" nameId="tpee.1068580320021" value="10" />
        </node>
        <node role="leftExpression" roleId="tpee.1081773367580" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="3605617378896409355" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="x" />
        </node>
      </node>
      <node role="iteration" roleId="gsa0.632813521158671171" type="tpee.PrefixIncrementExpression" typeId="tpee.1239709250944" id="3605617378896411766" nodeInfo="nn">
        <node role="expression" roleId="tpee.1239714902950" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="3605617378896411832" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="x" />
        </node>
      </node>
      <node role="initializer" roleId="gsa0.632813521158670739" type="gsa0.VariableList" typeId="gsa0.632813521157821325" id="3605617378896414384" nodeInfo="ng">
        <node role="vars" roleId="gsa0.632813521157821337" type="gsa0.Assignment" typeId="gsa0.632813521157821425" id="3605617378896415619" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="x" />
          <node role="expr" roleId="gsa0.632813521157821428" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="3605617378896416853" nodeInfo="nn">
            <property name="value" nameId="tpee.1068580320021" value="0" />
          </node>
          <node role="lval" roleId="gsa0.2957252048716734855" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048717118369" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="x" />
          </node>
        </node>
      </node>
    </node>
    <node role="elements" roleId="gsa0.9188439651718537906" type="gsa0.ForEachStatement" typeId="gsa0.632813521158583315" id="3605617378896421927" nodeInfo="ng">
      <node role="lvars" roleId="gsa0.632813521158583464" type="gsa0.Assignment" typeId="gsa0.632813521157821425" id="3605617378896423216" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="x" />
        <node role="expr" roleId="gsa0.632813521157821428" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="3605617378896424414" nodeInfo="nn">
          <property name="value" nameId="tpee.1068580320021" value="3" />
        </node>
        <node role="lval" roleId="gsa0.2957252048716734855" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048717118371" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="x" />
        </node>
      </node>
      <node role="expr" roleId="gsa0.632813521158586040" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="3605617378896425614" nodeInfo="nn">
        <property name="value" nameId="tpee.1068580320021" value="4" />
      </node>
      <node role="statement" roleId="gsa0.632813521158586102" type="gsa0.Block" typeId="gsa0.3605617378894395578" id="3605617378896421932" nodeInfo="ng">
        <node role="statement" roleId="gsa0.3605617378894395660" type="gsa0.ExprStatement" typeId="gsa0.632813521157717787" id="3605617378896426817" nodeInfo="ng">
          <node role="expr" roleId="gsa0.632813521157717827" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="3605617378896428021" nodeInfo="nn">
            <property name="value" nameId="tpee.1068580320021" value="42" />
          </node>
        </node>
      </node>
    </node>
    <node role="elements" roleId="gsa0.9188439651718537906" type="gsa0.WithStatement" typeId="gsa0.2868603563888992209" id="3605617378896456526" nodeInfo="ng">
      <node role="stat" roleId="gsa0.2868603563888992400" type="gsa0.Block" typeId="gsa0.3605617378894395578" id="3605617378896456528" nodeInfo="ng">
        <node role="statement" roleId="gsa0.3605617378894395660" type="gsa0.ExprStatement" typeId="gsa0.632813521157717787" id="3605617378896458949" nodeInfo="ng">
          <node role="expr" roleId="gsa0.632813521157717827" type="gsa0.DotExpression" typeId="gsa0.2868603563889925974" id="3605617378896463631" nodeInfo="ng">
            <node role="exprlist" roleId="gsa0.2868603563889926050" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="3605617378896464800" nodeInfo="nn">
              <property name="value" nameId="tpee.1068580320021" value="2" />
            </node>
            <node role="exprlist" roleId="gsa0.2868603563889926050" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="3605617378896465974" nodeInfo="nn">
              <property name="value" nameId="tpee.1068580320021" value="3" />
            </node>
            <node role="exprlist" roleId="gsa0.2868603563889926050" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="3605617378896467153" nodeInfo="nn">
              <property name="value" nameId="tpee.1068580320021" value="4" />
            </node>
            <node role="exprlist" roleId="gsa0.2868603563889926050" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="3605617378896468337" nodeInfo="nn">
              <property name="value" nameId="tpee.1068580320021" value="5" />
            </node>
            <node role="exprlist" roleId="gsa0.2868603563889926050" type="tpee.BooleanConstant" typeId="tpee.1068580123137" id="3605617378896469526" nodeInfo="nn">
              <property name="value" nameId="tpee.1068580123138" value="false" />
            </node>
          </node>
        </node>
      </node>
      <node role="expr" roleId="gsa0.2868603563888992273" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="3605617378896457781" nodeInfo="nn">
        <property name="value" nameId="tpee.1068580320021" value="3" />
      </node>
    </node>
    <node role="elements" roleId="gsa0.9188439651718537906" type="gsa0.ExprStatement" typeId="gsa0.632813521157717787" id="2868603563890846940" nodeInfo="ng">
      <node role="expr" roleId="gsa0.632813521157717827" type="gsa0.DotExpression" typeId="gsa0.2868603563889925974" id="2868603563890924923" nodeInfo="ng">
        <node role="exprlist" roleId="gsa0.2868603563889926050" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2868603563890924934" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="Qlrt" />
        </node>
        <node role="exprlist" roleId="gsa0.2868603563889926050" type="gsa0.FunctionCall" typeId="gsa0.2868603563890928558" id="2868603563891076804" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="SomeNiceWidget" />
          <node role="arguments" roleId="gsa0.2868603563890928637" type="gsa0.ArgumentList" typeId="gsa0.2868603563889526990" id="2868603563891076806" nodeInfo="ng">
            <node role="arguments" roleId="gsa0.2868603563889526991" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="3605617378892970330" nodeInfo="nn">
              <property name="value" nameId="tpee.1068580320021" value="3" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </root>
</model>

