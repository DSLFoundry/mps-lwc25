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
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1185788614172" name="jetbrains.mps.lang.typesystem.structure.NormalTypeClause" flags="ng" index="mw_s8">
        <child id="1185788644032" name="normalType" index="mwGJk" />
      </concept>
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
      <concept id="1174643105530" name="jetbrains.mps.lang.typesystem.structure.InferenceRule" flags="ig" index="1YbPZF" />
      <concept id="1174648085619" name="jetbrains.mps.lang.typesystem.structure.AbstractRule" flags="ng" index="1YuPPy">
        <child id="1174648101952" name="applicableNode" index="1YuTPh" />
      </concept>
      <concept id="1174650418652" name="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" flags="nn" index="1YBJjd">
        <reference id="1174650432090" name="applicableNode" index="1YBMHb" />
      </concept>
      <concept id="1174657487114" name="jetbrains.mps.lang.typesystem.structure.TypeOfExpression" flags="nn" index="1Z2H0r">
        <child id="1174657509053" name="term" index="1Z2MuG" />
      </concept>
      <concept id="1174658326157" name="jetbrains.mps.lang.typesystem.structure.CreateEquationStatement" flags="nn" index="1Z5TYs" />
      <concept id="1174660718586" name="jetbrains.mps.lang.typesystem.structure.AbstractEquationStatement" flags="nn" index="1Zf1VF">
        <child id="1174660783413" name="leftExpression" index="1ZfhK$" />
        <child id="1174660783414" name="rightExpression" index="1ZfhKB" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
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
  <node concept="1YbPZF" id="257K23Pvrtw">
    <property role="TrG5h" value="typeof_QuestionReference" />
    <node concept="3clFbS" id="257K23Pvrtx" role="18ibNy">
      <node concept="1Z5TYs" id="257K23Pvs0J" role="3cqZAp">
        <node concept="mw_s8" id="257K23Pvs0V" role="1ZfhKB">
          <node concept="1Z2H0r" id="257K23Pvs0R" role="mwGJk">
            <node concept="2OqwBi" id="257K23Pvuqq" role="1Z2MuG">
              <node concept="2OqwBi" id="257K23Pvscs" role="2Oq$k0">
                <node concept="1YBJjd" id="257K23Pvs19" role="2Oq$k0">
                  <ref role="1YBMHb" node="257K23Pvrtz" resolve="questionReference" />
                </node>
                <node concept="3TrEf2" id="257K23Pvu9r" role="2OqNvi">
                  <ref role="3Tt5mk" to="zg3i:257K23Puur0" resolve="question" />
                </node>
              </node>
              <node concept="3TrEf2" id="257K23PvuLL" role="2OqNvi">
                <ref role="3Tt5mk" to="zg3i:257K23PtZmx" resolve="type" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="257K23Pvs0M" role="1ZfhK$">
          <node concept="1Z2H0r" id="257K23PvrtT" role="mwGJk">
            <node concept="1YBJjd" id="257K23PvrvO" role="1Z2MuG">
              <ref role="1YBMHb" node="257K23Pvrtz" resolve="questionReference" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="257K23Pvrtz" role="1YuTPh">
      <property role="TrG5h" value="questionReference" />
      <ref role="1YaFvo" to="zg3i:257K23PuuqZ" resolve="QuestionReference" />
    </node>
  </node>
  <node concept="1YbPZF" id="4FCftMPqH_3">
    <property role="TrG5h" value="typeof_DerivedValueReference" />
    <node concept="3clFbS" id="4FCftMPqH_4" role="18ibNy">
      <node concept="1Z5TYs" id="4FCftMPqKL_" role="3cqZAp">
        <node concept="mw_s8" id="4FCftMPqKLC" role="1ZfhK$">
          <node concept="1Z2H0r" id="4FCftMPqH_A" role="mwGJk">
            <node concept="1YBJjd" id="4FCftMPqHBx" role="1Z2MuG">
              <ref role="1YBMHb" node="4FCftMPqH_6" resolve="derivedValueReference" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="4FCftMPqNEm" role="1ZfhKB">
          <node concept="1Z2H0r" id="4FCftMPqNEi" role="mwGJk">
            <node concept="2OqwBi" id="4FCftMPqNQo" role="1Z2MuG">
              <node concept="1YBJjd" id="4FCftMPqNE$" role="2Oq$k0">
                <ref role="1YBMHb" node="4FCftMPqH_6" resolve="derivedValueReference" />
              </node>
              <node concept="3TrEf2" id="4FCftMPqO9u" role="2OqNvi">
                <ref role="3Tt5mk" to="zg3i:4FCftMPq_h5" resolve="derivedValue" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="4FCftMPqH_6" role="1YuTPh">
      <property role="TrG5h" value="derivedValueReference" />
      <ref role="1YaFvo" to="zg3i:4FCftMPq_h4" resolve="DerivedValueReference" />
    </node>
  </node>
  <node concept="1YbPZF" id="4FCftMPqHEr">
    <property role="TrG5h" value="typeof_DerivedValue" />
    <node concept="3clFbS" id="4FCftMPqHEs" role="18ibNy">
      <node concept="1Z5TYs" id="4FCftMPqI5L" role="3cqZAp">
        <node concept="mw_s8" id="4FCftMPqI5O" role="1ZfhK$">
          <node concept="1Z2H0r" id="4FCftMPqHFn" role="mwGJk">
            <node concept="1YBJjd" id="4FCftMPqHHi" role="1Z2MuG">
              <ref role="1YBMHb" node="4FCftMPqHEu" resolve="derivedValue" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="4FCftMPqMVF" role="1ZfhKB">
          <node concept="1Z2H0r" id="4FCftMPqMVB" role="mwGJk">
            <node concept="2OqwBi" id="4FCftMPqN8O" role="1Z2MuG">
              <node concept="1YBJjd" id="4FCftMPqMVT" role="2Oq$k0">
                <ref role="1YBMHb" node="4FCftMPqHEu" resolve="derivedValue" />
              </node>
              <node concept="3TrEf2" id="4FCftMPqNv3" role="2OqNvi">
                <ref role="3Tt5mk" to="zg3i:257K23PveTO" resolve="expectedType" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="4FCftMPqHEu" role="1YuTPh">
      <property role="TrG5h" value="derivedValue" />
      <ref role="1YaFvo" to="zg3i:257K23Pv8vo" resolve="DerivedValue" />
    </node>
  </node>
</model>

