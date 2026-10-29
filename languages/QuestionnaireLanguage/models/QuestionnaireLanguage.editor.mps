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
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1140524450557" name="separatorText" index="2czwfO" />
      </concept>
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1139852716018" name="noTargetText" index="1$x2rV" />
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <property id="1073389446425" name="vertical" index="3EZMnw" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="6mf4SGrdOsK">
    <property role="TrG5h" value="Questionnaire_Editor" />
    <ref role="1XX52x" to="zg3i:6mf4SGrdOod" resolve="Questionnaire" />
    <node concept="3EZMnI" id="6mf4SGrdOsL" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3F0ifn" id="6mf4SGrdOsH" role="3EZMnx">
        <property role="3F0ifm" value="questionnaire " />
      </node>
      <node concept="3F0A7n" id="6mf4SGrdOsI" role="3EZMnx">
        <ref role="1NtTu8" to="zg3i:6mf4SGrdOoe" resolve="name" />
      </node>
      <node concept="3F2HdR" id="6mf4SGrdOsJ" role="3EZMnx">
        <property role="2czwfO" value="" />
        <ref role="1NtTu8" to="zg3i:6mf4SGrdOof" resolve="items" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6mf4SGrdOsU">
    <property role="TrG5h" value="Question_Editor" />
    <ref role="1XX52x" to="zg3i:6mf4SGrdOo5" resolve="Question" />
    <node concept="3EZMnI" id="6mf4SGrdOsV" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3F0ifn" id="6mf4SGrdOsM" role="3EZMnx">
        <property role="3F0ifm" value="question " />
      </node>
      <node concept="3F0A7n" id="6mf4SGrdOsN" role="3EZMnx">
        <ref role="1NtTu8" to="zg3i:6mf4SGrdOo6" resolve="id" />
      </node>
      <node concept="3F0ifn" id="6mf4SGrdOsO" role="3EZMnx">
        <property role="3F0ifm" value=" : " />
      </node>
      <node concept="3F0A7n" id="6mf4SGrdOsP" role="3EZMnx">
        <ref role="1NtTu8" to="zg3i:6mf4SGrdOo8" resolve="type" />
      </node>
      <node concept="3F0ifn" id="6mf4SGrdOsQ" role="3EZMnx">
        <property role="3F0ifm" value=" — " />
      </node>
      <node concept="3F0A7n" id="6mf4SGrdOsR" role="3EZMnx">
        <ref role="1NtTu8" to="zg3i:6mf4SGrdOo7" resolve="label" />
      </node>
      <node concept="3F0ifn" id="6mf4SGrdOsS" role="3EZMnx">
        <property role="3F0ifm" value=" = " />
      </node>
      <node concept="3F2HdR" id="6mf4SGrejii" role="3EZMnx">
        <property role="2czwfO" value="" />
        <ref role="1NtTu8" to="zg3i:6mf4SGrdOo9" resolve="computed" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6mf4SGrdOt0">
    <property role="TrG5h" value="Conditional_Editor" />
    <ref role="1XX52x" to="zg3i:6mf4SGrdOoa" resolve="Conditional" />
    <node concept="3EZMnI" id="6mf4SGrdOt1" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3F0ifn" id="6mf4SGrdOsW" role="3EZMnx">
        <property role="3F0ifm" value="if " />
      </node>
      <node concept="3F1sOY" id="6mf4SGrdOsX" role="3EZMnx">
        <property role="1$x2rV" value="&lt;condition&gt;" />
        <ref role="1NtTu8" to="zg3i:6mf4SGrdOob" resolve="condition" />
      </node>
      <node concept="3F0ifn" id="6mf4SGrdOsY" role="3EZMnx">
        <property role="3F0ifm" value=" then " />
      </node>
      <node concept="3F2HdR" id="6mf4SGrdOsZ" role="3EZMnx">
        <property role="2czwfO" value="" />
        <ref role="1NtTu8" to="zg3i:6mf4SGrdOoc" resolve="items" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6mf4SGrdOt3">
    <property role="TrG5h" value="QuestionReference_Editor" />
    <ref role="1XX52x" to="zg3i:6mf4SGrdOog" resolve="QuestionReference" />
    <node concept="3EZMnI" id="6mf4SGrdOt4" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="1iCGBv" id="6mf4SGrdOt6" role="3EZMnx">
        <property role="1$x2rV" value="&lt;question&gt;" />
        <ref role="1NtTu8" to="zg3i:6mf4SGrdOoh" resolve="question" />
        <node concept="1sVBvm" id="6mf4SGrdOt8" role="1sWHZn">
          <node concept="3F0A7n" id="6mf4SGrdOt9" role="2wV5jI">
            <property role="1$x2rV" value="&lt;id&gt;" />
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="zg3i:6mf4SGrdOo6" resolve="id" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

