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
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="5991739802479784073" name="jetbrains.mps.lang.editor.structure.MenuTypeDefault" flags="ng" index="22hDWj" />
      <concept id="2000375450116454183" name="jetbrains.mps.lang.editor.structure.ISubstituteMenu" flags="ngI" index="22mbnS">
        <child id="414384289274416996" name="parts" index="3ft7WO" />
      </concept>
      <concept id="2000375450116423800" name="jetbrains.mps.lang.editor.structure.SubstituteMenu" flags="ng" index="22mcaB" />
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1176897764478" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeFactory" flags="in" index="4$FPG" />
      <concept id="7418278005949660372" name="jetbrains.mps.lang.editor.structure.FontFamilyStyleClassItem" flags="ln" index="2biZxu" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1160590307797" name="usesFolding" index="S$F3r" />
        <child id="1176897874615" name="nodeFactory" index="4_6I_" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1196434649611" name="jetbrains.mps.lang.editor.structure.SubstituteMenu_SimpleString" flags="ng" index="2h3Zct">
        <property id="1196434851095" name="text" index="2h4Kg1" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" flags="ln" index="pj6Ft" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="ln" index="pVoyu" />
      <concept id="1177327274449" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_pattern" flags="nn" index="ub8z3" />
      <concept id="1177327570013" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_Substitute" flags="in" index="ucgPf" />
      <concept id="8478191136883534237" name="jetbrains.mps.lang.editor.structure.IExtensibleSubstituteMenuPart" flags="ngI" index="upBLQ">
        <child id="8478191136883534238" name="features" index="upBLP" />
      </concept>
      <concept id="8478191136883534207" name="jetbrains.mps.lang.editor.structure.SubstituteFeature_Selection" flags="ng" index="upBMk">
        <child id="8478191136883534208" name="query" index="upBLF" />
      </concept>
      <concept id="8478191136882577348" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_SubstituteMenu_CreatedNode" flags="ng" index="uqdCJ" />
      <concept id="8478191136882577194" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_Select" flags="in" index="uqdF1" />
      <concept id="1177335944525" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_SubstituteString" flags="in" index="uGdhv" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="3547227755871693971" name="jetbrains.mps.lang.editor.structure.PredefinedSelector" flags="ng" index="2B6iha">
        <property id="2162403111523065396" name="cellId" index="1lyBwo" />
      </concept>
      <concept id="1186402211651" name="jetbrains.mps.lang.editor.structure.StyleSheet" flags="ng" index="V5hpn">
        <child id="1186402402630" name="styles" index="V601i" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
      </concept>
      <concept id="1186404549998" name="jetbrains.mps.lang.editor.structure.ForegroundColorStyleClassItem" flags="ln" index="VechU" />
      <concept id="615427434521884870" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Subconcepts" flags="ng" index="2VfDsV" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414860679" name="jetbrains.mps.lang.editor.structure.EditableStyleClassItem" flags="ln" index="VPxyj" />
      <concept id="1630016958697344083" name="jetbrains.mps.lang.editor.structure.IMenu_Concept" flags="ngI" index="2ZABuq">
        <reference id="6591946374543067572" name="conceptDeclaration" index="aqKnT" />
        <child id="5991739802479788259" name="type" index="22hAXT" />
      </concept>
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="3383245079137382180" name="jetbrains.mps.lang.editor.structure.StyleClass" flags="ig" index="14StLt" />
      <concept id="8998492695583109601" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_CanSubstitute" flags="ig" index="16Na2f" />
      <concept id="8998492695583125082" name="jetbrains.mps.lang.editor.structure.SubstituteFeature_MatchingText" flags="ng" index="16NfWO">
        <child id="8998492695583129244" name="query" index="16NeZM" />
      </concept>
      <concept id="8998492695583129971" name="jetbrains.mps.lang.editor.structure.SubstituteFeature_DescriptionText" flags="ng" index="16NL0t">
        <child id="8998492695583129972" name="query" index="16NL0q" />
      </concept>
      <concept id="8998492695583129991" name="jetbrains.mps.lang.editor.structure.SubstituteFeature_CanSubstitute" flags="ng" index="16NL3D">
        <child id="8998492695583129992" name="query" index="16NL3A" />
      </concept>
      <concept id="7342352913006985483" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Action" flags="ng" index="3eGOop">
        <child id="8612453216082699922" name="substituteHandler" index="3aKz83" />
      </concept>
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ngI" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="7228435049763093185" name="jetbrains.mps.lang.editor.structure.FontFamilyContainer" flags="ngI" index="1rj3mw">
        <property id="7228435049763093186" name="family" index="1rj3mz" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="7991336459489871999" name="jetbrains.mps.lang.editor.structure.IOutputConceptSubstituteMenuPart" flags="ngI" index="3EoQpk">
        <reference id="7991336459489872009" name="outputConcept" index="3EoQqy" />
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
      <concept id="3647146066980922272" name="jetbrains.mps.lang.editor.structure.SelectInEditorOperation" flags="nn" index="1OKiuA">
        <child id="1948540814633499358" name="editorContext" index="lBI5i" />
        <child id="1948540814635895774" name="cellSelector" index="lGT1i" />
        <child id="3604384757217586546" name="selectionStart" index="3dN3m$" />
      </concept>
      <concept id="1161622981231" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_editorContext" flags="nn" index="1Q80Hx" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
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
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="5979988948250981289" name="jetbrains.mps.lang.actions.structure.SNodeCreatorAndInitializer" flags="nn" index="2fJWfE" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="257K23PtZHo">
    <ref role="1XX52x" to="zg3i:6vTVXvbANVN" resolve="Question" />
    <node concept="3EZMnI" id="257K23PtZHt" role="2wV5jI">
      <node concept="2iRfu4" id="257K23PtZHu" role="2iSdaV" />
      <node concept="3F0A7n" id="257K23PtZHr" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <ref role="1k5W1q" node="5Qt2gdx$71B" resolve="Question" />
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
        <ref role="1k5W1q" node="5Qt2gdx_jcF" resolve="QuestionText" />
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
        <property role="S$F3r" value="true" />
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
    <node concept="3F0ifn" id="257K23PulpQ" role="2wV5jI">
      <node concept="VPxyj" id="7HKea9ei_Qw" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="257K23Puur1">
    <ref role="1XX52x" to="zg3i:257K23PuuqZ" resolve="QuestionReference" />
    <node concept="1iCGBv" id="257K23Puur2" role="2wV5jI">
      <ref role="1NtTu8" to="zg3i:257K23Puur0" resolve="question" />
      <node concept="1sVBvm" id="257K23Puur3" role="1sWHZn">
        <node concept="3F0A7n" id="257K23Puur4" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <ref role="1k5W1q" node="5Qt2gdx$71B" resolve="Question" />
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
        <ref role="1k5W1q" node="5Qt2gdx$W2D" resolve="DerivedValue" />
      </node>
      <node concept="3F0ifn" id="257K23Pv8QR" role="3EZMnx">
        <property role="3F0ifm" value=": &quot;" />
        <node concept="11LMrY" id="257K23Pv8R9" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="257K23Pv8QU" role="3EZMnx">
        <ref role="1NtTu8" to="zg3i:257K23Pv8vs" resolve="label" />
        <ref role="1k5W1q" node="5Qt2gdx_jcF" resolve="QuestionText" />
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
  <node concept="24kQdi" id="4FCftMPq_h6">
    <ref role="1XX52x" to="zg3i:4FCftMPq_h4" resolve="DerivedValueReference" />
    <node concept="1iCGBv" id="4FCftMPq_h7" role="2wV5jI">
      <ref role="1NtTu8" to="zg3i:4FCftMPq_h5" resolve="derivedValue" />
      <node concept="1sVBvm" id="4FCftMPq_h8" role="1sWHZn">
        <node concept="3F0A7n" id="4FCftMPq_h9" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <ref role="1k5W1q" node="5Qt2gdx$W2D" resolve="DerivedValue" />
        </node>
      </node>
    </node>
  </node>
  <node concept="V5hpn" id="5Qt2gdx$71A">
    <property role="TrG5h" value="QLStyles" />
    <node concept="14StLt" id="5Qt2gdx$71B" role="V601i">
      <property role="TrG5h" value="Question" />
      <node concept="VechU" id="5Qt2gdx$71D" role="3F10Kt">
        <property role="Vb096" value="g1_qVrt/darkMagenta" />
      </node>
    </node>
    <node concept="14StLt" id="5Qt2gdx$W2D" role="V601i">
      <property role="TrG5h" value="DerivedValue" />
      <node concept="VechU" id="5Qt2gdx$W2F" role="3F10Kt">
        <property role="Vb096" value="g1_qRwE/darkGreen" />
      </node>
    </node>
    <node concept="14StLt" id="5Qt2gdx_jcF" role="V601i">
      <property role="TrG5h" value="QuestionText" />
      <node concept="2biZxu" id="5Qt2gdx_jcI" role="3F10Kt">
        <property role="1rj3mz" value="Bitstream Charter" />
      </node>
    </node>
  </node>
  <node concept="22mcaB" id="7HKea9ei_Qx">
    <ref role="aqKnT" to="zg3i:257K23PulpM" resolve="Empty" />
    <node concept="22hDWj" id="7HKea9ei_Qy" role="22hAXT" />
    <node concept="3eGOop" id="7HKea9eiMg0" role="3ft7WO">
      <ref role="3EoQqy" to="zg3i:257K23PuhQy" resolve="IFormContents" />
      <node concept="ucgPf" id="7HKea9eiMg2" role="3aKz83">
        <node concept="3clFbS" id="7HKea9eiMg4" role="2VODD2">
          <node concept="3cpWs8" id="7HKea9eiT3X" role="3cqZAp">
            <node concept="3cpWsn" id="7HKea9eiT3Y" role="3cpWs9">
              <property role="TrG5h" value="question" />
              <node concept="3Tqbb2" id="7HKea9eiSWy" role="1tU5fm">
                <ref role="ehGHo" to="zg3i:6vTVXvbANVN" resolve="Question" />
              </node>
              <node concept="2ShNRf" id="7HKea9eiT3Z" role="33vP2m">
                <node concept="2fJWfE" id="7HKea9eiT40" role="2ShVmc">
                  <node concept="3Tqbb2" id="7HKea9eiT41" role="3zrR0E">
                    <ref role="ehGHo" to="zg3i:6vTVXvbANVN" resolve="Question" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7HKea9eiRxC" role="3cqZAp">
            <node concept="37vLTI" id="7HKea9eiVHK" role="3clFbG">
              <node concept="2OqwBi" id="7HKea9ekJAQ" role="37vLTx">
                <node concept="ub8z3" id="7HKea9eiWg4" role="2Oq$k0" />
                <node concept="liA8E" id="7HKea9ekKEt" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.replaceAll(java.lang.String,java.lang.String)" resolve="replaceAll" />
                  <node concept="Xl_RD" id="7HKea9ekKLW" role="37wK5m">
                    <property role="Xl_RC" value=" " />
                  </node>
                  <node concept="Xl_RD" id="7HKea9ekKVz" role="37wK5m">
                    <property role="Xl_RC" value="_" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7HKea9eiToM" role="37vLTJ">
                <node concept="37vLTw" id="7HKea9eiT42" role="2Oq$k0">
                  <ref role="3cqZAo" node="7HKea9eiT3Y" resolve="question" />
                </node>
                <node concept="3TrcHB" id="7HKea9eiU8u" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="7HKea9eiWQc" role="3cqZAp">
            <node concept="37vLTw" id="7HKea9eiWRh" role="3cqZAk">
              <ref role="3cqZAo" node="7HKea9eiT3Y" resolve="question" />
            </node>
          </node>
        </node>
      </node>
      <node concept="16NL3D" id="7HKea9eiMix" role="upBLP">
        <node concept="16Na2f" id="7HKea9eiMiy" role="16NL3A">
          <node concept="3clFbS" id="7HKea9eiMiz" role="2VODD2">
            <node concept="3clFbF" id="7HKea9eiMy$" role="3cqZAp">
              <node concept="2OqwBi" id="7HKea9eiQjc" role="3clFbG">
                <node concept="ub8z3" id="7HKea9eiOD1" role="2Oq$k0" />
                <node concept="17RvpY" id="7HKea9eiRjw" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16NfWO" id="7HKea9ejAch" role="upBLP">
        <node concept="uGdhv" id="7HKea9ejAcV" role="16NeZM">
          <node concept="3clFbS" id="7HKea9ejAcX" role="2VODD2">
            <node concept="3clFbF" id="7HKea9ejAtf" role="3cqZAp">
              <node concept="ub8z3" id="7HKea9ejAte" role="3clFbG" />
            </node>
          </node>
        </node>
      </node>
      <node concept="upBMk" id="7HKea9el47P" role="upBLP">
        <node concept="uqdF1" id="7HKea9el47R" role="upBLF">
          <node concept="3clFbS" id="7HKea9el47T" role="2VODD2">
            <node concept="3clFbF" id="7HKea9el4fR" role="3cqZAp">
              <node concept="2OqwBi" id="7HKea9el4q4" role="3clFbG">
                <node concept="uqdCJ" id="7HKea9el4fQ" role="2Oq$k0" />
                <node concept="1OKiuA" id="7HKea9el4Mv" role="2OqNvi">
                  <node concept="1Q80Hx" id="7HKea9el4Nh" role="lBI5i" />
                  <node concept="2B6iha" id="7HKea9el4Or" role="lGT1i">
                    <property role="1lyBwo" value="1S2pyLby17G/firstEditable" />
                  </node>
                  <node concept="3cmrfG" id="7HKea9el4PN" role="3dN3m$">
                    <property role="3cmrfH" value="-1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16NL0t" id="7HKea9ejP7E" role="upBLP">
        <node concept="2h3Zct" id="7HKea9ejPaB" role="16NL0q">
          <property role="2h4Kg1" value="Question" />
        </node>
      </node>
    </node>
    <node concept="2VfDsV" id="7HKea9ei_Qz" role="3ft7WO" />
  </node>
</model>

