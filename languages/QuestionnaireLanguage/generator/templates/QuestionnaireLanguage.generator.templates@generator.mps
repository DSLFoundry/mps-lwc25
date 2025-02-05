<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:1f1279ee-a270-42e5-9ba9-ef16190001b5(QuestionnaireLanguage.generator.templates@generator)">
  <persistence version="9" />
  <languages>
    <use id="990507d3-3527-4c54-bfe9-0ca3c9c6247a" name="com.dslfoundry.plaintextgen" version="0" />
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="4" />
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="zg3i" ref="r:e8876d31-137a-458a-aef5-06f967861a7c(QuestionnaireLanguage.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="hm2y" ref="r:66e07cb4-a4b0-4bf3-a36d-5e9ed1ff1bd3(org.iets3.core.expr.base.structure)" implicit="true" />
    <import index="tbr6" ref="r:6a005c26-87c0-43c4-8cf3-49ffba1099df(de.slisson.mps.richtext.behavior)" implicit="true" />
    <import index="5qo5" ref="r:6d93ddb1-b0b0-4eee-8079-51303666672a(org.iets3.core.expr.simpleTypes.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1114706874351" name="jetbrains.mps.lang.generator.structure.CopySrcNodeMacro" flags="ln" index="29HgVG">
        <child id="1168024447342" name="sourceNodeQuery" index="3NFExx" />
      </concept>
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1167328349397" name="reductionMappingRule" index="3acgRq" />
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
      </concept>
      <concept id="1177093525992" name="jetbrains.mps.lang.generator.structure.InlineTemplate_RuleConsequence" flags="lg" index="gft3U">
        <child id="1177093586806" name="templateNode" index="gfFT$" />
      </concept>
      <concept id="1168559512253" name="jetbrains.mps.lang.generator.structure.DismissTopMappingRule" flags="lg" index="j$LIH">
        <child id="1169669152123" name="generatorMessage" index="1lHHLF" />
      </concept>
      <concept id="1112730859144" name="jetbrains.mps.lang.generator.structure.TemplateSwitch" flags="ig" index="jVnub">
        <child id="1168558750579" name="defaultConsequence" index="jxRDz" />
        <child id="1167340453568" name="reductionMappingRule" index="3aUrZf" />
      </concept>
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1722980698497626400" name="jetbrains.mps.lang.generator.structure.ITemplateCall" flags="ngI" index="v9R3L">
        <reference id="1722980698497626483" name="template" index="v9R2y" />
      </concept>
      <concept id="1167168920554" name="jetbrains.mps.lang.generator.structure.BaseMappingRule_Condition" flags="in" index="30G5F_" />
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <property id="1167272244852" name="applyToConceptInheritors" index="36QftV" />
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
        <child id="1167169362365" name="conditionFunction" index="30HLyM" />
      </concept>
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="ln" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1167327847730" name="jetbrains.mps.lang.generator.structure.Reduction_MappingRule" flags="lg" index="3aamgX">
        <child id="1169672767469" name="ruleConsequence" index="1lVwrX" />
      </concept>
      <concept id="1167514355419" name="jetbrains.mps.lang.generator.structure.Root_MappingRule" flags="lg" index="3lhOvk">
        <reference id="1167514355421" name="template" index="3lhOvi" />
      </concept>
      <concept id="1169670156577" name="jetbrains.mps.lang.generator.structure.GeneratorMessage" flags="lg" index="1lLz0L">
        <property id="1169670173015" name="messageText" index="1lLB17" />
        <property id="1169670356567" name="messageType" index="1lMjX7" />
      </concept>
      <concept id="982871510068000147" name="jetbrains.mps.lang.generator.structure.TemplateSwitchMacro" flags="lg" index="1sPUBX" />
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="in" index="3JmXsc" />
      <concept id="1168024337012" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery" flags="in" index="3NFfHV" />
      <concept id="1118786554307" name="jetbrains.mps.lang.generator.structure.LoopMacro" flags="ln" index="1WS0z7">
        <child id="1167952069335" name="sourceNodesQuery" index="3Jn$fo" />
      </concept>
    </language>
    <language id="990507d3-3527-4c54-bfe9-0ca3c9c6247a" name="com.dslfoundry.plaintextgen">
      <concept id="5082088080656902716" name="com.dslfoundry.plaintextgen.structure.NewlineMarker" flags="ng" index="2EixSi" />
      <concept id="1145195647825954804" name="com.dslfoundry.plaintextgen.structure.word" flags="ng" index="356sEF" />
      <concept id="1145195647825954799" name="com.dslfoundry.plaintextgen.structure.Line" flags="ng" index="356sEK">
        <child id="5082088080656976323" name="newlineMarker" index="2EinRH" />
        <child id="1145195647825954802" name="words" index="356sEH" />
      </concept>
      <concept id="1145195647825954793" name="com.dslfoundry.plaintextgen.structure.SpaceIndentedText" flags="ng" index="356sEQ">
        <property id="5198309202558919052" name="indent" index="333NGx" />
      </concept>
      <concept id="1145195647825954788" name="com.dslfoundry.plaintextgen.structure.TextgenText" flags="ng" index="356sEV">
        <property id="5407518469085446424" name="ext" index="3Le9LX" />
        <child id="1145195647826100986" name="content" index="356KY_" />
      </concept>
      <concept id="1145195647826084325" name="com.dslfoundry.plaintextgen.structure.VerticalLines" flags="ng" index="356WMU" />
      <concept id="7214912913997260680" name="com.dslfoundry.plaintextgen.structure.IVerticalGroup" flags="ngI" index="383Yap">
        <child id="7214912913997260696" name="lines" index="383Ya9" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="1173122760281" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorsOperation" flags="nn" index="z$bX8" />
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1154546920561" name="jetbrains.mps.lang.smodel.structure.OperationParm_ConceptList" flags="ng" index="3gmYPX">
        <child id="1154546920563" name="concept" index="3gmYPZ" />
      </concept>
      <concept id="1154546950173" name="jetbrains.mps.lang.smodel.structure.ConceptReference" flags="ng" index="3gn64h">
        <reference id="1154546997487" name="concept" index="3gnhBz" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1172326502327" name="jetbrains.mps.lang.smodel.structure.Concept_IsExactlyOperation" flags="nn" index="3O6GUB">
        <child id="1206733650006" name="conceptArgument" index="3QVz_e" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="name_DebugInfo" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
    </language>
  </registry>
  <node concept="bUwia" id="3OiB6Qt32np">
    <property role="TrG5h" value="main" />
    <node concept="3aamgX" id="4D$GIrwZSSx" role="3acgRq">
      <ref role="30HIoZ" to="zg3i:257K23PuuqZ" resolve="QuestionReference" />
      <node concept="gft3U" id="4D$GIrwZSSB" role="1lVwrX">
        <node concept="356sEF" id="4D$GIrwZSSF" role="gfFT$">
          <property role="TrG5h" value="questionId" />
          <node concept="17Uvod" id="4D$GIrwZSSG" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="4D$GIrwZSSH" role="3zH0cK">
              <node concept="3clFbS" id="4D$GIrwZSSI" role="2VODD2">
                <node concept="3clFbF" id="4D$GIrx03Uj" role="3cqZAp">
                  <node concept="2YIFZM" id="4D$GIrx03XJ" role="3clFbG">
                    <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <node concept="Xl_RD" id="4D$GIrx04PU" role="37wK5m">
                      <property role="Xl_RC" value="val('%s')" />
                    </node>
                    <node concept="2OqwBi" id="4D$GIrwZU9q" role="37wK5m">
                      <node concept="2OqwBi" id="4D$GIrwZTCc" role="2Oq$k0">
                        <node concept="30H73N" id="4D$GIrwZT8R" role="2Oq$k0" />
                        <node concept="3TrEf2" id="4D$GIrwZTRY" role="2OqNvi">
                          <ref role="3Tt5mk" to="zg3i:257K23Puur0" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="4D$GIrwZV0G" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
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
    <node concept="3aamgX" id="4D$GIrx0Wm8" role="3acgRq">
      <ref role="30HIoZ" to="hm2y:4rZeNQ6MGm_" resolve="MinusExpression" />
      <node concept="gft3U" id="4D$GIrx0Wme" role="1lVwrX">
        <node concept="356sEK" id="4D$GIrx0Wmi" role="gfFT$">
          <node concept="356sEF" id="4D$GIrx0Wmj" role="356sEH">
            <property role="TrG5h" value="lhs" />
            <node concept="29HgVG" id="4D$GIrx0XVM" role="lGtFl">
              <node concept="3NFfHV" id="4D$GIrx0XVN" role="3NFExx">
                <node concept="3clFbS" id="4D$GIrx0XVO" role="2VODD2">
                  <node concept="3clFbF" id="4D$GIrx0XY3" role="3cqZAp">
                    <node concept="2OqwBi" id="4D$GIrx0Y0F" role="3clFbG">
                      <node concept="30H73N" id="4D$GIrx0XY2" role="2Oq$k0" />
                      <node concept="3TrEf2" id="4D$GIrx0Y3c" role="2OqNvi">
                        <ref role="3Tt5mk" to="hm2y:4rZeNQ6MpKm" resolve="left" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEF" id="4D$GIrx0Wml" role="356sEH">
            <property role="TrG5h" value=" - " />
          </node>
          <node concept="356sEF" id="4D$GIrx0Wmm" role="356sEH">
            <property role="TrG5h" value="rhs" />
            <node concept="29HgVG" id="4D$GIrx0Y6j" role="lGtFl">
              <node concept="3NFfHV" id="4D$GIrx0Y6k" role="3NFExx">
                <node concept="3clFbS" id="4D$GIrx0Y6l" role="2VODD2">
                  <node concept="3clFbF" id="4D$GIrx0Y6r" role="3cqZAp">
                    <node concept="2OqwBi" id="4D$GIrx0Y6m" role="3clFbG">
                      <node concept="3TrEf2" id="4D$GIrx0Y6p" role="2OqNvi">
                        <ref role="3Tt5mk" to="hm2y:4rZeNQ6MpKo" resolve="right" />
                      </node>
                      <node concept="30H73N" id="4D$GIrx0Y6q" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2EixSi" id="4D$GIrx0Wmk" role="2EinRH" />
        </node>
      </node>
    </node>
    <node concept="3lhOvk" id="4D$GIrwX3It" role="3lj3bC">
      <ref role="30HIoZ" to="zg3i:6vTVXvbAy8x" resolve="Form" />
      <ref role="3lhOvi" node="4D$GIrwX3Iu" resolve="map_Form" />
    </node>
  </node>
  <node concept="356sEV" id="4D$GIrwX3Iu">
    <property role="TrG5h" value="questionnaire" />
    <property role="3Le9LX" value=".html" />
    <node concept="356WMU" id="4D$GIrwXDWo" role="356KY_">
      <node concept="356sEK" id="4D$GIrwXDWp" role="383Ya9">
        <node concept="356sEF" id="4D$GIrwXDWq" role="356sEH">
          <property role="TrG5h" value="&lt;!DOCTYPE html&gt;" />
        </node>
        <node concept="2EixSi" id="4D$GIrwXDWs" role="2EinRH" />
      </node>
      <node concept="356sEK" id="4D$GIrwXDWt" role="383Ya9">
        <node concept="356sEF" id="4D$GIrwXDWu" role="356sEH">
          <property role="TrG5h" value="&lt;html lang=&quot;en&quot;&gt;" />
        </node>
        <node concept="2EixSi" id="4D$GIrwXDWw" role="2EinRH" />
      </node>
      <node concept="356sEK" id="4D$GIrwXDWx" role="383Ya9">
        <node concept="2EixSi" id="4D$GIrwXDW$" role="2EinRH" />
      </node>
      <node concept="356sEK" id="4D$GIrwXDW_" role="383Ya9">
        <node concept="356sEF" id="4D$GIrwXDWA" role="356sEH">
          <property role="TrG5h" value="&lt;head&gt;" />
        </node>
        <node concept="2EixSi" id="4D$GIrwXDWC" role="2EinRH" />
      </node>
      <node concept="356sEQ" id="4D$GIrwXDWH" role="383Ya9">
        <property role="333NGx" value="  " />
        <node concept="356sEK" id="4D$GIrwXDWD" role="383Ya9">
          <node concept="356sEF" id="4D$GIrwXDWE" role="356sEH">
            <property role="TrG5h" value="&lt;meta charset=&quot;UTF-8&quot;&gt;" />
          </node>
          <node concept="2EixSi" id="4D$GIrwXDWG" role="2EinRH" />
        </node>
        <node concept="356sEK" id="4D$GIrwXDWI" role="383Ya9">
          <node concept="356sEF" id="4D$GIrwXDWJ" role="356sEH">
            <property role="TrG5h" value="&lt;meta name=&quot;viewport&quot; content=&quot;width=device-width, initial-scale=1.0&quot;&gt;" />
          </node>
          <node concept="2EixSi" id="4D$GIrwXDWL" role="2EinRH" />
        </node>
        <node concept="356sEK" id="4D$GIrwXDWM" role="383Ya9">
          <node concept="356sEF" id="4D$GIrwXDWN" role="356sEH">
            <property role="TrG5h" value="&lt;title&gt;Interactive Questionnaire&lt;/title&gt;" />
          </node>
          <node concept="2EixSi" id="4D$GIrwXDWP" role="2EinRH" />
        </node>
        <node concept="356sEK" id="4D$GIrwXDWQ" role="383Ya9">
          <node concept="356sEF" id="4D$GIrwXDWR" role="356sEH">
            <property role="TrG5h" value="&lt;link href=&quot;https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css&quot; rel=&quot;stylesheet&quot;&gt;" />
          </node>
          <node concept="2EixSi" id="4D$GIrwXDWT" role="2EinRH" />
        </node>
      </node>
      <node concept="356sEK" id="4D$GIrwXDWU" role="383Ya9">
        <node concept="356sEF" id="4D$GIrwXDWV" role="356sEH">
          <property role="TrG5h" value="&lt;/head&gt;" />
        </node>
        <node concept="2EixSi" id="4D$GIrwXDWX" role="2EinRH" />
      </node>
      <node concept="356sEK" id="4D$GIrwXDWY" role="383Ya9">
        <node concept="2EixSi" id="4D$GIrwXDX1" role="2EinRH" />
      </node>
      <node concept="356sEK" id="4D$GIrwXDX2" role="383Ya9">
        <node concept="356sEF" id="4D$GIrwXDX3" role="356sEH">
          <property role="TrG5h" value="&lt;body class=&quot;valign-wrapper&quot; onload=&quot;update()&quot;&gt;" />
        </node>
        <node concept="2EixSi" id="4D$GIrwXDX5" role="2EinRH" />
      </node>
      <node concept="356sEQ" id="4D$GIrwXDXa" role="383Ya9">
        <property role="333NGx" value="  " />
        <node concept="356sEK" id="4D$GIrwXDX6" role="383Ya9">
          <node concept="356sEF" id="4D$GIrwXDX7" role="356sEH">
            <property role="TrG5h" value="&lt;div class=&quot;container&quot;&gt;" />
          </node>
          <node concept="2EixSi" id="4D$GIrwXDX9" role="2EinRH" />
        </node>
        <node concept="356sEQ" id="4D$GIrwXDXf" role="383Ya9">
          <property role="333NGx" value="  " />
          <node concept="356sEK" id="4D$GIrwXDXb" role="383Ya9">
            <node concept="356sEF" id="4D$GIrwXDXc" role="356sEH">
              <property role="TrG5h" value="&lt;div class=&quot;row&quot;&gt;" />
            </node>
            <node concept="2EixSi" id="4D$GIrwXDXe" role="2EinRH" />
          </node>
          <node concept="356sEQ" id="4D$GIrwXDXk" role="383Ya9">
            <property role="333NGx" value="  " />
            <node concept="356sEK" id="4D$GIrwXDXg" role="383Ya9">
              <node concept="356sEF" id="4D$GIrwXDXh" role="356sEH">
                <property role="TrG5h" value="&lt;div class=&quot;col s12 m8 offset-m2&quot;&gt;" />
              </node>
              <node concept="2EixSi" id="4D$GIrwXDXj" role="2EinRH" />
            </node>
            <node concept="356sEQ" id="4D$GIrwXDXp" role="383Ya9">
              <property role="333NGx" value="  " />
              <node concept="356sEK" id="4D$GIrwXDXl" role="383Ya9">
                <node concept="356sEF" id="4D$GIrwXDXm" role="356sEH">
                  <property role="TrG5h" value="&lt;div class=&quot;card z-depth-4&quot;&gt;" />
                </node>
                <node concept="2EixSi" id="4D$GIrwXDXo" role="2EinRH" />
              </node>
              <node concept="356sEQ" id="4D$GIrwXDXu" role="383Ya9">
                <property role="333NGx" value="  " />
                <node concept="356sEK" id="4D$GIrwXDXq" role="383Ya9">
                  <node concept="356sEF" id="4D$GIrwXDXr" role="356sEH">
                    <property role="TrG5h" value="&lt;div class=&quot;card-content&quot;&gt;" />
                  </node>
                  <node concept="2EixSi" id="4D$GIrwXDXt" role="2EinRH" />
                </node>
                <node concept="356sEQ" id="4D$GIrwXDXz" role="383Ya9">
                  <property role="333NGx" value="  " />
                  <node concept="356sEK" id="4D$GIrwXDXv" role="383Ya9">
                    <node concept="356sEF" id="4D$GIrwXDXw" role="356sEH">
                      <property role="TrG5h" value="&lt;span class=&quot;card-title center-align&quot;&gt;Box1HouseOwning&lt;/span&gt;" />
                    </node>
                    <node concept="2EixSi" id="4D$GIrwXDXy" role="2EinRH" />
                  </node>
                  <node concept="356sEK" id="4D$GIrwXDX$" role="383Ya9">
                    <node concept="356sEF" id="4D$GIrwXDX_" role="356sEH">
                      <property role="TrG5h" value="&lt;form&gt;" />
                    </node>
                    <node concept="2EixSi" id="4D$GIrwXDXB" role="2EinRH" />
                  </node>
                  <node concept="356sEK" id="4D$GIrwXYl4" role="383Ya9">
                    <node concept="356sEF" id="4D$GIrwXYl5" role="356sEH">
                      <property role="TrG5h" value="QUESTION" />
                    </node>
                    <node concept="2EixSi" id="4D$GIrwXYl6" role="2EinRH" />
                    <node concept="1WS0z7" id="4D$GIrwXYl8" role="lGtFl">
                      <node concept="3JmXsc" id="4D$GIrwXYlb" role="3Jn$fo">
                        <node concept="3clFbS" id="4D$GIrwXYlc" role="2VODD2">
                          <node concept="3clFbF" id="4D$GIrwXYli" role="3cqZAp">
                            <node concept="2OqwBi" id="4D$GIrwXYld" role="3clFbG">
                              <node concept="30H73N" id="4D$GIrwXYlh" role="2Oq$k0" />
                              <node concept="2Rf3mk" id="4D$GIrwYkRG" role="2OqNvi">
                                <node concept="3gmYPX" id="4D$GIrwYnYc" role="1xVPHs">
                                  <node concept="3gn64h" id="4D$GIrwYnYe" role="3gmYPZ">
                                    <ref role="3gnhBz" to="zg3i:6vTVXvbANVN" resolve="Question" />
                                  </node>
                                  <node concept="3gn64h" id="4D$GIrwYo1Z" role="3gmYPZ">
                                    <ref role="3gnhBz" to="zg3i:257K23Pv8vo" resolve="DerivedValue" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1sPUBX" id="4D$GIrwXZ9I" role="lGtFl">
                      <ref role="v9R2y" node="4D$GIrwXZmZ" resolve="Question" />
                    </node>
                  </node>
                  <node concept="356sEK" id="4D$GIrwXE0e" role="383Ya9">
                    <node concept="356sEF" id="4D$GIrwXE0f" role="356sEH">
                      <property role="TrG5h" value="&lt;/form&gt;" />
                    </node>
                    <node concept="2EixSi" id="4D$GIrwXE0h" role="2EinRH" />
                  </node>
                </node>
                <node concept="356sEK" id="4D$GIrwXE0i" role="383Ya9">
                  <node concept="356sEF" id="4D$GIrwXE0j" role="356sEH">
                    <property role="TrG5h" value="&lt;/div&gt;" />
                  </node>
                  <node concept="2EixSi" id="4D$GIrwXE0l" role="2EinRH" />
                </node>
              </node>
              <node concept="356sEK" id="4D$GIrwXE0m" role="383Ya9">
                <node concept="356sEF" id="4D$GIrwXE0n" role="356sEH">
                  <property role="TrG5h" value="&lt;/div&gt;" />
                </node>
                <node concept="2EixSi" id="4D$GIrwXE0p" role="2EinRH" />
              </node>
            </node>
            <node concept="356sEK" id="4D$GIrwXE0q" role="383Ya9">
              <node concept="356sEF" id="4D$GIrwXE0r" role="356sEH">
                <property role="TrG5h" value="&lt;/div&gt;" />
              </node>
              <node concept="2EixSi" id="4D$GIrwXE0t" role="2EinRH" />
            </node>
          </node>
          <node concept="356sEK" id="4D$GIrwXE0u" role="383Ya9">
            <node concept="356sEF" id="4D$GIrwXE0v" role="356sEH">
              <property role="TrG5h" value="&lt;/div&gt;" />
            </node>
            <node concept="2EixSi" id="4D$GIrwXE0x" role="2EinRH" />
          </node>
        </node>
        <node concept="356sEK" id="4D$GIrwXE0y" role="383Ya9">
          <node concept="356sEF" id="4D$GIrwXE0z" role="356sEH">
            <property role="TrG5h" value="&lt;/div&gt;" />
          </node>
          <node concept="2EixSi" id="4D$GIrwXE0_" role="2EinRH" />
        </node>
        <node concept="356sEK" id="4D$GIrwXE0A" role="383Ya9">
          <node concept="2EixSi" id="4D$GIrwXE0D" role="2EinRH" />
        </node>
        <node concept="356sEK" id="4D$GIrwXE0E" role="383Ya9">
          <node concept="356sEF" id="4D$GIrwXE0F" role="356sEH">
            <property role="TrG5h" value="&lt;script&gt;" />
          </node>
          <node concept="2EixSi" id="4D$GIrwXE0H" role="2EinRH" />
        </node>
        <node concept="356sEQ" id="4D$GIrwXE0M" role="383Ya9">
          <property role="333NGx" value="  " />
          <node concept="356sEK" id="4D$GIrwXE0I" role="383Ya9">
            <node concept="356sEF" id="4D$GIrwXE0J" role="356sEH">
              <property role="TrG5h" value="function val(id) {" />
            </node>
            <node concept="2EixSi" id="4D$GIrwXE0L" role="2EinRH" />
          </node>
          <node concept="356sEQ" id="4D$GIrwXE0R" role="383Ya9">
            <property role="333NGx" value="  " />
            <node concept="356sEK" id="4D$GIrwXE0N" role="383Ya9">
              <node concept="356sEF" id="4D$GIrwXE0O" role="356sEH">
                <property role="TrG5h" value="const elem = document.getElementById(id)" />
              </node>
              <node concept="2EixSi" id="4D$GIrwXE0Q" role="2EinRH" />
            </node>
            <node concept="356sEK" id="4D$GIrwXE0S" role="383Ya9">
              <node concept="356sEF" id="4D$GIrwXE0T" role="356sEH">
                <property role="TrG5h" value="if (elem.type === 'checkbox') {" />
              </node>
              <node concept="2EixSi" id="4D$GIrwXE0V" role="2EinRH" />
            </node>
            <node concept="356sEQ" id="4D$GIrwXE10" role="383Ya9">
              <property role="333NGx" value="  " />
              <node concept="356sEK" id="4D$GIrwXE0W" role="383Ya9">
                <node concept="356sEF" id="4D$GIrwXE0X" role="356sEH">
                  <property role="TrG5h" value="return elem.checked;" />
                </node>
                <node concept="2EixSi" id="4D$GIrwXE0Z" role="2EinRH" />
              </node>
            </node>
            <node concept="356sEK" id="4D$GIrwXE11" role="383Ya9">
              <node concept="356sEF" id="4D$GIrwXE12" role="356sEH">
                <property role="TrG5h" value="}" />
              </node>
              <node concept="2EixSi" id="4D$GIrwXE14" role="2EinRH" />
            </node>
            <node concept="356sEK" id="4D$GIrwXE15" role="383Ya9">
              <node concept="356sEF" id="4D$GIrwXE16" role="356sEH">
                <property role="TrG5h" value="else if (elem.type === 'number') {" />
              </node>
              <node concept="2EixSi" id="4D$GIrwXE18" role="2EinRH" />
            </node>
            <node concept="356sEQ" id="4D$GIrwXE1d" role="383Ya9">
              <property role="333NGx" value="  " />
              <node concept="356sEK" id="4D$GIrwXE19" role="383Ya9">
                <node concept="356sEF" id="4D$GIrwXE1a" role="356sEH">
                  <property role="TrG5h" value="return parseFloat(elem.value) || 0;" />
                </node>
                <node concept="2EixSi" id="4D$GIrwXE1c" role="2EinRH" />
              </node>
            </node>
            <node concept="356sEK" id="4D$GIrwXE1e" role="383Ya9">
              <node concept="356sEF" id="4D$GIrwXE1f" role="356sEH">
                <property role="TrG5h" value="}" />
              </node>
              <node concept="2EixSi" id="4D$GIrwXE1h" role="2EinRH" />
            </node>
            <node concept="356sEK" id="4D$GIrwXE1i" role="383Ya9">
              <node concept="356sEF" id="4D$GIrwXE1j" role="356sEH">
                <property role="TrG5h" value="else {" />
              </node>
              <node concept="2EixSi" id="4D$GIrwXE1l" role="2EinRH" />
            </node>
            <node concept="356sEQ" id="4D$GIrwXE1q" role="383Ya9">
              <property role="333NGx" value="  " />
              <node concept="356sEK" id="4D$GIrwXE1m" role="383Ya9">
                <node concept="356sEF" id="4D$GIrwXE1n" role="356sEH">
                  <property role="TrG5h" value="console.log('Unknown value.', elem);" />
                </node>
                <node concept="2EixSi" id="4D$GIrwXE1p" role="2EinRH" />
              </node>
            </node>
            <node concept="356sEK" id="4D$GIrwXE1r" role="383Ya9">
              <node concept="356sEF" id="4D$GIrwXE1s" role="356sEH">
                <property role="TrG5h" value="}" />
              </node>
              <node concept="2EixSi" id="4D$GIrwXE1u" role="2EinRH" />
            </node>
          </node>
          <node concept="356sEK" id="4D$GIrwXE1v" role="383Ya9">
            <node concept="356sEF" id="4D$GIrwXE1w" role="356sEH">
              <property role="TrG5h" value="}" />
            </node>
            <node concept="2EixSi" id="4D$GIrwXE1y" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4D$GIrwXE1z" role="383Ya9">
            <node concept="2EixSi" id="4D$GIrwXE1A" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4D$GIrwXE1B" role="383Ya9">
            <node concept="356sEF" id="4D$GIrwXE1C" role="356sEH">
              <property role="TrG5h" value="function showIf(id, condition) {" />
            </node>
            <node concept="2EixSi" id="4D$GIrwXE1E" role="2EinRH" />
          </node>
          <node concept="356sEQ" id="4D$GIrwXE1J" role="383Ya9">
            <property role="333NGx" value="  " />
            <node concept="356sEK" id="4D$GIrwXE1F" role="383Ya9">
              <node concept="356sEF" id="4D$GIrwXE1G" role="356sEH">
                <property role="TrG5h" value="var container_elm = document.getElementById(id + '_container');" />
              </node>
              <node concept="2EixSi" id="4D$GIrwXE1I" role="2EinRH" />
            </node>
            <node concept="356sEK" id="4D$GIrwXE1K" role="383Ya9">
              <node concept="356sEF" id="4D$GIrwXE1L" role="356sEH">
                <property role="TrG5h" value="container_elm.style.display = condition ? 'block' : 'none';" />
              </node>
              <node concept="2EixSi" id="4D$GIrwXE1N" role="2EinRH" />
            </node>
          </node>
          <node concept="356sEK" id="4D$GIrwXE1O" role="383Ya9">
            <node concept="356sEF" id="4D$GIrwXE1P" role="356sEH">
              <property role="TrG5h" value="}" />
            </node>
            <node concept="2EixSi" id="4D$GIrwXE1R" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4D$GIrwXE1S" role="383Ya9">
            <node concept="2EixSi" id="4D$GIrwXE1V" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4D$GIrwXE1W" role="383Ya9">
            <node concept="356sEF" id="4D$GIrwXE1X" role="356sEH">
              <property role="TrG5h" value="function updateValue(id, value) {" />
            </node>
            <node concept="2EixSi" id="4D$GIrwXE1Z" role="2EinRH" />
          </node>
          <node concept="356sEQ" id="4D$GIrwXE24" role="383Ya9">
            <property role="333NGx" value="  " />
            <node concept="356sEK" id="4D$GIrwXE20" role="383Ya9">
              <node concept="356sEF" id="4D$GIrwXE21" role="356sEH">
                <property role="TrG5h" value="var elm = document.getElementById(id);" />
              </node>
              <node concept="2EixSi" id="4D$GIrwXE23" role="2EinRH" />
            </node>
            <node concept="356sEK" id="4D$GIrwXE25" role="383Ya9">
              <node concept="356sEF" id="4D$GIrwXE26" role="356sEH">
                <property role="TrG5h" value="elm.value = value;" />
              </node>
              <node concept="2EixSi" id="4D$GIrwXE28" role="2EinRH" />
            </node>
          </node>
          <node concept="356sEK" id="4D$GIrwXE29" role="383Ya9">
            <node concept="356sEF" id="4D$GIrwXE2a" role="356sEH">
              <property role="TrG5h" value="}" />
            </node>
            <node concept="2EixSi" id="4D$GIrwXE2c" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4D$GIrwXE2d" role="383Ya9">
            <node concept="2EixSi" id="4D$GIrwXE2g" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4D$GIrwXE2h" role="383Ya9">
            <node concept="356sEF" id="4D$GIrwXE2i" role="356sEH">
              <property role="TrG5h" value="function update() {" />
            </node>
            <node concept="2EixSi" id="4D$GIrwXE2k" role="2EinRH" />
          </node>
          <node concept="356sEQ" id="4D$GIrwXE2p" role="383Ya9">
            <property role="333NGx" value="  " />
            <node concept="356sEK" id="4D$GIrwXE2l" role="383Ya9">
              <node concept="356sEF" id="4D$GIrwXE2m" role="356sEH">
                <property role="TrG5h" value="showIf('hasSoldHouse', true)" />
              </node>
              <node concept="2EixSi" id="4D$GIrwXE2o" role="2EinRH" />
              <node concept="1WS0z7" id="4D$GIrwZ9s2" role="lGtFl">
                <node concept="3JmXsc" id="4D$GIrwZ9s3" role="3Jn$fo">
                  <node concept="3clFbS" id="4D$GIrwZ9s4" role="2VODD2">
                    <node concept="3clFbF" id="4D$GIrwZ9zL" role="3cqZAp">
                      <node concept="2OqwBi" id="4D$GIrwZ9zN" role="3clFbG">
                        <node concept="30H73N" id="4D$GIrwZ9zO" role="2Oq$k0" />
                        <node concept="2Rf3mk" id="4D$GIrwZ9zP" role="2OqNvi">
                          <node concept="3gmYPX" id="4D$GIrwZ9zQ" role="1xVPHs">
                            <node concept="3gn64h" id="4D$GIrwZ9zR" role="3gmYPZ">
                              <ref role="3gnhBz" to="zg3i:6vTVXvbANVN" resolve="Question" />
                            </node>
                            <node concept="3gn64h" id="4D$GIrwZ9zS" role="3gmYPZ">
                              <ref role="3gnhBz" to="zg3i:257K23Pv8vo" resolve="DerivedValue" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1sPUBX" id="4D$GIrwZagZ" role="lGtFl">
                <ref role="v9R2y" node="4D$GIrwZ9rU" resolve="QuestionShow" />
              </node>
            </node>
            <node concept="356sEK" id="4D$GIrwXE2I" role="383Ya9">
              <node concept="2EixSi" id="4D$GIrwXE2L" role="2EinRH" />
            </node>
            <node concept="356sEK" id="4D$GIrwXE2M" role="383Ya9">
              <node concept="356sEF" id="4D$GIrwXE2N" role="356sEH">
                <property role="TrG5h" value="updateValue('" />
              </node>
              <node concept="356sEF" id="4D$GIrx0FzJ" role="356sEH">
                <property role="TrG5h" value="valueResidue" />
                <node concept="17Uvod" id="4D$GIrx0FM0" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="4D$GIrx0FM1" role="3zH0cK">
                    <node concept="3clFbS" id="4D$GIrx0FM2" role="2VODD2">
                      <node concept="3clFbF" id="4D$GIrx0FWr" role="3cqZAp">
                        <node concept="2OqwBi" id="4D$GIrx0Gym" role="3clFbG">
                          <node concept="30H73N" id="4D$GIrx0FWq" role="2Oq$k0" />
                          <node concept="3TrcHB" id="4D$GIrx0HQV" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="356sEF" id="4D$GIrx0FzK" role="356sEH">
                <property role="TrG5h" value="', " />
              </node>
              <node concept="356sEF" id="4D$GIrx0Ike" role="356sEH">
                <property role="TrG5h" value="val('sellingPrice') - val('privateDebt')" />
                <node concept="29HgVG" id="4D$GIrx0ICO" role="lGtFl">
                  <node concept="3NFfHV" id="4D$GIrx0ICP" role="3NFExx">
                    <node concept="3clFbS" id="4D$GIrx0ICQ" role="2VODD2">
                      <node concept="3clFbF" id="4D$GIrx0ICW" role="3cqZAp">
                        <node concept="2OqwBi" id="4D$GIrx0ICR" role="3clFbG">
                          <node concept="30H73N" id="4D$GIrx0ICV" role="2Oq$k0" />
                          <node concept="3TrEf2" id="4D$GIrx0JFf" role="2OqNvi">
                            <ref role="3Tt5mk" to="zg3i:257K23Pv8vu" resolve="value" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="356sEF" id="4D$GIrx0Ikf" role="356sEH">
                <property role="TrG5h" value=")" />
              </node>
              <node concept="2EixSi" id="4D$GIrwXE2P" role="2EinRH" />
              <node concept="1WS0z7" id="4D$GIrx0miw" role="lGtFl">
                <node concept="3JmXsc" id="4D$GIrx0miz" role="3Jn$fo">
                  <node concept="3clFbS" id="4D$GIrx0mi$" role="2VODD2">
                    <node concept="3clFbF" id="4D$GIrx0n5e" role="3cqZAp">
                      <node concept="2OqwBi" id="4D$GIrx0nsy" role="3clFbG">
                        <node concept="30H73N" id="4D$GIrx0n5d" role="2Oq$k0" />
                        <node concept="2Rf3mk" id="4D$GIrx0o0V" role="2OqNvi">
                          <node concept="1xMEDy" id="4D$GIrx0o0X" role="1xVPHs">
                            <node concept="chp4Y" id="4D$GIrx0ojG" role="ri$Ld">
                              <ref role="cht4Q" to="zg3i:257K23Pv8vo" resolve="DerivedValue" />
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
          <node concept="356sEK" id="4D$GIrwXE2Q" role="383Ya9">
            <node concept="356sEF" id="4D$GIrwXE2R" role="356sEH">
              <property role="TrG5h" value="}" />
            </node>
            <node concept="2EixSi" id="4D$GIrwXE2T" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4D$GIrwXE2U" role="383Ya9">
            <node concept="2EixSi" id="4D$GIrwXE2X" role="2EinRH" />
          </node>
        </node>
        <node concept="356sEK" id="4D$GIrwXE2Y" role="383Ya9">
          <node concept="356sEF" id="4D$GIrwXE2Z" role="356sEH">
            <property role="TrG5h" value="&lt;/script&gt;" />
          </node>
          <node concept="2EixSi" id="4D$GIrwXE31" role="2EinRH" />
        </node>
        <node concept="356sEK" id="4D$GIrwXE32" role="383Ya9">
          <node concept="356sEF" id="4D$GIrwXE33" role="356sEH">
            <property role="TrG5h" value="&lt;script src=&quot;https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js&quot;&gt;&lt;/script&gt;" />
          </node>
          <node concept="2EixSi" id="4D$GIrwXE35" role="2EinRH" />
        </node>
      </node>
      <node concept="356sEK" id="4D$GIrwXE36" role="383Ya9">
        <node concept="356sEF" id="4D$GIrwXE37" role="356sEH">
          <property role="TrG5h" value="&lt;/body&gt;" />
        </node>
        <node concept="2EixSi" id="4D$GIrwXE39" role="2EinRH" />
      </node>
      <node concept="356sEK" id="4D$GIrwXE3a" role="383Ya9">
        <node concept="2EixSi" id="4D$GIrwXE3d" role="2EinRH" />
      </node>
      <node concept="356sEK" id="4D$GIrwXE3e" role="383Ya9">
        <node concept="356sEF" id="4D$GIrwXE3f" role="356sEH">
          <property role="TrG5h" value="&lt;/html&gt;" />
        </node>
        <node concept="2EixSi" id="4D$GIrwXE3h" role="2EinRH" />
      </node>
    </node>
    <node concept="n94m4" id="4D$GIrwX3Iw" role="lGtFl">
      <ref role="n9lRv" to="zg3i:6vTVXvbAy8x" resolve="Form" />
    </node>
    <node concept="17Uvod" id="4D$GIrwX3Ix" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="4D$GIrwX3Iy" role="3zH0cK">
        <node concept="3clFbS" id="4D$GIrwX3Iz" role="2VODD2">
          <node concept="3clFbF" id="4D$GIrwXc3N" role="3cqZAp">
            <node concept="2OqwBi" id="4D$GIrwXcz7" role="3clFbG">
              <node concept="30H73N" id="4D$GIrwXc3M" role="2Oq$k0" />
              <node concept="3TrcHB" id="4D$GIrwXetp" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="jVnub" id="4D$GIrwXZmZ">
    <property role="TrG5h" value="Question" />
    <node concept="3aamgX" id="4D$GIrwYbT0" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="zg3i:6vTVXvbANVN" resolve="Question" />
      <node concept="gft3U" id="4D$GIrwYiPu" role="1lVwrX">
        <node concept="356WMU" id="4D$GIrwYGsh" role="gfFT$">
          <node concept="356sEK" id="4D$GIrwYGsi" role="383Ya9">
            <node concept="356sEF" id="4D$GIrwYGsj" role="356sEH">
              <property role="TrG5h" value="&lt;p id=&quot;" />
            </node>
            <node concept="356sEF" id="4D$GIrwYGsH" role="356sEH">
              <property role="TrG5h" value="hasSoldHouse" />
              <node concept="17Uvod" id="4D$GIrwYGsJ" role="lGtFl">
                <property role="2qtEX9" value="name" />
                <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                <node concept="3zFVjK" id="4D$GIrwYGsK" role="3zH0cK">
                  <node concept="3clFbS" id="4D$GIrwYGsL" role="2VODD2">
                    <node concept="3clFbF" id="4D$GIrwYGGV" role="3cqZAp">
                      <node concept="2OqwBi" id="4D$GIrwYHdp" role="3clFbG">
                        <node concept="30H73N" id="4D$GIrwYGGU" role="2Oq$k0" />
                        <node concept="3TrcHB" id="4D$GIrwYHwr" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="356sEF" id="4D$GIrwYGsI" role="356sEH">
              <property role="TrG5h" value="_container&quot; style=&quot;display: none;&quot;&gt;" />
            </node>
            <node concept="2EixSi" id="4D$GIrwYGsl" role="2EinRH" />
          </node>
          <node concept="356sEQ" id="4D$GIrwYGsr" role="383Ya9">
            <property role="333NGx" value="  " />
            <node concept="356sEK" id="4D$GIrwYGsn" role="383Ya9">
              <node concept="356sEF" id="4D$GIrwYGso" role="356sEH">
                <property role="TrG5h" value="&lt;label&gt;" />
              </node>
              <node concept="2EixSi" id="4D$GIrwYGsq" role="2EinRH" />
            </node>
            <node concept="356sEQ" id="4D$GIrwYGsw" role="383Ya9">
              <property role="333NGx" value="  " />
              <node concept="356sEK" id="4D$GIrwYGss" role="383Ya9">
                <node concept="356sEF" id="4D$GIrwYGst" role="356sEH">
                  <property role="TrG5h" value="&lt;input id=&quot;" />
                </node>
                <node concept="356sEF" id="4D$GIrwYHPn" role="356sEH">
                  <property role="TrG5h" value="hasSoldHouse" />
                  <node concept="17Uvod" id="4D$GIrwYHPp" role="lGtFl">
                    <property role="2qtEX9" value="name" />
                    <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                    <node concept="3zFVjK" id="4D$GIrwYHPs" role="3zH0cK">
                      <node concept="3clFbS" id="4D$GIrwYHPt" role="2VODD2">
                        <node concept="3clFbF" id="4D$GIrwYHPz" role="3cqZAp">
                          <node concept="2OqwBi" id="4D$GIrwYHPu" role="3clFbG">
                            <node concept="3TrcHB" id="4D$GIrwYHPx" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                            <node concept="30H73N" id="4D$GIrwYHPy" role="2Oq$k0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="356sEF" id="4D$GIrwYHPo" role="356sEH">
                  <property role="TrG5h" value="&quot; type=&quot;checkbox&quot; oninput=&quot;update()&quot; /&gt;" />
                </node>
                <node concept="2EixSi" id="4D$GIrwYGsv" role="2EinRH" />
              </node>
              <node concept="356sEK" id="4D$GIrwYGsx" role="383Ya9">
                <node concept="356sEF" id="4D$GIrwYGsy" role="356sEH">
                  <property role="TrG5h" value="&lt;span&gt;" />
                </node>
                <node concept="356sEF" id="4D$GIrwYHQE" role="356sEH">
                  <property role="TrG5h" value="Did you sell a house in 2010?" />
                  <node concept="17Uvod" id="4D$GIrwYHQG" role="lGtFl">
                    <property role="2qtEX9" value="name" />
                    <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                    <node concept="3zFVjK" id="4D$GIrwYHQH" role="3zH0cK">
                      <node concept="3clFbS" id="4D$GIrwYHQI" role="2VODD2">
                        <node concept="3clFbF" id="4D$GIrwYHRb" role="3cqZAp">
                          <node concept="2OqwBi" id="4D$GIrwYIbX" role="3clFbG">
                            <node concept="2OqwBi" id="4D$GIrwYHRG" role="2Oq$k0">
                              <node concept="30H73N" id="4D$GIrwYHRa" role="2Oq$k0" />
                              <node concept="3TrEf2" id="4D$GIrwYHYL" role="2OqNvi">
                                <ref role="3Tt5mk" to="zg3i:6vTVXvbANVS" />
                              </node>
                            </node>
                            <node concept="2qgKlT" id="4D$GIrwYIDZ" role="2OqNvi">
                              <ref role="37wK5l" to="tbr6:3Q5enzfMT4l" resolve="asTextString" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="356sEF" id="4D$GIrwYHQF" role="356sEH">
                  <property role="TrG5h" value="&lt;/span&gt;" />
                </node>
                <node concept="2EixSi" id="4D$GIrwYGs$" role="2EinRH" />
              </node>
            </node>
            <node concept="356sEK" id="4D$GIrwYGs_" role="383Ya9">
              <node concept="356sEF" id="4D$GIrwYGsA" role="356sEH">
                <property role="TrG5h" value="&lt;/label&gt;" />
              </node>
              <node concept="2EixSi" id="4D$GIrwYGsC" role="2EinRH" />
            </node>
          </node>
          <node concept="356sEK" id="4D$GIrwYGsD" role="383Ya9">
            <node concept="356sEF" id="4D$GIrwYGsE" role="356sEH">
              <property role="TrG5h" value="&lt;/p&gt;" />
            </node>
            <node concept="2EixSi" id="4D$GIrwYGsG" role="2EinRH" />
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="4D$GIrwYiPz" role="30HLyM">
        <node concept="3clFbS" id="4D$GIrwYiP$" role="2VODD2">
          <node concept="3clFbF" id="4D$GIrwYyww" role="3cqZAp">
            <node concept="2OqwBi" id="4D$GIrwYxC6" role="3clFbG">
              <node concept="2OqwBi" id="4D$GIrwYwrP" role="2Oq$k0">
                <node concept="2OqwBi" id="4D$GIrwYvCH" role="2Oq$k0">
                  <node concept="30H73N" id="4D$GIrwYvrv" role="2Oq$k0" />
                  <node concept="3TrEf2" id="4D$GIrwYw9v" role="2OqNvi">
                    <ref role="3Tt5mk" to="zg3i:257K23PtZmx" />
                  </node>
                </node>
                <node concept="2yIwOk" id="4D$GIrwYx0$" role="2OqNvi" />
              </node>
              <node concept="3O6GUB" id="4D$GIrwYyKN" role="2OqNvi">
                <node concept="chp4Y" id="4D$GIrwYyLW" role="3QVz_e">
                  <ref role="cht4Q" to="5qo5:6sdnDbSlaon" resolve="BooleanType" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="4D$GIrwY_Mj" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="zg3i:6vTVXvbANVN" resolve="Question" />
      <node concept="gft3U" id="4D$GIrwY_Mk" role="1lVwrX">
        <node concept="356WMU" id="4D$GIrwYRWJ" role="gfFT$">
          <node concept="356sEK" id="4D$GIrwYRWK" role="383Ya9">
            <node concept="356sEF" id="4D$GIrwYRWL" role="356sEH">
              <property role="TrG5h" value="&lt;div class=&quot;input-field&quot; id=&quot;" />
            </node>
            <node concept="356sEF" id="4D$GIrwYRX1" role="356sEH">
              <property role="TrG5h" value="sellingPrice" />
              <node concept="17Uvod" id="4D$GIrwYRX3" role="lGtFl">
                <property role="2qtEX9" value="name" />
                <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                <node concept="3zFVjK" id="4D$GIrwYRX6" role="3zH0cK">
                  <node concept="3clFbS" id="4D$GIrwYRX7" role="2VODD2">
                    <node concept="3clFbF" id="4D$GIrwYRXd" role="3cqZAp">
                      <node concept="2OqwBi" id="4D$GIrwYRX8" role="3clFbG">
                        <node concept="3TrcHB" id="4D$GIrwYRXb" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                        <node concept="30H73N" id="4D$GIrwYRXc" role="2Oq$k0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="356sEF" id="4D$GIrwYRX2" role="356sEH">
              <property role="TrG5h" value="_container&quot; style=&quot;display: none;&quot;&gt;" />
            </node>
            <node concept="2EixSi" id="4D$GIrwYRWN" role="2EinRH" />
          </node>
          <node concept="356sEQ" id="4D$GIrwYRWS" role="383Ya9">
            <property role="333NGx" value="  " />
            <node concept="356sEK" id="4D$GIrwYRWO" role="383Ya9">
              <node concept="356sEF" id="4D$GIrwYRWP" role="356sEH">
                <property role="TrG5h" value="&lt;input placeholder=&quot;&quot; id=&quot;" />
              </node>
              <node concept="356sEF" id="4D$GIrwYSh$" role="356sEH">
                <property role="TrG5h" value="sellingPrice" />
                <node concept="17Uvod" id="4D$GIrwYShA" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="4D$GIrwYShD" role="3zH0cK">
                    <node concept="3clFbS" id="4D$GIrwYShE" role="2VODD2">
                      <node concept="3clFbF" id="4D$GIrwYShK" role="3cqZAp">
                        <node concept="2OqwBi" id="4D$GIrwYShF" role="3clFbG">
                          <node concept="3TrcHB" id="4D$GIrwYShI" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                          <node concept="30H73N" id="4D$GIrwYShJ" role="2Oq$k0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="356sEF" id="4D$GIrwYSh_" role="356sEH">
                <property role="TrG5h" value="&quot; type=&quot;number&quot; oninput=&quot;update()&quot; /&gt;" />
              </node>
              <node concept="2EixSi" id="4D$GIrwYRWR" role="2EinRH" />
            </node>
            <node concept="356sEK" id="4D$GIrwYRWT" role="383Ya9">
              <node concept="356sEF" id="4D$GIrwYRWU" role="356sEH">
                <property role="TrG5h" value="&lt;label for=&quot;sellingPrice&quot;&gt;" />
              </node>
              <node concept="356sEF" id="4D$GIrwYSjT" role="356sEH">
                <property role="TrG5h" value="Price the house was sold for" />
                <node concept="17Uvod" id="4D$GIrwYSjV" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="4D$GIrwYSjW" role="3zH0cK">
                    <node concept="3clFbS" id="4D$GIrwYSjX" role="2VODD2">
                      <node concept="3clFbF" id="4D$GIrwYSkq" role="3cqZAp">
                        <node concept="2OqwBi" id="4D$GIrwYTlF" role="3clFbG">
                          <node concept="2OqwBi" id="4D$GIrwYSOS" role="2Oq$k0">
                            <node concept="30H73N" id="4D$GIrwYSkp" role="2Oq$k0" />
                            <node concept="3TrEf2" id="4D$GIrwYT8v" role="2OqNvi">
                              <ref role="3Tt5mk" to="zg3i:6vTVXvbANVS" resolve="label" />
                            </node>
                          </node>
                          <node concept="2qgKlT" id="4D$GIrwYTyz" role="2OqNvi">
                            <ref role="37wK5l" to="tbr6:3Q5enzfMT4l" resolve="asTextString" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="356sEF" id="4D$GIrwYSjU" role="356sEH">
                <property role="TrG5h" value=":&lt;/label&gt;" />
              </node>
              <node concept="2EixSi" id="4D$GIrwYRWW" role="2EinRH" />
            </node>
          </node>
          <node concept="356sEK" id="4D$GIrwYRWX" role="383Ya9">
            <node concept="356sEF" id="4D$GIrwYRWY" role="356sEH">
              <property role="TrG5h" value="&lt;/div&gt;" />
            </node>
            <node concept="2EixSi" id="4D$GIrwYRX0" role="2EinRH" />
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="4D$GIrwY_Mp" role="30HLyM">
        <node concept="3clFbS" id="4D$GIrwY_Mq" role="2VODD2">
          <node concept="3clFbF" id="4D$GIrwY_Mr" role="3cqZAp">
            <node concept="2OqwBi" id="4D$GIrwY_Ms" role="3clFbG">
              <node concept="2OqwBi" id="4D$GIrwY_Mt" role="2Oq$k0">
                <node concept="2OqwBi" id="4D$GIrwY_Mu" role="2Oq$k0">
                  <node concept="30H73N" id="4D$GIrwY_Mv" role="2Oq$k0" />
                  <node concept="3TrEf2" id="4D$GIrwY_Mw" role="2OqNvi">
                    <ref role="3Tt5mk" to="zg3i:257K23PtZmx" resolve="type" />
                  </node>
                </node>
                <node concept="2yIwOk" id="4D$GIrwY_Mx" role="2OqNvi" />
              </node>
              <node concept="3O6GUB" id="4D$GIrwY_My" role="2OqNvi">
                <node concept="chp4Y" id="4D$GIrwY_Mz" role="3QVz_e">
                  <ref role="cht4Q" to="zg3i:257K23Pv1P0" resolve="Money" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="4D$GIrwYCPw" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="zg3i:257K23Pv8vo" resolve="DerivedValue" />
      <node concept="gft3U" id="4D$GIrwYCPx" role="1lVwrX">
        <node concept="356WMU" id="4D$GIrwYYga" role="gfFT$">
          <node concept="356sEK" id="4D$GIrwYYgb" role="383Ya9">
            <node concept="356sEF" id="4D$GIrwYYgc" role="356sEH">
              <property role="TrG5h" value="&lt;div class=&quot;input-field&quot; id=&quot;" />
            </node>
            <node concept="356sEF" id="4D$GIrwYYgs" role="356sEH">
              <property role="TrG5h" value="valueResidue" />
              <node concept="17Uvod" id="4D$GIrwYYgu" role="lGtFl">
                <property role="2qtEX9" value="name" />
                <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                <node concept="3zFVjK" id="4D$GIrwYYgx" role="3zH0cK">
                  <node concept="3clFbS" id="4D$GIrwYYgy" role="2VODD2">
                    <node concept="3clFbF" id="4D$GIrwYYgC" role="3cqZAp">
                      <node concept="2OqwBi" id="4D$GIrwYYgz" role="3clFbG">
                        <node concept="3TrcHB" id="4D$GIrwYYgA" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                        <node concept="30H73N" id="4D$GIrwYYgB" role="2Oq$k0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="356sEF" id="4D$GIrwYYgt" role="356sEH">
              <property role="TrG5h" value="_container&quot; style=&quot;display: none;&quot;&gt;" />
            </node>
            <node concept="2EixSi" id="4D$GIrwYYge" role="2EinRH" />
          </node>
          <node concept="356sEQ" id="4D$GIrwYYgj" role="383Ya9">
            <property role="333NGx" value="  " />
            <node concept="356sEK" id="4D$GIrwYYgf" role="383Ya9">
              <node concept="356sEF" id="4D$GIrwYYgg" role="356sEH">
                <property role="TrG5h" value="&lt;input placeholder=&quot;&quot; id=&quot;" />
              </node>
              <node concept="356sEF" id="4D$GIrwYYA1" role="356sEH">
                <property role="TrG5h" value="valueResidue" />
                <node concept="17Uvod" id="4D$GIrwYYA3" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="4D$GIrwYYA6" role="3zH0cK">
                    <node concept="3clFbS" id="4D$GIrwYYA7" role="2VODD2">
                      <node concept="3clFbF" id="4D$GIrwYYAd" role="3cqZAp">
                        <node concept="2OqwBi" id="4D$GIrwYYA8" role="3clFbG">
                          <node concept="3TrcHB" id="4D$GIrwYYAb" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                          <node concept="30H73N" id="4D$GIrwYYAc" role="2Oq$k0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="356sEF" id="4D$GIrwYYA2" role="356sEH">
                <property role="TrG5h" value="&quot; type=&quot;number&quot; readonly&gt;" />
              </node>
              <node concept="2EixSi" id="4D$GIrwYYgi" role="2EinRH" />
            </node>
            <node concept="356sEK" id="4D$GIrwYYgk" role="383Ya9">
              <node concept="356sEF" id="4D$GIrwYYgl" role="356sEH">
                <property role="TrG5h" value="&lt;label for=&quot;valueResidue&quot;&gt;" />
              </node>
              <node concept="356sEF" id="4D$GIrwYYDo" role="356sEH">
                <property role="TrG5h" value="Value residue" />
                <node concept="17Uvod" id="4D$GIrwYYDq" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="4D$GIrwYYDr" role="3zH0cK">
                    <node concept="3clFbS" id="4D$GIrwYYDs" role="2VODD2">
                      <node concept="3clFbF" id="4D$GIrwYYDT" role="3cqZAp">
                        <node concept="2OqwBi" id="4D$GIrwYZFJ" role="3clFbG">
                          <node concept="2OqwBi" id="4D$GIrwYZan" role="2Oq$k0">
                            <node concept="30H73N" id="4D$GIrwYYDS" role="2Oq$k0" />
                            <node concept="3TrEf2" id="4D$GIrwYZuz" role="2OqNvi">
                              <ref role="3Tt5mk" to="zg3i:257K23Pv8vs" resolve="label" />
                            </node>
                          </node>
                          <node concept="2qgKlT" id="4D$GIrwYZSB" role="2OqNvi">
                            <ref role="37wK5l" to="tbr6:3Q5enzfMT4l" resolve="asTextString" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="356sEF" id="4D$GIrwYYDp" role="356sEH">
                <property role="TrG5h" value=":&lt;/label&gt;" />
              </node>
              <node concept="2EixSi" id="4D$GIrwYYgn" role="2EinRH" />
            </node>
          </node>
          <node concept="356sEK" id="4D$GIrwYYgo" role="383Ya9">
            <node concept="356sEF" id="4D$GIrwYYgp" role="356sEH">
              <property role="TrG5h" value="&lt;/div&gt;" />
            </node>
            <node concept="2EixSi" id="4D$GIrwYYgr" role="2EinRH" />
          </node>
        </node>
      </node>
    </node>
    <node concept="j$LIH" id="4D$GIrwYaOE" role="jxRDz">
      <node concept="1lLz0L" id="4D$GIrwYaOF" role="1lHHLF">
        <property role="1lMjX7" value="h1lM37o/error" />
        <property role="1lLB17" value="Unhandled question case" />
      </node>
    </node>
  </node>
  <node concept="jVnub" id="4D$GIrwZ9rU">
    <property role="TrG5h" value="QuestionShow" />
    <node concept="j$LIH" id="4D$GIrwZakA" role="jxRDz">
      <node concept="1lLz0L" id="4D$GIrwZakC" role="1lHHLF">
        <property role="1lLB17" value="Unhandled case in QuestionShow" />
        <property role="1lMjX7" value="h1lM37o/error" />
      </node>
    </node>
    <node concept="3aamgX" id="4D$GIrwZe5U" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="zg3i:6vTVXvbANVN" resolve="Question" />
      <node concept="gft3U" id="4D$GIrwZipu" role="1lVwrX">
        <node concept="356sEK" id="4D$GIrwZiG1" role="gfFT$">
          <node concept="356sEF" id="4D$GIrwZiG2" role="356sEH">
            <property role="TrG5h" value="showIf('" />
          </node>
          <node concept="356sEF" id="4D$GIrwZiG4" role="356sEH">
            <property role="TrG5h" value="questionId" />
            <node concept="17Uvod" id="4D$GIrwZiG6" role="lGtFl">
              <property role="2qtEX9" value="name" />
              <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
              <node concept="3zFVjK" id="4D$GIrwZiG9" role="3zH0cK">
                <node concept="3clFbS" id="4D$GIrwZiGa" role="2VODD2">
                  <node concept="3clFbF" id="4D$GIrwZiGg" role="3cqZAp">
                    <node concept="2OqwBi" id="4D$GIrwZiGb" role="3clFbG">
                      <node concept="3TrcHB" id="4D$GIrwZiGe" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                      <node concept="30H73N" id="4D$GIrwZiGf" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEF" id="4D$GIrwZiG5" role="356sEH">
            <property role="TrG5h" value="', true)" />
          </node>
          <node concept="2EixSi" id="4D$GIrwZiG3" role="2EinRH" />
        </node>
      </node>
      <node concept="30G5F_" id="4D$GIrwZe5W" role="30HLyM">
        <node concept="3clFbS" id="4D$GIrwZe5X" role="2VODD2">
          <node concept="3SKdUt" id="4D$GIrwZjnG" role="3cqZAp">
            <node concept="1PaTwC" id="4D$GIrwZjnH" role="1aUNEU">
              <node concept="3oM_SD" id="4D$GIrwZjoB" role="1PaTwD">
                <property role="3oM_SC" value="No" />
              </node>
              <node concept="3oM_SD" id="4D$GIrwZjrm" role="1PaTwD">
                <property role="3oM_SC" value="active" />
              </node>
              <node concept="3oM_SD" id="4D$GIrwZjrC" role="1PaTwD">
                <property role="3oM_SC" value="conditions," />
              </node>
              <node concept="3oM_SD" id="4D$GIrwZjrP" role="1PaTwD">
                <property role="3oM_SC" value="not" />
              </node>
              <node concept="3oM_SD" id="4D$GIrwZjrU" role="1PaTwD">
                <property role="3oM_SC" value="contained" />
              </node>
              <node concept="3oM_SD" id="4D$GIrwZjsp" role="1PaTwD">
                <property role="3oM_SC" value="in" />
              </node>
              <node concept="3oM_SD" id="4D$GIrwZjst" role="1PaTwD">
                <property role="3oM_SC" value="conditional" />
              </node>
              <node concept="3oM_SD" id="4D$GIrwZjti" role="1PaTwD">
                <property role="3oM_SC" value="block" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4D$GIrwZeju" role="3cqZAp">
            <node concept="2OqwBi" id="4D$GIrwZi6N" role="3clFbG">
              <node concept="2OqwBi" id="4D$GIrwZeLj" role="2Oq$k0">
                <node concept="30H73N" id="4D$GIrwZejt" role="2Oq$k0" />
                <node concept="2Xjw5R" id="4D$GIrwZhQo" role="2OqNvi">
                  <node concept="1xMEDy" id="4D$GIrwZhQq" role="1xVPHs">
                    <node concept="chp4Y" id="4D$GIrwZhSX" role="ri$Ld">
                      <ref role="cht4Q" to="zg3i:257K23PuhQr" resolve="ConditionalBlock" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3w_OXm" id="4D$GIrwZikn" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="4D$GIrwZiZ7" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="zg3i:6vTVXvbANVN" resolve="Question" />
      <node concept="gft3U" id="4D$GIrwZiZ8" role="1lVwrX">
        <node concept="356sEK" id="4D$GIrwZiZ9" role="gfFT$">
          <node concept="356sEF" id="4D$GIrwZiZa" role="356sEH">
            <property role="TrG5h" value="showIf('" />
          </node>
          <node concept="356sEF" id="4D$GIrwZiZb" role="356sEH">
            <property role="TrG5h" value="questionId" />
            <node concept="17Uvod" id="4D$GIrwZiZc" role="lGtFl">
              <property role="2qtEX9" value="name" />
              <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
              <node concept="3zFVjK" id="4D$GIrwZiZd" role="3zH0cK">
                <node concept="3clFbS" id="4D$GIrwZiZe" role="2VODD2">
                  <node concept="3clFbF" id="4D$GIrwZiZf" role="3cqZAp">
                    <node concept="2OqwBi" id="4D$GIrwZiZg" role="3clFbG">
                      <node concept="3TrcHB" id="4D$GIrwZiZh" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                      <node concept="30H73N" id="4D$GIrwZiZi" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEF" id="4D$GIrwZiZj" role="356sEH">
            <property role="TrG5h" value="', " />
          </node>
          <node concept="356sEF" id="4D$GIrwZjNf" role="356sEH">
            <property role="TrG5h" value="cond" />
            <node concept="29HgVG" id="4D$GIrwZkhM" role="lGtFl">
              <node concept="3NFfHV" id="4D$GIrwZkhN" role="3NFExx">
                <node concept="3clFbS" id="4D$GIrwZkhO" role="2VODD2">
                  <node concept="3clFbF" id="4D$GIrwZkjX" role="3cqZAp">
                    <node concept="2OqwBi" id="4D$GIrwZzZs" role="3clFbG">
                      <node concept="2OqwBi" id="4D$GIrwZk$x" role="2Oq$k0">
                        <node concept="30H73N" id="4D$GIrwZkjW" role="2Oq$k0" />
                        <node concept="2Xjw5R" id="4D$GIrwZkSe" role="2OqNvi">
                          <node concept="1xMEDy" id="4D$GIrwZkSg" role="1xVPHs">
                            <node concept="chp4Y" id="4D$GIrwZzLh" role="ri$Ld">
                              <ref role="cht4Q" to="zg3i:257K23PuhQr" resolve="ConditionalBlock" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3TrEf2" id="4D$GIrwZ$bu" role="2OqNvi">
                        <ref role="3Tt5mk" to="zg3i:257K23PuhQu" resolve="condition" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEF" id="4D$GIrwZjNg" role="356sEH">
            <property role="TrG5h" value=")" />
          </node>
          <node concept="2EixSi" id="4D$GIrwZiZk" role="2EinRH" />
        </node>
      </node>
      <node concept="30G5F_" id="4D$GIrwZiZl" role="30HLyM">
        <node concept="3clFbS" id="4D$GIrwZiZm" role="2VODD2">
          <node concept="3SKdUt" id="4D$GIrwZjKd" role="3cqZAp">
            <node concept="1PaTwC" id="4D$GIrwZjKe" role="1aUNEU">
              <node concept="3oM_SD" id="4D$GIrwZjKf" role="1PaTwD">
                <property role="3oM_SC" value="In" />
              </node>
              <node concept="3oM_SD" id="4D$GIrwZjL5" role="1PaTwD">
                <property role="3oM_SC" value="conditional" />
              </node>
              <node concept="3oM_SD" id="4D$GIrwZjLB" role="1PaTwD">
                <property role="3oM_SC" value="block," />
              </node>
              <node concept="3oM_SD" id="4D$GIrwZjM3" role="1PaTwD">
                <property role="3oM_SC" value="one" />
              </node>
              <node concept="3oM_SD" id="4D$GIrwZjM8" role="1PaTwD">
                <property role="3oM_SC" value="or" />
              </node>
              <node concept="3oM_SD" id="4D$GIrwZjMc" role="1PaTwD">
                <property role="3oM_SC" value="more" />
              </node>
              <node concept="3oM_SD" id="4D$GIrwZjMi" role="1PaTwD">
                <property role="3oM_SC" value="conditions" />
              </node>
              <node concept="3oM_SD" id="4D$GIrwZjMO" role="1PaTwD">
                <property role="3oM_SC" value="apply" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4D$GIrwZiZn" role="3cqZAp">
            <node concept="3clFbC" id="4D$GIrwZyAL" role="3clFbG">
              <node concept="3cmrfG" id="4D$GIrwZyAP" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="4D$GIrwZril" role="3uHU7B">
                <node concept="2OqwBi" id="4D$GIrwZiZp" role="2Oq$k0">
                  <node concept="30H73N" id="4D$GIrwZiZq" role="2Oq$k0" />
                  <node concept="z$bX8" id="4D$GIrwZkX7" role="2OqNvi">
                    <node concept="1xMEDy" id="4D$GIrwZnvP" role="1xVPHs">
                      <node concept="chp4Y" id="4D$GIrwZnwN" role="ri$Ld">
                        <ref role="cht4Q" to="zg3i:257K23PuhQr" resolve="ConditionalBlock" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="34oBXx" id="4D$GIrwZvtR" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="4D$GIrwZHk$" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="zg3i:257K23Pv8vo" resolve="DerivedValue" />
      <node concept="gft3U" id="4D$GIrwZHk_" role="1lVwrX">
        <node concept="356sEK" id="4D$GIrwZHkA" role="gfFT$">
          <node concept="356sEF" id="4D$GIrwZHkB" role="356sEH">
            <property role="TrG5h" value="showIf('" />
          </node>
          <node concept="356sEF" id="4D$GIrwZHkC" role="356sEH">
            <property role="TrG5h" value="questionId" />
            <node concept="17Uvod" id="4D$GIrwZHkD" role="lGtFl">
              <property role="2qtEX9" value="name" />
              <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
              <node concept="3zFVjK" id="4D$GIrwZHkE" role="3zH0cK">
                <node concept="3clFbS" id="4D$GIrwZHkF" role="2VODD2">
                  <node concept="3clFbF" id="4D$GIrwZHkG" role="3cqZAp">
                    <node concept="2OqwBi" id="4D$GIrwZHkH" role="3clFbG">
                      <node concept="3TrcHB" id="4D$GIrwZHkI" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                      <node concept="30H73N" id="4D$GIrwZHkJ" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEF" id="4D$GIrwZHkK" role="356sEH">
            <property role="TrG5h" value="', true)" />
          </node>
          <node concept="2EixSi" id="4D$GIrwZHkL" role="2EinRH" />
        </node>
      </node>
      <node concept="30G5F_" id="4D$GIrwZHkM" role="30HLyM">
        <node concept="3clFbS" id="4D$GIrwZHkN" role="2VODD2">
          <node concept="3SKdUt" id="4D$GIrwZHkO" role="3cqZAp">
            <node concept="1PaTwC" id="4D$GIrwZHkP" role="1aUNEU">
              <node concept="3oM_SD" id="4D$GIrwZHkQ" role="1PaTwD">
                <property role="3oM_SC" value="No" />
              </node>
              <node concept="3oM_SD" id="4D$GIrwZHkR" role="1PaTwD">
                <property role="3oM_SC" value="active" />
              </node>
              <node concept="3oM_SD" id="4D$GIrwZHkS" role="1PaTwD">
                <property role="3oM_SC" value="conditions," />
              </node>
              <node concept="3oM_SD" id="4D$GIrwZHkT" role="1PaTwD">
                <property role="3oM_SC" value="not" />
              </node>
              <node concept="3oM_SD" id="4D$GIrwZHkU" role="1PaTwD">
                <property role="3oM_SC" value="contained" />
              </node>
              <node concept="3oM_SD" id="4D$GIrwZHkV" role="1PaTwD">
                <property role="3oM_SC" value="in" />
              </node>
              <node concept="3oM_SD" id="4D$GIrwZHkW" role="1PaTwD">
                <property role="3oM_SC" value="conditional" />
              </node>
              <node concept="3oM_SD" id="4D$GIrwZHkX" role="1PaTwD">
                <property role="3oM_SC" value="block" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4D$GIrwZHkY" role="3cqZAp">
            <node concept="2OqwBi" id="4D$GIrwZHkZ" role="3clFbG">
              <node concept="2OqwBi" id="4D$GIrwZHl0" role="2Oq$k0">
                <node concept="30H73N" id="4D$GIrwZHl1" role="2Oq$k0" />
                <node concept="2Xjw5R" id="4D$GIrwZHl2" role="2OqNvi">
                  <node concept="1xMEDy" id="4D$GIrwZHl3" role="1xVPHs">
                    <node concept="chp4Y" id="4D$GIrwZHl4" role="ri$Ld">
                      <ref role="cht4Q" to="zg3i:257K23PuhQr" resolve="ConditionalBlock" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3w_OXm" id="4D$GIrwZHl5" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="4D$GIrwZHjN" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="zg3i:257K23Pv8vo" resolve="DerivedValue" />
      <node concept="gft3U" id="4D$GIrwZHjO" role="1lVwrX">
        <node concept="356sEK" id="4D$GIrwZHjP" role="gfFT$">
          <node concept="356sEF" id="4D$GIrwZHjQ" role="356sEH">
            <property role="TrG5h" value="showIf('" />
          </node>
          <node concept="356sEF" id="4D$GIrwZHjR" role="356sEH">
            <property role="TrG5h" value="questionId" />
            <node concept="17Uvod" id="4D$GIrwZHjS" role="lGtFl">
              <property role="2qtEX9" value="name" />
              <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
              <node concept="3zFVjK" id="4D$GIrwZHjT" role="3zH0cK">
                <node concept="3clFbS" id="4D$GIrwZHjU" role="2VODD2">
                  <node concept="3clFbF" id="4D$GIrwZHjV" role="3cqZAp">
                    <node concept="2OqwBi" id="4D$GIrwZHjW" role="3clFbG">
                      <node concept="3TrcHB" id="4D$GIrwZHjX" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                      <node concept="30H73N" id="4D$GIrwZHjY" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEF" id="4D$GIrwZHjZ" role="356sEH">
            <property role="TrG5h" value="', " />
          </node>
          <node concept="356sEF" id="4D$GIrwZHk0" role="356sEH">
            <property role="TrG5h" value="cond" />
            <node concept="29HgVG" id="4D$GIrwZHk1" role="lGtFl">
              <node concept="3NFfHV" id="4D$GIrwZHk2" role="3NFExx">
                <node concept="3clFbS" id="4D$GIrwZHk3" role="2VODD2">
                  <node concept="3clFbF" id="4D$GIrwZHk4" role="3cqZAp">
                    <node concept="2OqwBi" id="4D$GIrwZHk5" role="3clFbG">
                      <node concept="2OqwBi" id="4D$GIrwZHk6" role="2Oq$k0">
                        <node concept="30H73N" id="4D$GIrwZHk7" role="2Oq$k0" />
                        <node concept="2Xjw5R" id="4D$GIrwZHk8" role="2OqNvi">
                          <node concept="1xMEDy" id="4D$GIrwZHk9" role="1xVPHs">
                            <node concept="chp4Y" id="4D$GIrwZHka" role="ri$Ld">
                              <ref role="cht4Q" to="zg3i:257K23PuhQr" resolve="ConditionalBlock" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3TrEf2" id="4D$GIrwZHkb" role="2OqNvi">
                        <ref role="3Tt5mk" to="zg3i:257K23PuhQu" resolve="condition" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEF" id="4D$GIrwZHkc" role="356sEH">
            <property role="TrG5h" value=")" />
          </node>
          <node concept="2EixSi" id="4D$GIrwZHkd" role="2EinRH" />
        </node>
      </node>
      <node concept="30G5F_" id="4D$GIrwZHke" role="30HLyM">
        <node concept="3clFbS" id="4D$GIrwZHkf" role="2VODD2">
          <node concept="3SKdUt" id="4D$GIrwZHkg" role="3cqZAp">
            <node concept="1PaTwC" id="4D$GIrwZHkh" role="1aUNEU">
              <node concept="3oM_SD" id="4D$GIrwZHki" role="1PaTwD">
                <property role="3oM_SC" value="In" />
              </node>
              <node concept="3oM_SD" id="4D$GIrwZHkj" role="1PaTwD">
                <property role="3oM_SC" value="conditional" />
              </node>
              <node concept="3oM_SD" id="4D$GIrwZHkk" role="1PaTwD">
                <property role="3oM_SC" value="block," />
              </node>
              <node concept="3oM_SD" id="4D$GIrwZHkl" role="1PaTwD">
                <property role="3oM_SC" value="one" />
              </node>
              <node concept="3oM_SD" id="4D$GIrwZHkm" role="1PaTwD">
                <property role="3oM_SC" value="or" />
              </node>
              <node concept="3oM_SD" id="4D$GIrwZHkn" role="1PaTwD">
                <property role="3oM_SC" value="more" />
              </node>
              <node concept="3oM_SD" id="4D$GIrwZHko" role="1PaTwD">
                <property role="3oM_SC" value="conditions" />
              </node>
              <node concept="3oM_SD" id="4D$GIrwZHkp" role="1PaTwD">
                <property role="3oM_SC" value="apply" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4D$GIrwZHkq" role="3cqZAp">
            <node concept="3clFbC" id="4D$GIrwZHkr" role="3clFbG">
              <node concept="3cmrfG" id="4D$GIrwZHks" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="4D$GIrwZHkt" role="3uHU7B">
                <node concept="2OqwBi" id="4D$GIrwZHku" role="2Oq$k0">
                  <node concept="30H73N" id="4D$GIrwZHkv" role="2Oq$k0" />
                  <node concept="z$bX8" id="4D$GIrwZHkw" role="2OqNvi">
                    <node concept="1xMEDy" id="4D$GIrwZHkx" role="1xVPHs">
                      <node concept="chp4Y" id="4D$GIrwZHky" role="ri$Ld">
                        <ref role="cht4Q" to="zg3i:257K23PuhQr" resolve="ConditionalBlock" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="34oBXx" id="4D$GIrwZHkz" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

