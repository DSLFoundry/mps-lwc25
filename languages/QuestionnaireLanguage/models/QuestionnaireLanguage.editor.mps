<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:54c0b9cb-a7a8-4293-bc40-080395667d27(QuestionnaireLanguage.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="zg3i" ref="r:e8876d31-137a-458a-aef5-06f967861a7c(QuestionnaireLanguage.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1176897764478" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeFactory" flags="in" index="4$FPG" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1176897874615" name="nodeFactory" index="4_6I_" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" flags="ln" index="pj6Ft" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="ln" index="pVoyu" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ngI" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="257K23PtZHo">
    <ref role="1XX52x" to="zg3i:6vTVXvbANVN" resolve="Question" />
    <node concept="3EZMnI" id="257K23PtZHt" role="2wV5jI">
      <node concept="2iRfu4" id="257K23PtZHu" role="2iSdaV" />
      <node concept="3F0A7n" id="257K23PtZHr" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="257K23PtZHx" role="3EZMnx">
        <property role="3F0ifm" value=": &quot;" />
        <node concept="11L4FC" id="257K23PtZHC" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="257K23PuWyi" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="257K23PtZH_" role="3EZMnx">
        <ref role="1NtTu8" to="zg3i:6vTVXvbANVS" resolve="label" />
      </node>
      <node concept="3F0ifn" id="257K23Pub$_" role="3EZMnx">
        <property role="3F0ifm" value="&quot; " />
        <node concept="11L4FC" id="257K23PueHj" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="257K23PueHl" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="257K23PtZHJ" role="3EZMnx">
        <ref role="1NtTu8" to="zg3i:257K23PtZmx" resolve="type" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="257K23PtZHM">
    <ref role="1XX52x" to="zg3i:6vTVXvbAy8x" resolve="Form" />
    <node concept="3EZMnI" id="257K23PtZHT" role="2wV5jI">
      <node concept="l2Vlx" id="257K23PtZHU" role="2iSdaV" />
      <node concept="3F0ifn" id="257K23PtZHR" role="3EZMnx">
        <property role="3F0ifm" value="form" />
      </node>
      <node concept="3F0A7n" id="257K23PtZHX" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="257K23PtZI1" role="3EZMnx">
        <property role="3F0ifm" value="{" />
      </node>
      <node concept="3F2HdR" id="257K23PtZI5" role="3EZMnx">
        <ref role="1NtTu8" to="zg3i:257K23PtZxr" resolve="contents" />
        <node concept="l2Vlx" id="257K23PtZI7" role="2czzBx" />
        <node concept="pVoyu" id="257K23PtZI8" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pj6Ft" id="257K23PtZI9" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="257K23PtZIe" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="4$FPG" id="257K23PuoZU" role="4_6I_">
          <node concept="3clFbS" id="257K23PuoZV" role="2VODD2">
            <node concept="3clFbF" id="257K23Puqub" role="3cqZAp">
              <node concept="2pJPEk" id="257K23Puqu9" role="3clFbG">
                <node concept="2pJPED" id="257K23Puqua" role="2pJPEn">
                  <ref role="2pJxaS" to="zg3i:257K23PulpM" resolve="Empty" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="257K23PtZIc" role="3EZMnx">
        <property role="3F0ifm" value="}" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="257K23PuhQD">
    <ref role="1XX52x" to="zg3i:257K23PuhQr" resolve="ConditionalBlock" />
    <node concept="3EZMnI" id="257K23PuhQH" role="2wV5jI">
      <node concept="l2Vlx" id="257K23PuhQI" role="2iSdaV" />
      <node concept="3F0ifn" id="257K23PuhQF" role="3EZMnx">
        <property role="3F0ifm" value="if (" />
        <node concept="11LMrY" id="257K23PuhR7" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="257K23PuhQM" role="3EZMnx">
        <ref role="1NtTu8" to="zg3i:257K23PuhQu" resolve="condition" />
      </node>
      <node concept="3F0ifn" id="257K23PuhQP" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <node concept="11L4FC" id="257K23PuhR8" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="257K23PuhQT" role="3EZMnx">
        <property role="3F0ifm" value="{" />
      </node>
      <node concept="3F2HdR" id="257K23PuhQX" role="3EZMnx">
        <ref role="1NtTu8" to="zg3i:257K23PuhQv" resolve="body" />
        <node concept="l2Vlx" id="257K23PuhQZ" role="2czzBx" />
        <node concept="pVoyu" id="257K23PuhR3" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pj6Ft" id="257K23PuhR4" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="257K23PuhR5" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="4$FPG" id="257K23Pv2tM" role="4_6I_">
          <node concept="3clFbS" id="257K23Pv2tN" role="2VODD2">
            <node concept="3clFbF" id="257K23Pv2vX" role="3cqZAp">
              <node concept="2pJPEk" id="257K23Pv2vV" role="3clFbG">
                <node concept="2pJPED" id="257K23Pv2vW" role="2pJPEn">
                  <ref role="2pJxaS" to="zg3i:257K23PulpM" resolve="Empty" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="257K23PuhR1" role="3EZMnx">
        <property role="3F0ifm" value="}" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="257K23PulpO">
    <ref role="1XX52x" to="zg3i:257K23PulpM" resolve="Empty" />
    <node concept="3F0ifn" id="257K23PulpQ" role="2wV5jI" />
  </node>
  <node concept="24kQdi" id="257K23Puur1">
    <ref role="1XX52x" to="zg3i:257K23PuuqZ" resolve="QuestionReference" />
    <node concept="1iCGBv" id="257K23Puur2" role="2wV5jI">
      <ref role="1NtTu8" to="zg3i:257K23Puur0" resolve="question" />
      <node concept="1sVBvm" id="257K23Puur3" role="1sWHZn">
        <node concept="3F0A7n" id="257K23Puur4" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="257K23Pv8QK">
    <ref role="1XX52x" to="zg3i:257K23Pv8vo" resolve="DerivedValue" />
    <node concept="3EZMnI" id="257K23Pv8QO" role="2wV5jI">
      <node concept="2iRfu4" id="257K23Pv8QP" role="2iSdaV" />
      <node concept="3F0A7n" id="257K23Pv8QM" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="257K23Pv8QR" role="3EZMnx">
        <property role="3F0ifm" value=": &quot;" />
        <node concept="11LMrY" id="257K23Pv8R9" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="257K23Pv8QU" role="3EZMnx">
        <ref role="1NtTu8" to="zg3i:257K23Pv8vs" resolve="label" />
      </node>
      <node concept="3F0ifn" id="257K23Pv8QZ" role="3EZMnx">
        <property role="3F0ifm" value="&quot; " />
        <node concept="11L4FC" id="257K23Pv8Ra" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="257K23PveTR" role="3EZMnx">
        <ref role="1NtTu8" to="zg3i:257K23PveTO" resolve="expectedType" />
      </node>
      <node concept="3F0ifn" id="257K23PveTU" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <node concept="11LMrY" id="257K23PveTZ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11L4FC" id="257K23PvlkF" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="257K23Pv8R6" role="3EZMnx">
        <ref role="1NtTu8" to="zg3i:257K23Pv8vu" resolve="value" />
      </node>
      <node concept="3F0ifn" id="257K23PveTX" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <node concept="11L4FC" id="257K23PveU0" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
</model>

