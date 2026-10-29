<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:54c0b9cb-a7a8-4293-bc40-080395667d27(QuestionnaireLanguage.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="15" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="zg3i" ref="r:e8876d31-137a-458a-aef5-06f967861a7c(QuestionnaireLanguage.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
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
  </registry>
  <node concept="24kQdi" id="2fKtARxBnak">
    <ref role="1XX52x" to="zg3i:2fKtARxBmmn" />
    <node concept="3EZMnI" id="2fKtARxBnam" role="2wV5jI">
      <node concept="l2Vlx" id="2fKtARxBnan" role="2iSdaV" />
      <node concept="3F0ifn" id="2fKtARxBnao" role="3EZMnx">
        <property role="3F0ifm" value="when" />
      </node>
      <node concept="3F0ifn" id="2fKtARxBnap" role="3EZMnx">
        <property role="3F0ifm" value="condition:" />
        <node concept="pVoyu" id="2fKtARxBnaq" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="2fKtARxBnar" role="3EZMnx">
        <ref role="1NtTu8" to="zg3i:2fKtARxBmmz" />
        <node concept="pVoyu" id="2fKtARxBnas" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="2fKtARxBnat" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="2fKtARxBnau" role="3EZMnx">
        <property role="3F0ifm" value="items:" />
        <node concept="pVoyu" id="2fKtARxBnav" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="2fKtARxBnaw" role="3EZMnx">
        <ref role="1NtTu8" to="zg3i:2fKtARxBmm$" />
        <node concept="pVoyu" id="2fKtARxBnay" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="2fKtARxBnaz" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pj6Ft" id="2fKtARxBna$" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="l2Vlx" id="2fKtARxBna_" role="2czzBx" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2fKtARxBnaD">
    <ref role="1XX52x" to="zg3i:2fKtARxBmmp" />
    <node concept="3EZMnI" id="2fKtARxBnaF" role="2wV5jI">
      <node concept="l2Vlx" id="2fKtARxBnaG" role="2iSdaV" />
      <node concept="3F0ifn" id="2fKtARxBnaH" role="3EZMnx">
        <property role="3F0ifm" value="literal" />
      </node>
      <node concept="3F0ifn" id="2fKtARxBnaI" role="3EZMnx">
        <property role="3F0ifm" value="value:" />
        <node concept="pVoyu" id="2fKtARxBnaJ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="2fKtARxBnaK" role="3EZMnx">
        <ref role="1NtTu8" to="zg3i:2fKtARxBmm_" />
      </node>
      <node concept="3F0ifn" id="2fKtARxBnaL" role="3EZMnx">
        <property role="3F0ifm" value="literalType:" />
        <node concept="pVoyu" id="2fKtARxBnaM" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="2fKtARxBnaN" role="3EZMnx">
        <ref role="1NtTu8" to="zg3i:2fKtARxBmmA" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2fKtARxBnaQ">
    <ref role="1XX52x" to="zg3i:2fKtARxBmmq" />
    <node concept="3EZMnI" id="2fKtARxBnaS" role="2wV5jI">
      <node concept="l2Vlx" id="2fKtARxBnaT" role="2iSdaV" />
      <node concept="3F0ifn" id="2fKtARxBnaU" role="3EZMnx">
        <property role="3F0ifm" value="ref" />
      </node>
      <node concept="3F0ifn" id="2fKtARxBnaV" role="3EZMnx">
        <property role="3F0ifm" value="target:" />
        <node concept="pVoyu" id="2fKtARxBnaW" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1iCGBv" id="2fKtARxBnaX" role="3EZMnx">
        <ref role="1NtTu8" to="zg3i:2fKtARxBmmB" />
        <node concept="1sVBvm" id="2fKtARxBnb0" role="1sWHZn">
          <node concept="3F0A7n" id="2fKtARxBnb6" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2fKtARxBnba">
    <ref role="1XX52x" to="zg3i:2fKtARxBmmr" />
    <node concept="3EZMnI" id="2fKtARxBnbc" role="2wV5jI">
      <node concept="l2Vlx" id="2fKtARxBnbd" role="2iSdaV" />
      <node concept="3F0ifn" id="2fKtARxBnbe" role="3EZMnx">
        <property role="3F0ifm" value="binary" />
      </node>
      <node concept="3F0ifn" id="2fKtARxBnbf" role="3EZMnx">
        <property role="3F0ifm" value="operator:" />
        <node concept="pVoyu" id="2fKtARxBnbg" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="2fKtARxBnbh" role="3EZMnx">
        <ref role="1NtTu8" to="zg3i:2fKtARxBmmC" />
      </node>
      <node concept="3F0ifn" id="2fKtARxBnbi" role="3EZMnx">
        <property role="3F0ifm" value="left:" />
        <node concept="pVoyu" id="2fKtARxBnbj" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="2fKtARxBnbk" role="3EZMnx">
        <ref role="1NtTu8" to="zg3i:2fKtARxBmmD" />
        <node concept="pVoyu" id="2fKtARxBnbl" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="2fKtARxBnbm" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="2fKtARxBnbn" role="3EZMnx">
        <property role="3F0ifm" value="right:" />
        <node concept="pVoyu" id="2fKtARxBnbo" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="2fKtARxBnbp" role="3EZMnx">
        <ref role="1NtTu8" to="zg3i:2fKtARxBmmE" />
        <node concept="pVoyu" id="2fKtARxBnbq" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="2fKtARxBnbr" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2fKtARxBnbu">
    <ref role="1XX52x" to="zg3i:2fKtARxBmms" />
    <node concept="3EZMnI" id="2fKtARxBnbw" role="2wV5jI">
      <node concept="l2Vlx" id="2fKtARxBnbx" role="2iSdaV" />
      <node concept="3F0ifn" id="2fKtARxBnby" role="3EZMnx">
        <property role="3F0ifm" value="unary" />
      </node>
      <node concept="3F0ifn" id="2fKtARxBnbz" role="3EZMnx">
        <property role="3F0ifm" value="operator:" />
        <node concept="pVoyu" id="2fKtARxBnb$" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="2fKtARxBnb_" role="3EZMnx">
        <ref role="1NtTu8" to="zg3i:2fKtARxBmmF" />
      </node>
      <node concept="3F0ifn" id="2fKtARxBnbA" role="3EZMnx">
        <property role="3F0ifm" value="operand:" />
        <node concept="pVoyu" id="2fKtARxBnbB" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="2fKtARxBnbC" role="3EZMnx">
        <ref role="1NtTu8" to="zg3i:2fKtARxBmmG" />
        <node concept="pVoyu" id="2fKtARxBnbD" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="2fKtARxBnbE" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2fKtARxC3pu">
    <ref role="1XX52x" to="zg3i:2fKtARxBmmm" />
    <node concept="3EZMnI" id="2fKtARxC3pw" role="2wV5jI">
      <node concept="l2Vlx" id="2fKtARxC3px" role="2iSdaV" />
      <node concept="3F0ifn" id="2fKtARxC3py" role="3EZMnx">
        <property role="3F0ifm" value="question" />
      </node>
      <node concept="3F0ifn" id="2fKtARxC3pz" role="3EZMnx">
        <property role="3F0ifm" value="label:" />
        <node concept="pVoyu" id="2fKtARxC3p$" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="2fKtARxC3p_" role="3EZMnx">
        <ref role="1NtTu8" to="zg3i:2fKtARxBmmv" />
      </node>
      <node concept="3F0ifn" id="2fKtARxC3pA" role="3EZMnx">
        <property role="3F0ifm" value="valueType:" />
        <node concept="pVoyu" id="2fKtARxC3pB" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="2fKtARxC3pC" role="3EZMnx">
        <ref role="1NtTu8" to="zg3i:2fKtARxBmmw" />
      </node>
      <node concept="3F0ifn" id="2fKtARxC3pD" role="3EZMnx">
        <property role="3F0ifm" value="id:" />
        <node concept="pVoyu" id="2fKtARxC3pE" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="2fKtARxC3pF" role="3EZMnx">
        <ref role="1NtTu8" to="zg3i:2fKtARxBo66" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2fKtARxCqdb">
    <ref role="1XX52x" to="zg3i:2fKtARxBnbO" />
    <node concept="3EZMnI" id="2fKtARxCqdd" role="2wV5jI">
      <node concept="l2Vlx" id="2fKtARxCqde" role="2iSdaV" />
      <node concept="3F0ifn" id="2fKtARxCqdf" role="3EZMnx">
        <property role="3F0ifm" value="computed question" />
      </node>
      <node concept="3F0ifn" id="2fKtARxCqdg" role="3EZMnx">
        <property role="3F0ifm" value="label:" />
        <node concept="pVoyu" id="2fKtARxCqdh" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="2fKtARxCqdi" role="3EZMnx">
        <ref role="1NtTu8" to="zg3i:2fKtARxBmmv" />
      </node>
      <node concept="3F0ifn" id="2fKtARxCqdj" role="3EZMnx">
        <property role="3F0ifm" value="valueType:" />
        <node concept="pVoyu" id="2fKtARxCqdk" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="2fKtARxCqdl" role="3EZMnx">
        <ref role="1NtTu8" to="zg3i:2fKtARxBmmw" />
      </node>
      <node concept="3F0ifn" id="2fKtARxCqdm" role="3EZMnx">
        <property role="3F0ifm" value="id:" />
        <node concept="pVoyu" id="2fKtARxCqdn" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="2fKtARxCqdo" role="3EZMnx">
        <ref role="1NtTu8" to="zg3i:2fKtARxBo66" />
      </node>
      <node concept="3F0ifn" id="2fKtARxCqdp" role="3EZMnx">
        <property role="3F0ifm" value="computed:" />
        <node concept="pVoyu" id="2fKtARxCqdq" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="2fKtARxCqdr" role="3EZMnx">
        <ref role="1NtTu8" to="zg3i:2fKtARxBnbR" />
        <node concept="pVoyu" id="2fKtARxCqds" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="2fKtARxCqdt" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2fKtARxCMAi">
    <ref role="1XX52x" to="zg3i:2fKtARxBmmk" />
    <node concept="3EZMnI" id="2fKtARxCMAk" role="2wV5jI">
      <node concept="l2Vlx" id="2fKtARxCMAl" role="2iSdaV" />
      <node concept="3F0ifn" id="2fKtARxCMAm" role="3EZMnx">
        <property role="3F0ifm" value="form" />
      </node>
      <node concept="3F0ifn" id="2fKtARxCMAn" role="3EZMnx">
        <property role="3F0ifm" value="Name:" />
        <node concept="pVoyu" id="2fKtARxCMAo" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="2fKtARxCMAp" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" />
      </node>
      <node concept="3F0ifn" id="2fKtARxCMAq" role="3EZMnx">
        <property role="3F0ifm" value="items:" />
        <node concept="pVoyu" id="2fKtARxCMAr" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="2fKtARxCMAs" role="3EZMnx">
        <ref role="1NtTu8" to="zg3i:2fKtARxBmmt" />
        <node concept="pVoyu" id="2fKtARxCMAu" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="2fKtARxCMAv" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pj6Ft" id="2fKtARxCMAw" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="l2Vlx" id="2fKtARxCMAx" role="2czzBx" />
      </node>
    </node>
  </node>
</model>

