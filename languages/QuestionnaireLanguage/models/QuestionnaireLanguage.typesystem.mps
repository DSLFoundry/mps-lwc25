<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:028a00d3-4a07-43d5-b8af-6952ab7a827e(QuestionnaireLanguage.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="5" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="zg3i" ref="r:e8876d31-137a-458a-aef5-06f967861a7c(QuestionnaireLanguage.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1195214364922" name="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" flags="ig" index="18kY7G" />
      <concept id="3937244445246642777" name="jetbrains.mps.lang.typesystem.structure.AbstractReportStatement" flags="ng" index="1urrMJ">
        <child id="3937244445246642781" name="nodeToReport" index="1urrMF" />
      </concept>
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
      <concept id="1174648085619" name="jetbrains.mps.lang.typesystem.structure.AbstractRule" flags="ng" index="1YuPPy">
        <child id="1174648101952" name="applicableNode" index="1YuTPh" />
      </concept>
      <concept id="1174650418652" name="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" flags="nn" index="1YBJjd">
        <reference id="1174650432090" name="applicableNode" index="1YBMHb" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <reference id="6733348108486823428" name="concept" index="1m5ApE" />
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="18kY7G" id="6mf4SGrfZh3">
    <property role="TrG5h" value="check_ConditionalBooleanReference" />
    <node concept="1YaCAy" id="6mf4SGrfZgD" role="1YuTPh">
      <property role="TrG5h" value="conditional" />
      <ref role="1YaFvo" to="zg3i:6mf4SGrdOoa" resolve="Conditional" />
    </node>
    <node concept="3clFbS" id="6mf4SGrfZh2" role="18ibNy">
      <node concept="3clFbJ" id="6mf4SGrfZgU" role="3cqZAp">
        <node concept="2OqwBi" id="6mf4SGrfZh0" role="3clFbw">
          <node concept="2OqwBi" id="6mf4SGrfZgZ" role="2Oq$k0">
            <node concept="1YBJjd" id="6mf4SGrfZgX" role="2Oq$k0">
              <ref role="1YBMHb" node="6mf4SGrfZgD" resolve="conditional" />
            </node>
            <node concept="3TrEf2" id="6mf4SGrfZgY" role="2OqNvi">
              <ref role="3Tt5mk" to="zg3i:6mf4SGrdOob" resolve="condition" />
            </node>
          </node>
          <node concept="1mIQ4w" id="6mf4SGrfZgV" role="2OqNvi">
            <node concept="chp4Y" id="6mf4SGrfZgW" role="cj9EA">
              <ref role="cht4Q" to="zg3i:6mf4SGrdOog" resolve="QuestionReference" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="6mf4SGrfZh1" role="3clFbx">
          <node concept="3clFbJ" id="6mf4SGrg6xN" role="3cqZAp">
            <node concept="2OqwBi" id="6mf4SGrg6xO" role="3clFbw">
              <node concept="2OqwBi" id="6mf4SGrg6xL" role="2Oq$k0">
                <node concept="1PxgMI" id="6mf4SGrg6xF" role="2Oq$k0">
                  <ref role="1m5ApE" to="zg3i:6mf4SGrdOog" resolve="QuestionReference" />
                  <node concept="2OqwBi" id="6mf4SGrg6xI" role="1m5AlR">
                    <node concept="1YBJjd" id="6mf4SGrg6xG" role="2Oq$k0">
                      <ref role="1YBMHb" node="6mf4SGrfZgD" resolve="conditional" />
                    </node>
                    <node concept="3TrEf2" id="6mf4SGrg6xH" role="2OqNvi">
                      <ref role="3Tt5mk" to="zg3i:6mf4SGrdOob" resolve="condition" />
                    </node>
                  </node>
                  <node concept="chp4Y" id="6mf4SGrg6xJ" role="3oSUPX">
                    <ref role="cht4Q" to="zg3i:6mf4SGrdOog" resolve="QuestionReference" />
                  </node>
                </node>
                <node concept="3TrEf2" id="6mf4SGrg6xK" role="2OqNvi">
                  <ref role="3Tt5mk" to="zg3i:6mf4SGrdOoh" resolve="question" />
                </node>
              </node>
              <node concept="3x8VRR" id="6mf4SGrg6xM" role="2OqNvi" />
            </node>
            <node concept="3clFbS" id="6mf4SGrg6xP" role="3clFbx">
              <node concept="3clFbJ" id="6mf4SGrfZgE" role="3cqZAp">
                <node concept="3y3z36" id="6mf4SGrfZgF" role="3clFbw">
                  <node concept="2OqwBi" id="6mf4SGrfZgO" role="3uHU7B">
                    <node concept="2OqwBi" id="6mf4SGrfZgM" role="2Oq$k0">
                      <node concept="1PxgMI" id="6mf4SGrfZgG" role="2Oq$k0">
                        <ref role="1m5ApE" to="zg3i:6mf4SGrdOog" resolve="QuestionReference" />
                        <node concept="2OqwBi" id="6mf4SGrfZgJ" role="1m5AlR">
                          <node concept="1YBJjd" id="6mf4SGrfZgH" role="2Oq$k0">
                            <ref role="1YBMHb" node="6mf4SGrfZgD" resolve="conditional" />
                          </node>
                          <node concept="3TrEf2" id="6mf4SGrfZgI" role="2OqNvi">
                            <ref role="3Tt5mk" to="zg3i:6mf4SGrdOob" resolve="condition" />
                          </node>
                        </node>
                        <node concept="chp4Y" id="6mf4SGrfZgK" role="3oSUPX">
                          <ref role="cht4Q" to="zg3i:6mf4SGrdOog" resolve="QuestionReference" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="6mf4SGrfZgL" role="2OqNvi">
                        <ref role="3Tt5mk" to="zg3i:6mf4SGrdOoh" resolve="question" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="6mf4SGrfZgN" role="2OqNvi">
                      <ref role="3TsBF5" to="zg3i:6mf4SGrdOo8" resolve="type" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="6mf4SGrfZgP" role="3uHU7w">
                    <property role="Xl_RC" value="boolean" />
                  </node>
                </node>
                <node concept="3clFbS" id="6mf4SGrfZgQ" role="3clFbx">
                  <node concept="2MkqsV" id="6mf4SGrfZgR" role="3cqZAp">
                    <node concept="Xl_RD" id="6mf4SGrfZgS" role="2MkJ7o">
                      <property role="Xl_RC" value="A conditional question reference must target a boolean question" />
                    </node>
                    <node concept="1YBJjd" id="6mf4SGrfZgT" role="1urrMF">
                      <ref role="1YBMHb" node="6mf4SGrfZgD" resolve="conditional" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

