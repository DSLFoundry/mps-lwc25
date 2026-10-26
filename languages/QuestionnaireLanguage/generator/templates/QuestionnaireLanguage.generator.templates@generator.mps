<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:1f1279ee-a270-42e5-9ba9-ef16190001b5(QuestionnaireLanguage.generator.templates@generator)">
  <persistence version="9" />
  <languages>
    <use id="990507d3-3527-4c54-bfe9-0ca3c9c6247a" name="com.dslfoundry.plaintextgen" version="0" />
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="4" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="zg3i" ref="r:e8876d31-137a-458a-aef5-06f967861a7c(QuestionnaireLanguage.structure)" />
    <import index="tbr6" ref="r:6a005c26-87c0-43c4-8cf3-49ffba1099df(de.slisson.mps.richtext.behavior)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="mi3w" ref="r:9ec53fca-e669-4a18-ba8b-6c9f4f1cb361(org.iets3.core.expr.datetime.structure)" />
    <import index="hm2y" ref="r:66e07cb4-a4b0-4bf3-a36d-5e9ed1ff1bd3(org.iets3.core.expr.base.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="5qo5" ref="r:6d93ddb1-b0b0-4eee-8079-51303666672a(org.iets3.core.expr.simpleTypes.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="3235159848334022093" name="jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall" flags="nn" index="3zqWPK" />
    </language>
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
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1114706874351" name="jetbrains.mps.lang.generator.structure.CopySrcNodeMacro" flags="lg" index="29HgVG">
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
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="lg" index="17Uvod">
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
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="ig" index="3JmXsc" />
      <concept id="1168024337012" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery" flags="ig" index="3NFfHV" />
      <concept id="1118786554307" name="jetbrains.mps.lang.generator.structure.LoopMacro" flags="lg" index="1WS0z7">
        <child id="1167952069335" name="sourceNodesQuery" index="3Jn$fo" />
      </concept>
    </language>
    <language id="990507d3-3527-4c54-bfe9-0ca3c9c6247a" name="com.dslfoundry.plaintextgen">
      <concept id="5082088080656902716" name="com.dslfoundry.plaintextgen.structure.NewlineMarker" flags="ng" index="2EixSi" />
      <concept id="1145195647825954804" name="com.dslfoundry.plaintextgen.structure.Word" flags="ng" index="356sEF" />
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
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="1173122760281" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorsOperation" flags="nn" index="z$bX8" />
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1154546920561" name="jetbrains.mps.lang.smodel.structure.OperationParm_ConceptList" flags="ng" index="3gmYPX">
        <child id="1154546920563" name="concept" index="3gmYPZ" />
      </concept>
      <concept id="1154546950173" name="jetbrains.mps.lang.smodel.structure.ConceptReference" flags="ng" index="3gn64h">
        <reference id="1154546997487" name="concept" index="3gnhBz" />
      </concept>
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
  </registry>
  <node concept="bUwia" id="3OiB6Qt32np">
    <property role="TrG5h" value="main" />
    <node concept="3lhOvk" id="4D$GIrwX3It" role="3lj3bC">
      <ref role="30HIoZ" to="zg3i:6vTVXvbAy8x" resolve="Form" />
      <ref role="3lhOvi" node="4D$GIrwX3Iu" resolve="questionnaire" />
    </node>
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
                          <ref role="3Tt5mk" to="zg3i:257K23Puur0" resolve="question" />
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
          <node concept="2EixSi" id="4D$GIrx0Wmk" role="2EinRH" />
          <node concept="356sEF" id="STlwLYiWid" role="356sEH">
            <property role="TrG5h" value="qlSubtract(" />
          </node>
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
            <property role="TrG5h" value=", " />
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
          <node concept="356sEF" id="STlwLYiWie" role="356sEH">
            <property role="TrG5h" value=")" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="STlwLYiWcy" role="3acgRq">
      <ref role="30HIoZ" to="hm2y:4rZeNQ6MqjM" resolve="PlusExpression" />
      <node concept="gft3U" id="STlwLYiWcz" role="1lVwrX">
        <node concept="356sEK" id="STlwLYiWc$" role="gfFT$">
          <node concept="2EixSi" id="STlwLYiWcQ" role="2EinRH" />
          <node concept="356sEF" id="STlwLYiWif" role="356sEH">
            <property role="TrG5h" value="qlAdd(" />
          </node>
          <node concept="356sEF" id="STlwLYiWc_" role="356sEH">
            <property role="TrG5h" value="lhs" />
            <node concept="29HgVG" id="STlwLYiWcA" role="lGtFl">
              <node concept="3NFfHV" id="STlwLYiWcB" role="3NFExx">
                <node concept="3clFbS" id="STlwLYiWcC" role="2VODD2">
                  <node concept="3clFbF" id="STlwLYiWcD" role="3cqZAp">
                    <node concept="2OqwBi" id="STlwLYiWcE" role="3clFbG">
                      <node concept="30H73N" id="STlwLYiWcF" role="2Oq$k0" />
                      <node concept="3TrEf2" id="STlwLYiWcG" role="2OqNvi">
                        <ref role="3Tt5mk" to="hm2y:4rZeNQ6MpKm" resolve="left" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEF" id="STlwLYiWcH" role="356sEH">
            <property role="TrG5h" value=", " />
          </node>
          <node concept="356sEF" id="STlwLYiWcI" role="356sEH">
            <property role="TrG5h" value="rhs" />
            <node concept="29HgVG" id="STlwLYiWcJ" role="lGtFl">
              <node concept="3NFfHV" id="STlwLYiWcK" role="3NFExx">
                <node concept="3clFbS" id="STlwLYiWcL" role="2VODD2">
                  <node concept="3clFbF" id="STlwLYiWcM" role="3cqZAp">
                    <node concept="2OqwBi" id="STlwLYiWcN" role="3clFbG">
                      <node concept="3TrEf2" id="STlwLYiWcO" role="2OqNvi">
                        <ref role="3Tt5mk" to="hm2y:4rZeNQ6MpKo" resolve="right" />
                      </node>
                      <node concept="30H73N" id="STlwLYiWcP" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEF" id="STlwLYiWig" role="356sEH">
            <property role="TrG5h" value=")" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="STlwLYiWcR" role="3acgRq">
      <ref role="30HIoZ" to="hm2y:4rZeNQ6MqlJ" resolve="MulExpression" />
      <node concept="gft3U" id="STlwLYiWcS" role="1lVwrX">
        <node concept="356sEK" id="STlwLYiWcT" role="gfFT$">
          <node concept="2EixSi" id="STlwLYiWdb" role="2EinRH" />
          <node concept="356sEF" id="STlwLYiWih" role="356sEH">
            <property role="TrG5h" value="qlMultiply(" />
          </node>
          <node concept="356sEF" id="STlwLYiWcU" role="356sEH">
            <property role="TrG5h" value="lhs" />
            <node concept="29HgVG" id="STlwLYiWcV" role="lGtFl">
              <node concept="3NFfHV" id="STlwLYiWcW" role="3NFExx">
                <node concept="3clFbS" id="STlwLYiWcX" role="2VODD2">
                  <node concept="3clFbF" id="STlwLYiWcY" role="3cqZAp">
                    <node concept="2OqwBi" id="STlwLYiWcZ" role="3clFbG">
                      <node concept="30H73N" id="STlwLYiWd0" role="2Oq$k0" />
                      <node concept="3TrEf2" id="STlwLYiWd1" role="2OqNvi">
                        <ref role="3Tt5mk" to="hm2y:4rZeNQ6MpKm" resolve="left" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEF" id="STlwLYiWd2" role="356sEH">
            <property role="TrG5h" value=", " />
          </node>
          <node concept="356sEF" id="STlwLYiWd3" role="356sEH">
            <property role="TrG5h" value="rhs" />
            <node concept="29HgVG" id="STlwLYiWd4" role="lGtFl">
              <node concept="3NFfHV" id="STlwLYiWd5" role="3NFExx">
                <node concept="3clFbS" id="STlwLYiWd6" role="2VODD2">
                  <node concept="3clFbF" id="STlwLYiWd7" role="3cqZAp">
                    <node concept="2OqwBi" id="STlwLYiWd8" role="3clFbG">
                      <node concept="3TrEf2" id="STlwLYiWd9" role="2OqNvi">
                        <ref role="3Tt5mk" to="hm2y:4rZeNQ6MpKo" resolve="right" />
                      </node>
                      <node concept="30H73N" id="STlwLYiWda" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEF" id="STlwLYiWii" role="356sEH">
            <property role="TrG5h" value=")" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="STlwLYiWdc" role="3acgRq">
      <ref role="30HIoZ" to="hm2y:4rZeNQ6MGoV" resolve="DivExpression" />
      <node concept="gft3U" id="STlwLYiWdd" role="1lVwrX">
        <node concept="356sEK" id="STlwLYiWde" role="gfFT$">
          <node concept="2EixSi" id="STlwLYiWdw" role="2EinRH" />
          <node concept="356sEF" id="STlwLYiWij" role="356sEH">
            <property role="TrG5h" value="qlDivide(" />
          </node>
          <node concept="356sEF" id="STlwLYiWdf" role="356sEH">
            <property role="TrG5h" value="lhs" />
            <node concept="29HgVG" id="STlwLYiWdg" role="lGtFl">
              <node concept="3NFfHV" id="STlwLYiWdh" role="3NFExx">
                <node concept="3clFbS" id="STlwLYiWdi" role="2VODD2">
                  <node concept="3clFbF" id="STlwLYiWdj" role="3cqZAp">
                    <node concept="2OqwBi" id="STlwLYiWdk" role="3clFbG">
                      <node concept="30H73N" id="STlwLYiWdl" role="2Oq$k0" />
                      <node concept="3TrEf2" id="STlwLYiWdm" role="2OqNvi">
                        <ref role="3Tt5mk" to="hm2y:4rZeNQ6MpKm" resolve="left" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEF" id="STlwLYiWdn" role="356sEH">
            <property role="TrG5h" value=", " />
          </node>
          <node concept="356sEF" id="STlwLYiWdo" role="356sEH">
            <property role="TrG5h" value="rhs" />
            <node concept="29HgVG" id="STlwLYiWdp" role="lGtFl">
              <node concept="3NFfHV" id="STlwLYiWdq" role="3NFExx">
                <node concept="3clFbS" id="STlwLYiWdr" role="2VODD2">
                  <node concept="3clFbF" id="STlwLYiWds" role="3cqZAp">
                    <node concept="2OqwBi" id="STlwLYiWdt" role="3clFbG">
                      <node concept="3TrEf2" id="STlwLYiWdu" role="2OqNvi">
                        <ref role="3Tt5mk" to="hm2y:4rZeNQ6MpKo" resolve="right" />
                      </node>
                      <node concept="30H73N" id="STlwLYiWdv" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEF" id="STlwLYiWik" role="356sEH">
            <property role="TrG5h" value=")" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="STlwLYiWdx" role="3acgRq">
      <ref role="30HIoZ" to="hm2y:5fy$GmTPJXq" resolve="ModExpression" />
      <node concept="gft3U" id="STlwLYiWdy" role="1lVwrX">
        <node concept="356sEK" id="STlwLYiWdz" role="gfFT$">
          <node concept="2EixSi" id="STlwLYiWdP" role="2EinRH" />
          <node concept="356sEF" id="STlwLYiWil" role="356sEH">
            <property role="TrG5h" value="qlModulo(" />
          </node>
          <node concept="356sEF" id="STlwLYiWd$" role="356sEH">
            <property role="TrG5h" value="lhs" />
            <node concept="29HgVG" id="STlwLYiWd_" role="lGtFl">
              <node concept="3NFfHV" id="STlwLYiWdA" role="3NFExx">
                <node concept="3clFbS" id="STlwLYiWdB" role="2VODD2">
                  <node concept="3clFbF" id="STlwLYiWdC" role="3cqZAp">
                    <node concept="2OqwBi" id="STlwLYiWdD" role="3clFbG">
                      <node concept="30H73N" id="STlwLYiWdE" role="2Oq$k0" />
                      <node concept="3TrEf2" id="STlwLYiWdF" role="2OqNvi">
                        <ref role="3Tt5mk" to="hm2y:4rZeNQ6MpKm" resolve="left" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEF" id="STlwLYiWdG" role="356sEH">
            <property role="TrG5h" value=", " />
          </node>
          <node concept="356sEF" id="STlwLYiWdH" role="356sEH">
            <property role="TrG5h" value="rhs" />
            <node concept="29HgVG" id="STlwLYiWdI" role="lGtFl">
              <node concept="3NFfHV" id="STlwLYiWdJ" role="3NFExx">
                <node concept="3clFbS" id="STlwLYiWdK" role="2VODD2">
                  <node concept="3clFbF" id="STlwLYiWdL" role="3cqZAp">
                    <node concept="2OqwBi" id="STlwLYiWdM" role="3clFbG">
                      <node concept="3TrEf2" id="STlwLYiWdN" role="2OqNvi">
                        <ref role="3Tt5mk" to="hm2y:4rZeNQ6MpKo" resolve="right" />
                      </node>
                      <node concept="30H73N" id="STlwLYiWdO" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEF" id="STlwLYiWim" role="356sEH">
            <property role="TrG5h" value=")" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="STlwLYiWdQ" role="3acgRq">
      <ref role="30HIoZ" to="hm2y:4rZeNQ6MP0i" resolve="LessExpression" />
      <node concept="gft3U" id="STlwLYiWdR" role="1lVwrX">
        <node concept="356sEK" id="STlwLYiWdS" role="gfFT$">
          <node concept="2EixSi" id="STlwLYiWea" role="2EinRH" />
          <node concept="356sEF" id="STlwLYiWin" role="356sEH">
            <property role="TrG5h" value="qlLess(" />
          </node>
          <node concept="356sEF" id="STlwLYiWdT" role="356sEH">
            <property role="TrG5h" value="lhs" />
            <node concept="29HgVG" id="STlwLYiWdU" role="lGtFl">
              <node concept="3NFfHV" id="STlwLYiWdV" role="3NFExx">
                <node concept="3clFbS" id="STlwLYiWdW" role="2VODD2">
                  <node concept="3clFbF" id="STlwLYiWdX" role="3cqZAp">
                    <node concept="2OqwBi" id="STlwLYiWdY" role="3clFbG">
                      <node concept="30H73N" id="STlwLYiWdZ" role="2Oq$k0" />
                      <node concept="3TrEf2" id="STlwLYiWe0" role="2OqNvi">
                        <ref role="3Tt5mk" to="hm2y:4rZeNQ6MpKm" resolve="left" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEF" id="STlwLYiWe1" role="356sEH">
            <property role="TrG5h" value=", " />
          </node>
          <node concept="356sEF" id="STlwLYiWe2" role="356sEH">
            <property role="TrG5h" value="rhs" />
            <node concept="29HgVG" id="STlwLYiWe3" role="lGtFl">
              <node concept="3NFfHV" id="STlwLYiWe4" role="3NFExx">
                <node concept="3clFbS" id="STlwLYiWe5" role="2VODD2">
                  <node concept="3clFbF" id="STlwLYiWe6" role="3cqZAp">
                    <node concept="2OqwBi" id="STlwLYiWe7" role="3clFbG">
                      <node concept="3TrEf2" id="STlwLYiWe8" role="2OqNvi">
                        <ref role="3Tt5mk" to="hm2y:4rZeNQ6MpKo" resolve="right" />
                      </node>
                      <node concept="30H73N" id="STlwLYiWe9" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEF" id="STlwLYiWio" role="356sEH">
            <property role="TrG5h" value=")" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="STlwLYiWeb" role="3acgRq">
      <ref role="30HIoZ" to="hm2y:4rZeNQ6MOYk" resolve="GreaterExpression" />
      <node concept="gft3U" id="STlwLYiWec" role="1lVwrX">
        <node concept="356sEK" id="STlwLYiWed" role="gfFT$">
          <node concept="2EixSi" id="STlwLYiWev" role="2EinRH" />
          <node concept="356sEF" id="STlwLYiWip" role="356sEH">
            <property role="TrG5h" value="qlGreater(" />
          </node>
          <node concept="356sEF" id="STlwLYiWee" role="356sEH">
            <property role="TrG5h" value="lhs" />
            <node concept="29HgVG" id="STlwLYiWef" role="lGtFl">
              <node concept="3NFfHV" id="STlwLYiWeg" role="3NFExx">
                <node concept="3clFbS" id="STlwLYiWeh" role="2VODD2">
                  <node concept="3clFbF" id="STlwLYiWei" role="3cqZAp">
                    <node concept="2OqwBi" id="STlwLYiWej" role="3clFbG">
                      <node concept="30H73N" id="STlwLYiWek" role="2Oq$k0" />
                      <node concept="3TrEf2" id="STlwLYiWel" role="2OqNvi">
                        <ref role="3Tt5mk" to="hm2y:4rZeNQ6MpKm" resolve="left" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEF" id="STlwLYiWem" role="356sEH">
            <property role="TrG5h" value=", " />
          </node>
          <node concept="356sEF" id="STlwLYiWen" role="356sEH">
            <property role="TrG5h" value="rhs" />
            <node concept="29HgVG" id="STlwLYiWeo" role="lGtFl">
              <node concept="3NFfHV" id="STlwLYiWep" role="3NFExx">
                <node concept="3clFbS" id="STlwLYiWeq" role="2VODD2">
                  <node concept="3clFbF" id="STlwLYiWer" role="3cqZAp">
                    <node concept="2OqwBi" id="STlwLYiWes" role="3clFbG">
                      <node concept="3TrEf2" id="STlwLYiWet" role="2OqNvi">
                        <ref role="3Tt5mk" to="hm2y:4rZeNQ6MpKo" resolve="right" />
                      </node>
                      <node concept="30H73N" id="STlwLYiWeu" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEF" id="STlwLYiWiq" role="356sEH">
            <property role="TrG5h" value=")" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="STlwLYiWew" role="3acgRq">
      <ref role="30HIoZ" to="hm2y:4rZeNQ6MP0j" resolve="LessEqualsExpression" />
      <node concept="gft3U" id="STlwLYiWex" role="1lVwrX">
        <node concept="356sEK" id="STlwLYiWey" role="gfFT$">
          <node concept="2EixSi" id="STlwLYiWeO" role="2EinRH" />
          <node concept="356sEF" id="STlwLYiWir" role="356sEH">
            <property role="TrG5h" value="qlLessOrEqual(" />
          </node>
          <node concept="356sEF" id="STlwLYiWez" role="356sEH">
            <property role="TrG5h" value="lhs" />
            <node concept="29HgVG" id="STlwLYiWe$" role="lGtFl">
              <node concept="3NFfHV" id="STlwLYiWe_" role="3NFExx">
                <node concept="3clFbS" id="STlwLYiWeA" role="2VODD2">
                  <node concept="3clFbF" id="STlwLYiWeB" role="3cqZAp">
                    <node concept="2OqwBi" id="STlwLYiWeC" role="3clFbG">
                      <node concept="30H73N" id="STlwLYiWeD" role="2Oq$k0" />
                      <node concept="3TrEf2" id="STlwLYiWeE" role="2OqNvi">
                        <ref role="3Tt5mk" to="hm2y:4rZeNQ6MpKm" resolve="left" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEF" id="STlwLYiWeF" role="356sEH">
            <property role="TrG5h" value=", " />
          </node>
          <node concept="356sEF" id="STlwLYiWeG" role="356sEH">
            <property role="TrG5h" value="rhs" />
            <node concept="29HgVG" id="STlwLYiWeH" role="lGtFl">
              <node concept="3NFfHV" id="STlwLYiWeI" role="3NFExx">
                <node concept="3clFbS" id="STlwLYiWeJ" role="2VODD2">
                  <node concept="3clFbF" id="STlwLYiWeK" role="3cqZAp">
                    <node concept="2OqwBi" id="STlwLYiWeL" role="3clFbG">
                      <node concept="3TrEf2" id="STlwLYiWeM" role="2OqNvi">
                        <ref role="3Tt5mk" to="hm2y:4rZeNQ6MpKo" resolve="right" />
                      </node>
                      <node concept="30H73N" id="STlwLYiWeN" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEF" id="STlwLYiWis" role="356sEH">
            <property role="TrG5h" value=")" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="STlwLYiWeP" role="3acgRq">
      <ref role="30HIoZ" to="hm2y:4rZeNQ6MP0h" resolve="GreaterEqualsExpression" />
      <node concept="gft3U" id="STlwLYiWeQ" role="1lVwrX">
        <node concept="356sEK" id="STlwLYiWeR" role="gfFT$">
          <node concept="2EixSi" id="STlwLYiWf9" role="2EinRH" />
          <node concept="356sEF" id="STlwLYiWit" role="356sEH">
            <property role="TrG5h" value="qlGreaterOrEqual(" />
          </node>
          <node concept="356sEF" id="STlwLYiWeS" role="356sEH">
            <property role="TrG5h" value="lhs" />
            <node concept="29HgVG" id="STlwLYiWeT" role="lGtFl">
              <node concept="3NFfHV" id="STlwLYiWeU" role="3NFExx">
                <node concept="3clFbS" id="STlwLYiWeV" role="2VODD2">
                  <node concept="3clFbF" id="STlwLYiWeW" role="3cqZAp">
                    <node concept="2OqwBi" id="STlwLYiWeX" role="3clFbG">
                      <node concept="30H73N" id="STlwLYiWeY" role="2Oq$k0" />
                      <node concept="3TrEf2" id="STlwLYiWeZ" role="2OqNvi">
                        <ref role="3Tt5mk" to="hm2y:4rZeNQ6MpKm" resolve="left" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEF" id="STlwLYiWf0" role="356sEH">
            <property role="TrG5h" value=", " />
          </node>
          <node concept="356sEF" id="STlwLYiWf1" role="356sEH">
            <property role="TrG5h" value="rhs" />
            <node concept="29HgVG" id="STlwLYiWf2" role="lGtFl">
              <node concept="3NFfHV" id="STlwLYiWf3" role="3NFExx">
                <node concept="3clFbS" id="STlwLYiWf4" role="2VODD2">
                  <node concept="3clFbF" id="STlwLYiWf5" role="3cqZAp">
                    <node concept="2OqwBi" id="STlwLYiWf6" role="3clFbG">
                      <node concept="3TrEf2" id="STlwLYiWf7" role="2OqNvi">
                        <ref role="3Tt5mk" to="hm2y:4rZeNQ6MpKo" resolve="right" />
                      </node>
                      <node concept="30H73N" id="STlwLYiWf8" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEF" id="STlwLYiWiu" role="356sEH">
            <property role="TrG5h" value=")" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="STlwLYiWfa" role="3acgRq">
      <ref role="30HIoZ" to="hm2y:4rZeNQ6N6R9" resolve="EqualsExpression" />
      <node concept="gft3U" id="STlwLYiWfb" role="1lVwrX">
        <node concept="356sEK" id="STlwLYiWfc" role="gfFT$">
          <node concept="2EixSi" id="STlwLYiWfu" role="2EinRH" />
          <node concept="356sEF" id="STlwLYiWiv" role="356sEH">
            <property role="TrG5h" value="qlEqual(" />
          </node>
          <node concept="356sEF" id="STlwLYiWfd" role="356sEH">
            <property role="TrG5h" value="lhs" />
            <node concept="29HgVG" id="STlwLYiWfe" role="lGtFl">
              <node concept="3NFfHV" id="STlwLYiWff" role="3NFExx">
                <node concept="3clFbS" id="STlwLYiWfg" role="2VODD2">
                  <node concept="3clFbF" id="STlwLYiWfh" role="3cqZAp">
                    <node concept="2OqwBi" id="STlwLYiWfi" role="3clFbG">
                      <node concept="30H73N" id="STlwLYiWfj" role="2Oq$k0" />
                      <node concept="3TrEf2" id="STlwLYiWfk" role="2OqNvi">
                        <ref role="3Tt5mk" to="hm2y:4rZeNQ6MpKm" resolve="left" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEF" id="STlwLYiWfl" role="356sEH">
            <property role="TrG5h" value=", " />
          </node>
          <node concept="356sEF" id="STlwLYiWfm" role="356sEH">
            <property role="TrG5h" value="rhs" />
            <node concept="29HgVG" id="STlwLYiWfn" role="lGtFl">
              <node concept="3NFfHV" id="STlwLYiWfo" role="3NFExx">
                <node concept="3clFbS" id="STlwLYiWfp" role="2VODD2">
                  <node concept="3clFbF" id="STlwLYiWfq" role="3cqZAp">
                    <node concept="2OqwBi" id="STlwLYiWfr" role="3clFbG">
                      <node concept="3TrEf2" id="STlwLYiWfs" role="2OqNvi">
                        <ref role="3Tt5mk" to="hm2y:4rZeNQ6MpKo" resolve="right" />
                      </node>
                      <node concept="30H73N" id="STlwLYiWft" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEF" id="STlwLYiWiw" role="356sEH">
            <property role="TrG5h" value=")" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="STlwLYiWfv" role="3acgRq">
      <ref role="30HIoZ" to="hm2y:4rZeNQ6N6Ra" resolve="NotEqualsExpression" />
      <node concept="gft3U" id="STlwLYiWfw" role="1lVwrX">
        <node concept="356sEK" id="STlwLYiWfx" role="gfFT$">
          <node concept="2EixSi" id="STlwLYiWfN" role="2EinRH" />
          <node concept="356sEF" id="STlwLYiWix" role="356sEH">
            <property role="TrG5h" value="qlNotEqual(" />
          </node>
          <node concept="356sEF" id="STlwLYiWfy" role="356sEH">
            <property role="TrG5h" value="lhs" />
            <node concept="29HgVG" id="STlwLYiWfz" role="lGtFl">
              <node concept="3NFfHV" id="STlwLYiWf$" role="3NFExx">
                <node concept="3clFbS" id="STlwLYiWf_" role="2VODD2">
                  <node concept="3clFbF" id="STlwLYiWfA" role="3cqZAp">
                    <node concept="2OqwBi" id="STlwLYiWfB" role="3clFbG">
                      <node concept="30H73N" id="STlwLYiWfC" role="2Oq$k0" />
                      <node concept="3TrEf2" id="STlwLYiWfD" role="2OqNvi">
                        <ref role="3Tt5mk" to="hm2y:4rZeNQ6MpKm" resolve="left" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEF" id="STlwLYiWfE" role="356sEH">
            <property role="TrG5h" value=", " />
          </node>
          <node concept="356sEF" id="STlwLYiWfF" role="356sEH">
            <property role="TrG5h" value="rhs" />
            <node concept="29HgVG" id="STlwLYiWfG" role="lGtFl">
              <node concept="3NFfHV" id="STlwLYiWfH" role="3NFExx">
                <node concept="3clFbS" id="STlwLYiWfI" role="2VODD2">
                  <node concept="3clFbF" id="STlwLYiWfJ" role="3cqZAp">
                    <node concept="2OqwBi" id="STlwLYiWfK" role="3clFbG">
                      <node concept="3TrEf2" id="STlwLYiWfL" role="2OqNvi">
                        <ref role="3Tt5mk" to="hm2y:4rZeNQ6MpKo" resolve="right" />
                      </node>
                      <node concept="30H73N" id="STlwLYiWfM" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEF" id="STlwLYiWiy" role="356sEH">
            <property role="TrG5h" value=")" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="STlwLYiWfO" role="3acgRq">
      <ref role="30HIoZ" to="hm2y:37t_e$M9iOO" resolve="NonStrictEqualsExpression" />
      <node concept="gft3U" id="STlwLYiWfP" role="1lVwrX">
        <node concept="356sEK" id="STlwLYiWfQ" role="gfFT$">
          <node concept="2EixSi" id="STlwLYiWg8" role="2EinRH" />
          <node concept="356sEF" id="STlwLYiWiz" role="356sEH">
            <property role="TrG5h" value="qlEqual(" />
          </node>
          <node concept="356sEF" id="STlwLYiWfR" role="356sEH">
            <property role="TrG5h" value="lhs" />
            <node concept="29HgVG" id="STlwLYiWfS" role="lGtFl">
              <node concept="3NFfHV" id="STlwLYiWfT" role="3NFExx">
                <node concept="3clFbS" id="STlwLYiWfU" role="2VODD2">
                  <node concept="3clFbF" id="STlwLYiWfV" role="3cqZAp">
                    <node concept="2OqwBi" id="STlwLYiWfW" role="3clFbG">
                      <node concept="30H73N" id="STlwLYiWfX" role="2Oq$k0" />
                      <node concept="3TrEf2" id="STlwLYiWfY" role="2OqNvi">
                        <ref role="3Tt5mk" to="hm2y:4rZeNQ6MpKm" resolve="left" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEF" id="STlwLYiWfZ" role="356sEH">
            <property role="TrG5h" value=", " />
          </node>
          <node concept="356sEF" id="STlwLYiWg0" role="356sEH">
            <property role="TrG5h" value="rhs" />
            <node concept="29HgVG" id="STlwLYiWg1" role="lGtFl">
              <node concept="3NFfHV" id="STlwLYiWg2" role="3NFExx">
                <node concept="3clFbS" id="STlwLYiWg3" role="2VODD2">
                  <node concept="3clFbF" id="STlwLYiWg4" role="3cqZAp">
                    <node concept="2OqwBi" id="STlwLYiWg5" role="3clFbG">
                      <node concept="3TrEf2" id="STlwLYiWg6" role="2OqNvi">
                        <ref role="3Tt5mk" to="hm2y:4rZeNQ6MpKo" resolve="right" />
                      </node>
                      <node concept="30H73N" id="STlwLYiWg7" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEF" id="STlwLYiWi$" role="356sEH">
            <property role="TrG5h" value=")" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="STlwLYiWg9" role="3acgRq">
      <ref role="30HIoZ" to="hm2y:4rZeNQ6MXOT" resolve="LogicalAndExpression" />
      <node concept="gft3U" id="STlwLYiWga" role="1lVwrX">
        <node concept="356sEK" id="STlwLYiWgb" role="gfFT$">
          <node concept="2EixSi" id="STlwLYiWgt" role="2EinRH" />
          <node concept="356sEF" id="STlwLYiWi_" role="356sEH">
            <property role="TrG5h" value="qlAnd(" />
          </node>
          <node concept="356sEF" id="STlwLYiWgc" role="356sEH">
            <property role="TrG5h" value="lhs" />
            <node concept="29HgVG" id="STlwLYiWgd" role="lGtFl">
              <node concept="3NFfHV" id="STlwLYiWge" role="3NFExx">
                <node concept="3clFbS" id="STlwLYiWgf" role="2VODD2">
                  <node concept="3clFbF" id="STlwLYiWgg" role="3cqZAp">
                    <node concept="2OqwBi" id="STlwLYiWgh" role="3clFbG">
                      <node concept="30H73N" id="STlwLYiWgi" role="2Oq$k0" />
                      <node concept="3TrEf2" id="STlwLYiWgj" role="2OqNvi">
                        <ref role="3Tt5mk" to="hm2y:4rZeNQ6MpKm" resolve="left" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEF" id="STlwLYiWgk" role="356sEH">
            <property role="TrG5h" value=", " />
          </node>
          <node concept="356sEF" id="STlwLYiWgl" role="356sEH">
            <property role="TrG5h" value="rhs" />
            <node concept="29HgVG" id="STlwLYiWgm" role="lGtFl">
              <node concept="3NFfHV" id="STlwLYiWgn" role="3NFExx">
                <node concept="3clFbS" id="STlwLYiWgo" role="2VODD2">
                  <node concept="3clFbF" id="STlwLYiWgp" role="3cqZAp">
                    <node concept="2OqwBi" id="STlwLYiWgq" role="3clFbG">
                      <node concept="3TrEf2" id="STlwLYiWgr" role="2OqNvi">
                        <ref role="3Tt5mk" to="hm2y:4rZeNQ6MpKo" resolve="right" />
                      </node>
                      <node concept="30H73N" id="STlwLYiWgs" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEF" id="STlwLYiWiA" role="356sEH">
            <property role="TrG5h" value=")" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="STlwLYiWgu" role="3acgRq">
      <ref role="30HIoZ" to="hm2y:4rZeNQ6MXMV" resolve="LogicalOrExpression" />
      <node concept="gft3U" id="STlwLYiWgv" role="1lVwrX">
        <node concept="356sEK" id="STlwLYiWgw" role="gfFT$">
          <node concept="2EixSi" id="STlwLYiWgM" role="2EinRH" />
          <node concept="356sEF" id="STlwLYiWiB" role="356sEH">
            <property role="TrG5h" value="qlOr(" />
          </node>
          <node concept="356sEF" id="STlwLYiWgx" role="356sEH">
            <property role="TrG5h" value="lhs" />
            <node concept="29HgVG" id="STlwLYiWgy" role="lGtFl">
              <node concept="3NFfHV" id="STlwLYiWgz" role="3NFExx">
                <node concept="3clFbS" id="STlwLYiWg$" role="2VODD2">
                  <node concept="3clFbF" id="STlwLYiWg_" role="3cqZAp">
                    <node concept="2OqwBi" id="STlwLYiWgA" role="3clFbG">
                      <node concept="30H73N" id="STlwLYiWgB" role="2Oq$k0" />
                      <node concept="3TrEf2" id="STlwLYiWgC" role="2OqNvi">
                        <ref role="3Tt5mk" to="hm2y:4rZeNQ6MpKm" resolve="left" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEF" id="STlwLYiWgD" role="356sEH">
            <property role="TrG5h" value=", " />
          </node>
          <node concept="356sEF" id="STlwLYiWgE" role="356sEH">
            <property role="TrG5h" value="rhs" />
            <node concept="29HgVG" id="STlwLYiWgF" role="lGtFl">
              <node concept="3NFfHV" id="STlwLYiWgG" role="3NFExx">
                <node concept="3clFbS" id="STlwLYiWgH" role="2VODD2">
                  <node concept="3clFbF" id="STlwLYiWgI" role="3cqZAp">
                    <node concept="2OqwBi" id="STlwLYiWgJ" role="3clFbG">
                      <node concept="3TrEf2" id="STlwLYiWgK" role="2OqNvi">
                        <ref role="3Tt5mk" to="hm2y:4rZeNQ6MpKo" resolve="right" />
                      </node>
                      <node concept="30H73N" id="STlwLYiWgL" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEF" id="STlwLYiWiC" role="356sEH">
            <property role="TrG5h" value=")" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="STlwLYiWgN" role="3acgRq">
      <ref role="30HIoZ" to="hm2y:7kYh9WsvduW" resolve="LogicalIffExpression" />
      <node concept="gft3U" id="STlwLYiWgO" role="1lVwrX">
        <node concept="356sEK" id="STlwLYiWgP" role="gfFT$">
          <node concept="2EixSi" id="STlwLYiWh7" role="2EinRH" />
          <node concept="356sEF" id="STlwLYiWiD" role="356sEH">
            <property role="TrG5h" value="qlIff(" />
          </node>
          <node concept="356sEF" id="STlwLYiWgQ" role="356sEH">
            <property role="TrG5h" value="lhs" />
            <node concept="29HgVG" id="STlwLYiWgR" role="lGtFl">
              <node concept="3NFfHV" id="STlwLYiWgS" role="3NFExx">
                <node concept="3clFbS" id="STlwLYiWgT" role="2VODD2">
                  <node concept="3clFbF" id="STlwLYiWgU" role="3cqZAp">
                    <node concept="2OqwBi" id="STlwLYiWgV" role="3clFbG">
                      <node concept="30H73N" id="STlwLYiWgW" role="2Oq$k0" />
                      <node concept="3TrEf2" id="STlwLYiWgX" role="2OqNvi">
                        <ref role="3Tt5mk" to="hm2y:4rZeNQ6MpKm" resolve="left" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEF" id="STlwLYiWgY" role="356sEH">
            <property role="TrG5h" value=", " />
          </node>
          <node concept="356sEF" id="STlwLYiWgZ" role="356sEH">
            <property role="TrG5h" value="rhs" />
            <node concept="29HgVG" id="STlwLYiWh0" role="lGtFl">
              <node concept="3NFfHV" id="STlwLYiWh1" role="3NFExx">
                <node concept="3clFbS" id="STlwLYiWh2" role="2VODD2">
                  <node concept="3clFbF" id="STlwLYiWh3" role="3cqZAp">
                    <node concept="2OqwBi" id="STlwLYiWh4" role="3clFbG">
                      <node concept="3TrEf2" id="STlwLYiWh5" role="2OqNvi">
                        <ref role="3Tt5mk" to="hm2y:4rZeNQ6MpKo" resolve="right" />
                      </node>
                      <node concept="30H73N" id="STlwLYiWh6" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEF" id="STlwLYiWiE" role="356sEH">
            <property role="TrG5h" value=")" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="STlwLYiWh8" role="3acgRq">
      <ref role="30HIoZ" to="hm2y:1k3knzd4P65" resolve="LogicalImpliesExpression" />
      <node concept="gft3U" id="STlwLYiWh9" role="1lVwrX">
        <node concept="356sEK" id="STlwLYiWha" role="gfFT$">
          <node concept="2EixSi" id="STlwLYiWhs" role="2EinRH" />
          <node concept="356sEF" id="STlwLYiWiF" role="356sEH">
            <property role="TrG5h" value="qlImplies(" />
          </node>
          <node concept="356sEF" id="STlwLYiWhb" role="356sEH">
            <property role="TrG5h" value="lhs" />
            <node concept="29HgVG" id="STlwLYiWhc" role="lGtFl">
              <node concept="3NFfHV" id="STlwLYiWhd" role="3NFExx">
                <node concept="3clFbS" id="STlwLYiWhe" role="2VODD2">
                  <node concept="3clFbF" id="STlwLYiWhf" role="3cqZAp">
                    <node concept="2OqwBi" id="STlwLYiWhg" role="3clFbG">
                      <node concept="30H73N" id="STlwLYiWhh" role="2Oq$k0" />
                      <node concept="3TrEf2" id="STlwLYiWhi" role="2OqNvi">
                        <ref role="3Tt5mk" to="hm2y:4rZeNQ6MpKm" resolve="left" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEF" id="STlwLYiWhj" role="356sEH">
            <property role="TrG5h" value=", " />
          </node>
          <node concept="356sEF" id="STlwLYiWhk" role="356sEH">
            <property role="TrG5h" value="rhs" />
            <node concept="29HgVG" id="STlwLYiWhl" role="lGtFl">
              <node concept="3NFfHV" id="STlwLYiWhm" role="3NFExx">
                <node concept="3clFbS" id="STlwLYiWhn" role="2VODD2">
                  <node concept="3clFbF" id="STlwLYiWho" role="3cqZAp">
                    <node concept="2OqwBi" id="STlwLYiWhp" role="3clFbG">
                      <node concept="3TrEf2" id="STlwLYiWhq" role="2OqNvi">
                        <ref role="3Tt5mk" to="hm2y:4rZeNQ6MpKo" resolve="right" />
                      </node>
                      <node concept="30H73N" id="STlwLYiWhr" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEF" id="STlwLYiWiG" role="356sEH">
            <property role="TrG5h" value=")" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="STlwLYiWiJ" role="3acgRq">
      <ref role="30HIoZ" to="hm2y:4rZeNQ6NtQV" resolve="UnaryMinusExpression" />
      <node concept="gft3U" id="STlwLYiWiK" role="1lVwrX">
        <node concept="356sEK" id="STlwLYiWiL" role="gfFT$">
          <node concept="2EixSi" id="STlwLYiWiM" role="2EinRH" />
          <node concept="356sEF" id="STlwLYiWiN" role="356sEH">
            <property role="TrG5h" value="qlUnaryMinus(" />
          </node>
          <node concept="356sEF" id="STlwLYiWiO" role="356sEH">
            <property role="TrG5h" value="lhs" />
            <node concept="29HgVG" id="STlwLYiWiP" role="lGtFl">
              <node concept="3NFfHV" id="STlwLYiWiQ" role="3NFExx">
                <node concept="3clFbS" id="STlwLYiWiR" role="2VODD2">
                  <node concept="3clFbF" id="STlwLYiWiS" role="3cqZAp">
                    <node concept="2OqwBi" id="STlwLYiWiT" role="3clFbG">
                      <node concept="30H73N" id="STlwLYiWiU" role="2Oq$k0" />
                      <node concept="3TrEf2" id="STlwLYiWiV" role="2OqNvi">
                        <ref role="3Tt5mk" to="hm2y:4rZeNQ6NgXF" resolve="expr_old" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEF" id="STlwLYiWj5" role="356sEH">
            <property role="TrG5h" value=")" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="STlwLYiWj6" role="3acgRq">
      <ref role="30HIoZ" to="hm2y:4rZeNQ6NgXE" resolve="LogicalNotExpression" />
      <node concept="gft3U" id="STlwLYiWj7" role="1lVwrX">
        <node concept="356sEK" id="STlwLYiWj8" role="gfFT$">
          <node concept="2EixSi" id="STlwLYiWj9" role="2EinRH" />
          <node concept="356sEF" id="STlwLYiWja" role="356sEH">
            <property role="TrG5h" value="qlNot(" />
          </node>
          <node concept="356sEF" id="STlwLYiWjb" role="356sEH">
            <property role="TrG5h" value="lhs" />
            <node concept="29HgVG" id="STlwLYiWjc" role="lGtFl">
              <node concept="3NFfHV" id="STlwLYiWjd" role="3NFExx">
                <node concept="3clFbS" id="STlwLYiWje" role="2VODD2">
                  <node concept="3clFbF" id="STlwLYiWjf" role="3cqZAp">
                    <node concept="2OqwBi" id="STlwLYiWjg" role="3clFbG">
                      <node concept="30H73N" id="STlwLYiWjh" role="2Oq$k0" />
                      <node concept="3TrEf2" id="STlwLYiWji" role="2OqNvi">
                        <ref role="3Tt5mk" to="hm2y:4rZeNQ6NgXF" resolve="expr_old" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEF" id="STlwLYiWjs" role="356sEH">
            <property role="TrG5h" value=")" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="STlwLYl1NI" role="3acgRq">
      <ref role="30HIoZ" to="zg3i:4FCftMPq_h4" resolve="DerivedValueReference" />
      <node concept="gft3U" id="STlwLYl1NJ" role="1lVwrX">
        <node concept="356sEF" id="STlwLYl1NK" role="gfFT$">
          <property role="TrG5h" value="questionId" />
          <node concept="17Uvod" id="STlwLYl1NL" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="STlwLYl1NM" role="3zH0cK">
              <node concept="3clFbS" id="STlwLYl1NN" role="2VODD2">
                <node concept="3clFbF" id="STlwLYl1NO" role="3cqZAp">
                  <node concept="2YIFZM" id="STlwLYl1NP" role="3clFbG">
                    <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <node concept="Xl_RD" id="STlwLYl1NQ" role="37wK5m">
                      <property role="Xl_RC" value="val('%s')" />
                    </node>
                    <node concept="2OqwBi" id="STlwLYl1NR" role="37wK5m">
                      <node concept="2OqwBi" id="STlwLYl1NS" role="2Oq$k0">
                        <node concept="30H73N" id="STlwLYl1NT" role="2Oq$k0" />
                        <node concept="3TrEf2" id="STlwLYl1NU" role="2OqNvi">
                          <ref role="3Tt5mk" to="zg3i:4FCftMPq_h5" resolve="derivedValue" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="STlwLYl1NV" role="2OqNvi">
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
    <node concept="3aamgX" id="STlwLYl1NW" role="3acgRq">
      <ref role="30HIoZ" to="5qo5:4rZeNQ6Oerq" resolve="NumberLiteral" />
      <node concept="gft3U" id="STlwLYl1NX" role="1lVwrX">
        <node concept="356sEF" id="STlwLYl1NY" role="gfFT$">
          <property role="TrG5h" value="numberLiteral" />
          <node concept="17Uvod" id="STlwLYl1NZ" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="STlwLYl1O0" role="3zH0cK">
              <node concept="3clFbS" id="STlwLYl1O1" role="2VODD2">
                <node concept="3clFbF" id="STlwLYl1O2" role="3cqZAp">
                  <node concept="2YIFZM" id="STlwLYl1O3" role="3clFbG">
                    <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <node concept="Xl_RD" id="STlwLYl1O4" role="37wK5m">
                      <property role="Xl_RC" value="%s" />
                    </node>
                    <node concept="2OqwBi" id="STlwLYl1O5" role="37wK5m">
                      <node concept="3TrcHB" id="STlwLYl1O9" role="2OqNvi">
                        <ref role="3TsBF5" to="5qo5:4rZeNQ6Oert" resolve="value" />
                      </node>
                      <node concept="30H73N" id="STlwLYl1Oa" role="2Oq$k0" />
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
          <property role="TrG5h" value="&lt;body class=&quot;valign-wrapper&quot; onload=&quot;initialize()&quot;&gt;" />
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
                      <property role="TrG5h" value="&lt;/form&gt;&lt;div class=&quot;actions&quot;&gt;&lt;button type=&quot;button&quot; id=&quot;save-response&quot; onclick=&quot;saveResponse()&quot; disabled&gt;Save completed response&lt;/button&gt; &lt;span id=&quot;save-status&quot; aria-live=&quot;polite&quot;&gt;&lt;/span&gt;&lt;/div&gt;" />
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
          <node concept="356sEK" id="4Vmwa5OidB9" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidBa" role="356sEH">
              <property role="TrG5h" value="let qlStateChanged = false;" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidBb" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidBc" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidBd" role="356sEH">
              <property role="TrG5h" value="const qlTitleNode = document.querySelector('.card-title');" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidBe" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidBf" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidBg" role="356sEH">
              <property role="TrG5h" value="const qlFormName = qlTitleNode ? qlTitleNode.textContent.trim() : document.title;" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidBh" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidBi" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidBj" role="356sEH">
              <property role="TrG5h" value="const qlStorageKey = 'ql-response:' + qlFormName;" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidBk" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidBl" role="383Ya9">
            <node concept="2EixSi" id="4Vmwa5OidBm" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidBn" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidBo" role="356sEH">
              <property role="TrG5h" value="function val(id) {" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidBp" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidBq" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidBr" role="356sEH">
              <property role="TrG5h" value="  const elem = document.getElementById(id);" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidBs" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidBt" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidBu" role="356sEH">
              <property role="TrG5h" value="  const container = document.getElementById(id + '_container');" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidBv" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidBw" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidBx" role="356sEH">
              <property role="TrG5h" value="  if (!elem || (container &amp;&amp; container.style.display === 'none')) return undefined;" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidBy" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidBz" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidB$" role="356sEH">
              <property role="TrG5h" value="  if (elem.type === 'checkbox') {" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidB_" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidBA" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidBB" role="356sEH">
              <property role="TrG5h" value="    return elem.dataset.answered === 'true' ? elem.checked : undefined;" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidBC" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidBD" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidBE" role="356sEH">
              <property role="TrG5h" value="  }" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidBF" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidBG" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidBH" role="356sEH">
              <property role="TrG5h" value="  if (elem.value === '') return undefined;" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidBI" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidBJ" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidBK" role="356sEH">
              <property role="TrG5h" value="  if (elem.type === 'number') {" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidBL" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidBM" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidBN" role="356sEH">
              <property role="TrG5h" value="    const number = Number(elem.value);" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidBO" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidBP" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidBQ" role="356sEH">
              <property role="TrG5h" value="    return Number.isFinite(number) ? number : undefined;" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidBR" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidBS" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidBT" role="356sEH">
              <property role="TrG5h" value="  }" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidBU" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidBV" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidBW" role="356sEH">
              <property role="TrG5h" value="  return elem.value;" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidBX" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidBY" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidBZ" role="356sEH">
              <property role="TrG5h" value="}" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidC0" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidC1" role="383Ya9">
            <node concept="2EixSi" id="4Vmwa5OidC2" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidC3" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidC4" role="356sEH">
              <property role="TrG5h" value="function qlBinary(left, right, operation) {" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidC5" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidC6" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidC7" role="356sEH">
              <property role="TrG5h" value="  if (left === undefined || right === undefined) return undefined;" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidC8" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidC9" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidCa" role="356sEH">
              <property role="TrG5h" value="  const result = operation(left, right);" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidCb" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidCc" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidCd" role="356sEH">
              <property role="TrG5h" value="  return typeof result === 'number' &amp;&amp; !Number.isFinite(result) ? undefined : result;" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidCe" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidCf" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidCg" role="356sEH">
              <property role="TrG5h" value="}" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidCh" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidCi" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidCj" role="356sEH">
              <property role="TrG5h" value="function qlAdd(left, right) { return qlBinary(left, right, (a, b) =&gt; a + b); }" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidCk" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidCl" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidCm" role="356sEH">
              <property role="TrG5h" value="function qlSubtract(left, right) { return qlBinary(left, right, (a, b) =&gt; a - b); }" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidCn" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidCo" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidCp" role="356sEH">
              <property role="TrG5h" value="function qlMultiply(left, right) { return qlBinary(left, right, (a, b) =&gt; a * b); }" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidCq" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidCr" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidCs" role="356sEH">
              <property role="TrG5h" value="function qlDivide(left, right) { return qlBinary(left, right, (a, b) =&gt; a / b); }" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidCt" role="2EinRH" />
          </node>
          <node concept="356sEK" id="STlwLYiWhP" role="383Ya9">
            <node concept="356sEF" id="STlwLYiWhQ" role="356sEH">
              <property role="TrG5h" value="function qlModulo(left, right) { return qlBinary(left, right, (a, b) =&gt; a % b); }" />
            </node>
            <node concept="2EixSi" id="STlwLYiWhR" role="2EinRH" />
          </node>
          <node concept="356sEK" id="STlwLYiWhS" role="383Ya9">
            <node concept="356sEF" id="STlwLYiWhT" role="356sEH">
              <property role="TrG5h" value="function qlIff(left, right) { return qlBinary(left, right, (a, b) =&gt; Boolean(a) === Boolean(b)); }" />
            </node>
            <node concept="2EixSi" id="STlwLYiWhU" role="2EinRH" />
          </node>
          <node concept="356sEK" id="STlwLYiWhV" role="383Ya9">
            <node concept="356sEF" id="STlwLYiWhW" role="356sEH">
              <property role="TrG5h" value="function qlImplies(left, right) { return qlBinary(left, right, (a, b) =&gt; !Boolean(a) || Boolean(b)); }" />
            </node>
            <node concept="2EixSi" id="STlwLYiWhX" role="2EinRH" />
          </node>
          <node concept="356sEK" id="STlwLYiWhY" role="383Ya9">
            <node concept="356sEF" id="STlwLYiWhZ" role="356sEH">
              <property role="TrG5h" value="function qlUnaryMinus(value) {" />
            </node>
            <node concept="2EixSi" id="STlwLYiWi0" role="2EinRH" />
          </node>
          <node concept="356sEK" id="STlwLYiWi1" role="383Ya9">
            <node concept="356sEF" id="STlwLYiWi2" role="356sEH">
              <property role="TrG5h" value="  if (value === undefined) return undefined;" />
            </node>
            <node concept="2EixSi" id="STlwLYiWi3" role="2EinRH" />
          </node>
          <node concept="356sEK" id="STlwLYiWi4" role="383Ya9">
            <node concept="356sEF" id="STlwLYiWi5" role="356sEH">
              <property role="TrG5h" value="  const result = -value;" />
            </node>
            <node concept="2EixSi" id="STlwLYiWi6" role="2EinRH" />
          </node>
          <node concept="356sEK" id="STlwLYiWi7" role="383Ya9">
            <node concept="356sEF" id="STlwLYiWi8" role="356sEH">
              <property role="TrG5h" value="  return Number.isFinite(result) ? result : undefined;" />
            </node>
            <node concept="2EixSi" id="STlwLYiWi9" role="2EinRH" />
          </node>
          <node concept="356sEK" id="STlwLYiWia" role="383Ya9">
            <node concept="356sEF" id="STlwLYiWib" role="356sEH">
              <property role="TrG5h" value="}" />
            </node>
            <node concept="2EixSi" id="STlwLYiWic" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidCu" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidCv" role="356sEH">
              <property role="TrG5h" value="function qlLess(left, right) { return qlBinary(left, right, (a, b) =&gt; a &lt; b); }" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidCw" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidCx" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidCy" role="356sEH">
              <property role="TrG5h" value="function qlGreater(left, right) { return qlBinary(left, right, (a, b) =&gt; a &gt; b); }" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidCz" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidC$" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidC_" role="356sEH">
              <property role="TrG5h" value="function qlLessOrEqual(left, right) { return qlBinary(left, right, (a, b) =&gt; a &lt;= b); }" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidCA" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidCB" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidCC" role="356sEH">
              <property role="TrG5h" value="function qlGreaterOrEqual(left, right) { return qlBinary(left, right, (a, b) =&gt; a &gt;= b); }" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidCD" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidCE" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidCF" role="356sEH">
              <property role="TrG5h" value="function qlEqual(left, right) { return qlBinary(left, right, (a, b) =&gt; a === b); }" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidCG" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidCH" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidCI" role="356sEH">
              <property role="TrG5h" value="function qlNotEqual(left, right) { return qlBinary(left, right, (a, b) =&gt; a !== b); }" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidCJ" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidCK" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidCL" role="356sEH">
              <property role="TrG5h" value="function qlAnd(left, right) { return qlBinary(left, right, (a, b) =&gt; Boolean(a) &amp;&amp; Boolean(b)); }" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidCM" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidCN" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidCO" role="356sEH">
              <property role="TrG5h" value="function qlOr(left, right) { return qlBinary(left, right, (a, b) =&gt; Boolean(a) || Boolean(b)); }" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidCP" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidCQ" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidCR" role="356sEH">
              <property role="TrG5h" value="function qlNot(value) { return value === undefined ? undefined : !value; }" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidCS" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidCT" role="383Ya9">
            <node concept="2EixSi" id="4Vmwa5OidCU" role="2EinRH" />
          </node>
          <node concept="356sEK" id="STlwLYiWl0" role="383Ya9">
            <node concept="356sEF" id="STlwLYiWl1" role="356sEH">
              <property role="TrG5h" value="let qlVisibilityId = '';" />
            </node>
            <node concept="2EixSi" id="STlwLYiWl2" role="2EinRH" />
          </node>
          <node concept="356sEK" id="STlwLYiWl3" role="383Ya9">
            <node concept="356sEF" id="STlwLYiWl4" role="356sEH">
              <property role="TrG5h" value="let qlVisibilityConditions = [];" />
            </node>
            <node concept="2EixSi" id="STlwLYiWl5" role="2EinRH" />
          </node>
          <node concept="356sEK" id="STlwLYiWl6" role="383Ya9">
            <node concept="356sEF" id="STlwLYiWl7" role="356sEH">
              <property role="TrG5h" value="function beginVisibility(id) {" />
            </node>
            <node concept="2EixSi" id="STlwLYiWl8" role="2EinRH" />
          </node>
          <node concept="356sEK" id="STlwLYiWl9" role="383Ya9">
            <node concept="356sEF" id="STlwLYiWla" role="356sEH">
              <property role="TrG5h" value="  qlVisibilityId = id;" />
            </node>
            <node concept="2EixSi" id="STlwLYiWlb" role="2EinRH" />
          </node>
          <node concept="356sEK" id="STlwLYiWlc" role="383Ya9">
            <node concept="356sEF" id="STlwLYiWld" role="356sEH">
              <property role="TrG5h" value="  qlVisibilityConditions = [];" />
            </node>
            <node concept="2EixSi" id="STlwLYiWle" role="2EinRH" />
          </node>
          <node concept="356sEK" id="STlwLYiWlf" role="383Ya9">
            <node concept="356sEF" id="STlwLYiWlg" role="356sEH">
              <property role="TrG5h" value="}" />
            </node>
            <node concept="2EixSi" id="STlwLYiWlh" role="2EinRH" />
          </node>
          <node concept="356sEK" id="STlwLYiWli" role="383Ya9">
            <node concept="356sEF" id="STlwLYiWlj" role="356sEH">
              <property role="TrG5h" value="function addVisibilityCondition(condition) {" />
            </node>
            <node concept="2EixSi" id="STlwLYiWlk" role="2EinRH" />
          </node>
          <node concept="356sEK" id="STlwLYiWll" role="383Ya9">
            <node concept="356sEF" id="STlwLYiWlm" role="356sEH">
              <property role="TrG5h" value="  qlVisibilityConditions.push(Boolean(condition));" />
            </node>
            <node concept="2EixSi" id="STlwLYiWln" role="2EinRH" />
          </node>
          <node concept="356sEK" id="STlwLYiWlo" role="383Ya9">
            <node concept="356sEF" id="STlwLYiWlp" role="356sEH">
              <property role="TrG5h" value="}" />
            </node>
            <node concept="2EixSi" id="STlwLYiWlq" role="2EinRH" />
          </node>
          <node concept="356sEK" id="STlwLYiWlr" role="383Ya9">
            <node concept="356sEF" id="STlwLYiWls" role="356sEH">
              <property role="TrG5h" value="function finishVisibility() {" />
            </node>
            <node concept="2EixSi" id="STlwLYiWlt" role="2EinRH" />
          </node>
          <node concept="356sEK" id="STlwLYiWlu" role="383Ya9">
            <node concept="356sEF" id="STlwLYiWlv" role="356sEH">
              <property role="TrG5h" value="  const visible = qlVisibilityConditions.length === 0 || qlVisibilityConditions.every(Boolean);" />
            </node>
            <node concept="2EixSi" id="STlwLYiWlw" role="2EinRH" />
          </node>
          <node concept="356sEK" id="STlwLYiWlx" role="383Ya9">
            <node concept="356sEF" id="STlwLYiWly" role="356sEH">
              <property role="TrG5h" value="  showIf(qlVisibilityId, visible);" />
            </node>
            <node concept="2EixSi" id="STlwLYiWlz" role="2EinRH" />
          </node>
          <node concept="356sEK" id="STlwLYiWl$" role="383Ya9">
            <node concept="356sEF" id="STlwLYiWl_" role="356sEH">
              <property role="TrG5h" value="}" />
            </node>
            <node concept="2EixSi" id="STlwLYiWlA" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidCV" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidCW" role="356sEH">
              <property role="TrG5h" value="function showIf(id, condition) {" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidCX" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidCY" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidCZ" role="356sEH">
              <property role="TrG5h" value="  const container = document.getElementById(id + '_container');" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidD0" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidD1" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidD2" role="356sEH">
              <property role="TrG5h" value="  if (!container) return;" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidD3" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidD4" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidD5" role="356sEH">
              <property role="TrG5h" value="  const visible = Boolean(condition);" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidD6" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidD7" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidD8" role="356sEH">
              <property role="TrG5h" value="  const display = visible ? 'block' : 'none';" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidD9" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidDa" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidDb" role="356sEH">
              <property role="TrG5h" value="  if (container.style.display !== display) {" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidDc" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidDd" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidDe" role="356sEH">
              <property role="TrG5h" value="    container.style.display = display;" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidDf" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidDg" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidDh" role="356sEH">
              <property role="TrG5h" value="    qlStateChanged = true;" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidDi" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidDj" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidDk" role="356sEH">
              <property role="TrG5h" value="  }" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidDl" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidDm" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidDn" role="356sEH">
              <property role="TrG5h" value="  if (!visible) {" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidDo" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidDp" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidDq" role="356sEH">
              <property role="TrG5h" value="    const input = document.getElementById(id);" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidDr" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidDs" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidDt" role="356sEH">
              <property role="TrG5h" value="    if (input &amp;&amp; !input.readOnly) {" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidDu" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidDv" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidDw" role="356sEH">
              <property role="TrG5h" value="      if (input.type === 'checkbox') {" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidDx" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidDy" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidDz" role="356sEH">
              <property role="TrG5h" value="        if (input.checked || input.dataset.answered === 'true') {" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidD$" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidD_" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidDA" role="356sEH">
              <property role="TrG5h" value="          input.checked = false;" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidDB" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidDC" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidDD" role="356sEH">
              <property role="TrG5h" value="          input.dataset.answered = 'false';" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidDE" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidDF" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidDG" role="356sEH">
              <property role="TrG5h" value="          qlStateChanged = true;" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidDH" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidDI" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidDJ" role="356sEH">
              <property role="TrG5h" value="        }" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidDK" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidDL" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidDM" role="356sEH">
              <property role="TrG5h" value="      } else if (input.value !== '') {" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidDN" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidDO" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidDP" role="356sEH">
              <property role="TrG5h" value="        input.value = '';" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidDQ" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidDR" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidDS" role="356sEH">
              <property role="TrG5h" value="        qlStateChanged = true;" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidDT" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidDU" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidDV" role="356sEH">
              <property role="TrG5h" value="      }" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidDW" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidDX" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidDY" role="356sEH">
              <property role="TrG5h" value="    }" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidDZ" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidE0" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidE1" role="356sEH">
              <property role="TrG5h" value="  }" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidE2" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidE3" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidE4" role="356sEH">
              <property role="TrG5h" value="}" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidE5" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidE6" role="383Ya9">
            <node concept="2EixSi" id="4Vmwa5OidE7" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidE8" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidE9" role="356sEH">
              <property role="TrG5h" value="function updateValue(id, value) {" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidEa" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidEb" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidEc" role="356sEH">
              <property role="TrG5h" value="  const elem = document.getElementById(id);" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidEd" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidEe" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidEf" role="356sEH">
              <property role="TrG5h" value="  if (!elem) return;" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidEg" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidEh" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidEi" role="356sEH">
              <property role="TrG5h" value="  const next = value === undefined || value === null || (typeof value === 'number' &amp;&amp; !Number.isFinite(value)) ? '' : String(value);" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidEj" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidEk" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidEl" role="356sEH">
              <property role="TrG5h" value="  if (elem.value !== next) {" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidEm" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidEn" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidEo" role="356sEH">
              <property role="TrG5h" value="    elem.value = next;" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidEp" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidEq" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidEr" role="356sEH">
              <property role="TrG5h" value="    qlStateChanged = true;" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidEs" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidEt" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidEu" role="356sEH">
              <property role="TrG5h" value="  }" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidEv" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidEw" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidEx" role="356sEH">
              <property role="TrG5h" value="}" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidEy" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidEz" role="383Ya9">
            <node concept="2EixSi" id="4Vmwa5OidE$" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidE_" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidEA" role="356sEH">
              <property role="TrG5h" value="function visibleQuestionInputs() {" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidEB" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidEC" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidED" role="356sEH">
              <property role="TrG5h" value="  return Array.from(document.querySelectorAll('[data-ql-question]')).filter((input) =&gt; {" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidEE" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidEF" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidEG" role="356sEH">
              <property role="TrG5h" value="    const container = document.getElementById(input.id + '_container');" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidEH" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidEI" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidEJ" role="356sEH">
              <property role="TrG5h" value="    return !container || container.style.display !== 'none';" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidEK" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidEL" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidEM" role="356sEH">
              <property role="TrG5h" value="  });" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidEN" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidEO" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidEP" role="356sEH">
              <property role="TrG5h" value="}" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidEQ" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidER" role="383Ya9">
            <node concept="2EixSi" id="4Vmwa5OidES" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidET" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidEU" role="356sEH">
              <property role="TrG5h" value="function currentAnswers() {" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidEV" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidEW" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidEX" role="356sEH">
              <property role="TrG5h" value="  const answers = {};" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidEY" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidEZ" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidF0" role="356sEH">
              <property role="TrG5h" value="  for (const input of document.querySelectorAll('[data-ql-question]')) {" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidF1" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidF2" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidF3" role="356sEH">
              <property role="TrG5h" value="    const answer = val(input.id);" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidF4" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidF5" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidF6" role="356sEH">
              <property role="TrG5h" value="    if (answer !== undefined) answers[input.id] = answer;" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidF7" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidF8" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidF9" role="356sEH">
              <property role="TrG5h" value="  }" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidFa" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidFb" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidFc" role="356sEH">
              <property role="TrG5h" value="  return answers;" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidFd" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidFe" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidFf" role="356sEH">
              <property role="TrG5h" value="}" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidFg" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidFh" role="383Ya9">
            <node concept="2EixSi" id="4Vmwa5OidFi" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidFj" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidFk" role="356sEH">
              <property role="TrG5h" value="function responseData() {" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidFl" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidFm" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidFn" role="356sEH">
              <property role="TrG5h" value="  return { form: qlFormName, savedAt: new Date().toISOString(), answers: currentAnswers() };" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidFo" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidFp" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidFq" role="356sEH">
              <property role="TrG5h" value="}" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidFr" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidFs" role="383Ya9">
            <node concept="2EixSi" id="4Vmwa5OidFt" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidFu" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidFv" role="356sEH">
              <property role="TrG5h" value="function updateCompletion() {" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidFw" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidFx" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidFy" role="356sEH">
              <property role="TrG5h" value="  const questions = visibleQuestionInputs();" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidFz" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidF$" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidF_" role="356sEH">
              <property role="TrG5h" value="  const pending = questions.filter((input) =&gt; val(input.id) === undefined).length;" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidFA" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidFB" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidFC" role="356sEH">
              <property role="TrG5h" value="  const button = document.getElementById('save-response');" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidFD" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidFE" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidFF" role="356sEH">
              <property role="TrG5h" value="  const status = document.getElementById('save-status');" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidFG" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidFH" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidFI" role="356sEH">
              <property role="TrG5h" value="  if (button) button.disabled = pending &gt; 0;" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidFJ" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidFK" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidFL" role="356sEH">
              <property role="TrG5h" value="  if (pending &gt; 0) {" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidFM" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidFN" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidFO" role="356sEH">
              <property role="TrG5h" value="    if (status) status.textContent = pending + ' visible question(s) unanswered.';" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidFP" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidFQ" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidFR" role="356sEH">
              <property role="TrG5h" value="    return;" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidFS" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidFT" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidFU" role="356sEH">
              <property role="TrG5h" value="  }" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidFV" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidFW" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidFX" role="356sEH">
              <property role="TrG5h" value="  try {" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidFY" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidFZ" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidG0" role="356sEH">
              <property role="TrG5h" value="    window.localStorage.setItem(qlStorageKey, JSON.stringify(responseData()));" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidG1" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidG2" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidG3" role="356sEH">
              <property role="TrG5h" value="    if (status) status.textContent = 'Completed response saved in this browser.';" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidG4" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidG5" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidG6" role="356sEH">
              <property role="TrG5h" value="  } catch (error) {" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidG7" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidG8" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidG9" role="356sEH">
              <property role="TrG5h" value="    if (status) status.textContent = 'All visible questions are answered, but local saving failed: ' + error.message;" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidGa" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidGb" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidGc" role="356sEH">
              <property role="TrG5h" value="  }" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidGd" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidGe" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidGf" role="356sEH">
              <property role="TrG5h" value="}" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidGg" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidGh" role="383Ya9">
            <node concept="2EixSi" id="4Vmwa5OidGi" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidGj" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidGk" role="356sEH">
              <property role="TrG5h" value="function saveResponse() {" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidGl" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidGm" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidGn" role="356sEH">
              <property role="TrG5h" value="  const pending = visibleQuestionInputs().filter((input) =&gt; val(input.id) === undefined);" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidGo" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidGp" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidGq" role="356sEH">
              <property role="TrG5h" value="  if (pending.length &gt; 0) {" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidGr" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidGs" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidGt" role="356sEH">
              <property role="TrG5h" value="    const status = document.getElementById('save-status');" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidGu" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidGv" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidGw" role="356sEH">
              <property role="TrG5h" value="    if (status) status.textContent = pending.length + ' visible question(s) unanswered.';" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidGx" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidGy" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidGz" role="356sEH">
              <property role="TrG5h" value="    return;" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidG$" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidG_" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidGA" role="356sEH">
              <property role="TrG5h" value="  }" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidGB" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidGC" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidGD" role="356sEH">
              <property role="TrG5h" value="  const json = JSON.stringify(responseData(), null, 2);" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidGE" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidGF" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidGG" role="356sEH">
              <property role="TrG5h" value="  try {" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidGH" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidGI" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidGJ" role="356sEH">
              <property role="TrG5h" value="    window.localStorage.setItem(qlStorageKey, json);" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidGK" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidGL" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidGM" role="356sEH">
              <property role="TrG5h" value="  } catch (error) {" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidGN" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidGO" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidGP" role="356sEH">
              <property role="TrG5h" value="    const status = document.getElementById('save-status');" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidGQ" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidGR" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidGS" role="356sEH">
              <property role="TrG5h" value="    if (status) status.textContent = 'Local saving failed: ' + error.message;" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidGT" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidGU" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidGV" role="356sEH">
              <property role="TrG5h" value="  }" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidGW" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidGX" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidGY" role="356sEH">
              <property role="TrG5h" value="  const blob = new Blob([json], { type: 'application/json' });" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidGZ" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidH0" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidH1" role="356sEH">
              <property role="TrG5h" value="  const link = document.createElement('a');" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidH2" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidH3" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidH4" role="356sEH">
              <property role="TrG5h" value="  link.href = URL.createObjectURL(blob);" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidH5" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidH6" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidH7" role="356sEH">
              <property role="TrG5h" value="  link.download = qlFormName.replace(/[^a-z0-9_-]/gi, '_') + '-response.json';" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidH8" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidH9" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidHa" role="356sEH">
              <property role="TrG5h" value="  link.click();" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidHb" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidHc" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidHd" role="356sEH">
              <property role="TrG5h" value="  setTimeout(() =&gt; URL.revokeObjectURL(link.href), 0);" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidHe" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidHf" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidHg" role="356sEH">
              <property role="TrG5h" value="}" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidHh" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidHi" role="383Ya9">
            <node concept="2EixSi" id="4Vmwa5OidHj" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidHk" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidHl" role="356sEH">
              <property role="TrG5h" value="function initialize() {" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidHm" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidHn" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidHo" role="356sEH">
              <property role="TrG5h" value="  let loadError = '';" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidHp" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidHq" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidHr" role="356sEH">
              <property role="TrG5h" value="  try {" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidHs" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidHt" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidHu" role="356sEH">
              <property role="TrG5h" value="    const saved = window.localStorage.getItem(qlStorageKey);" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidHv" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidHw" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidHx" role="356sEH">
              <property role="TrG5h" value="    if (saved) {" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidHy" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidHz" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidH$" role="356sEH">
              <property role="TrG5h" value="      const response = JSON.parse(saved);" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidH_" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidHA" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidHB" role="356sEH">
              <property role="TrG5h" value="      for (const [id, value] of Object.entries(response.answers || {})) {" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidHC" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidHD" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidHE" role="356sEH">
              <property role="TrG5h" value="        const input = document.getElementById(id);" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidHF" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidHG" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidHH" role="356sEH">
              <property role="TrG5h" value="        if (!input || input.readOnly || value === undefined || value === null) continue;" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidHI" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidHJ" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidHK" role="356sEH">
              <property role="TrG5h" value="        if (input.type === 'checkbox') {" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidHL" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidHM" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidHN" role="356sEH">
              <property role="TrG5h" value="          input.checked = Boolean(value);" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidHO" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidHP" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidHQ" role="356sEH">
              <property role="TrG5h" value="          input.dataset.answered = 'true';" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidHR" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidHS" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidHT" role="356sEH">
              <property role="TrG5h" value="        } else {" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidHU" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidHV" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidHW" role="356sEH">
              <property role="TrG5h" value="          input.value = String(value);" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidHX" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidHY" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidHZ" role="356sEH">
              <property role="TrG5h" value="        }" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidI0" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidI1" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidI2" role="356sEH">
              <property role="TrG5h" value="      }" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidI3" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidI4" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidI5" role="356sEH">
              <property role="TrG5h" value="    }" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidI6" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidI7" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidI8" role="356sEH">
              <property role="TrG5h" value="  } catch (error) {" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidI9" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidIa" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidIb" role="356sEH">
              <property role="TrG5h" value="    loadError = error.message;" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidIc" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidId" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidIe" role="356sEH">
              <property role="TrG5h" value="  }" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidIf" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidIg" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidIh" role="356sEH">
              <property role="TrG5h" value="  update();" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidIi" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidIj" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidIk" role="356sEH">
              <property role="TrG5h" value="  if (loadError) {" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidIl" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidIm" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidIn" role="356sEH">
              <property role="TrG5h" value="    const status = document.getElementById('save-status');" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidIo" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidIp" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidIq" role="356sEH">
              <property role="TrG5h" value="    if (status) status.textContent = 'Could not load saved response: ' + loadError;" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidIr" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidIs" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidIt" role="356sEH">
              <property role="TrG5h" value="  }" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidIu" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4Vmwa5OidIv" role="383Ya9">
            <node concept="356sEF" id="4Vmwa5OidIw" role="356sEH">
              <property role="TrG5h" value="}" />
            </node>
            <node concept="2EixSi" id="4Vmwa5OidIx" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4D$GIrwXE2h" role="383Ya9">
            <node concept="356sEF" id="4D$GIrwXE2i" role="356sEH">
              <property role="TrG5h" value="function update() {&#10;  let iterations = 0;&#10;  do {&#10;    qlStateChanged = false;" />
            </node>
            <node concept="2EixSi" id="4D$GIrwXE2k" role="2EinRH" />
          </node>
          <node concept="356sEQ" id="4D$GIrwXE2p" role="383Ya9">
            <property role="333NGx" value="  " />
            <node concept="356sEK" id="4D$GIrwXE2l" role="383Ya9">
              <node concept="356sEF" id="4D$GIrwXE2m" role="356sEH">
                <property role="TrG5h" value="" />
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
              <property role="TrG5h" value="} while (qlStateChanged &amp;&amp; ++iterations &lt; 100);&#10;  if (qlStateChanged) {&#10;    const status = document.getElementById('save-status');&#10;    if (status) status.textContent = 'Questionnaire did not reach a stable state.';&#10;    return;&#10;  }&#10;  updateCompletion();&#10;}" />
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
                  <property role="TrG5h" value="&quot; type=&quot;checkbox&quot; data-ql-question data-answered=&quot;false&quot; onchange=&quot;this.dataset.answered='true'; update()&quot; /&gt;" />
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
                                <ref role="3Tt5mk" to="zg3i:6vTVXvbANVS" resolve="label" />
                              </node>
                            </node>
                            <node concept="3zqWPK" id="2fKtARxB2ip" role="2OqNvi">
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
                    <ref role="3Tt5mk" to="zg3i:257K23PtZmx" resolve="type" />
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
                <property role="TrG5h" value="&quot; type=&quot;number&quot; step=&quot;any&quot; data-ql-question oninput=&quot;update()&quot; /&gt;" />
              </node>
              <node concept="2EixSi" id="4D$GIrwYRWR" role="2EinRH" />
            </node>
            <node concept="356sEK" id="4D$GIrwYRWT" role="383Ya9">
              <node concept="2EixSi" id="4D$GIrwYRWW" role="2EinRH" />
              <node concept="356sEF" id="4D$GIrwYRWU" role="356sEH">
                <property role="TrG5h" value="&lt;label for=&quot;" />
              </node>
              <node concept="356sEF" id="STlwLYlsn2" role="356sEH">
                <property role="TrG5h" value="sellingPrice" />
                <node concept="17Uvod" id="STlwLYlsn3" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="STlwLYlsn4" role="3zH0cK">
                    <node concept="3clFbS" id="STlwLYlsn5" role="2VODD2">
                      <node concept="3clFbF" id="STlwLYlsn6" role="3cqZAp">
                        <node concept="2OqwBi" id="STlwLYlsn7" role="3clFbG">
                          <node concept="3TrcHB" id="STlwLYlsn8" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                          <node concept="30H73N" id="STlwLYlsn9" role="2Oq$k0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="356sEF" id="STlwLYlsna" role="356sEH">
                <property role="TrG5h" value="&quot;&gt;" />
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
                          <node concept="3zqWPK" id="2fKtARxB2ir" role="2OqNvi">
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
                <property role="TrG5h" value="&quot; type=&quot;text&quot; data-ql-derived readonly&gt;" />
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
                          <node concept="3zqWPK" id="2fKtARxB2it" role="2OqNvi">
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
    <node concept="3aamgX" id="STlwLYiSCl" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="zg3i:6vTVXvbANVN" resolve="Question" />
      <node concept="gft3U" id="STlwLYiSCm" role="1lVwrX">
        <node concept="356WMU" id="STlwLYiSCn" role="gfFT$">
          <node concept="356sEK" id="STlwLYiSCo" role="383Ya9">
            <node concept="356sEF" id="STlwLYiSCp" role="356sEH">
              <property role="TrG5h" value="&lt;div class=&quot;input-field&quot; id=&quot;" />
            </node>
            <node concept="356sEF" id="STlwLYiSCq" role="356sEH">
              <property role="TrG5h" value="sellingPrice" />
              <node concept="17Uvod" id="STlwLYiSCr" role="lGtFl">
                <property role="2qtEX9" value="name" />
                <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                <node concept="3zFVjK" id="STlwLYiSCs" role="3zH0cK">
                  <node concept="3clFbS" id="STlwLYiSCt" role="2VODD2">
                    <node concept="3clFbF" id="STlwLYiSCu" role="3cqZAp">
                      <node concept="2OqwBi" id="STlwLYiSCv" role="3clFbG">
                        <node concept="3TrcHB" id="STlwLYiSCw" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                        <node concept="30H73N" id="STlwLYiSCx" role="2Oq$k0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="356sEF" id="STlwLYiSCy" role="356sEH">
              <property role="TrG5h" value="_container&quot; style=&quot;display: none;&quot;&gt;" />
            </node>
            <node concept="2EixSi" id="STlwLYiSCz" role="2EinRH" />
          </node>
          <node concept="356sEQ" id="STlwLYiSC$" role="383Ya9">
            <property role="333NGx" value="  " />
            <node concept="356sEK" id="STlwLYiSC_" role="383Ya9">
              <node concept="356sEF" id="STlwLYiSCA" role="356sEH">
                <property role="TrG5h" value="&lt;input placeholder=&quot;&quot; id=&quot;" />
              </node>
              <node concept="356sEF" id="STlwLYiSCB" role="356sEH">
                <property role="TrG5h" value="sellingPrice" />
                <node concept="17Uvod" id="STlwLYiSCC" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="STlwLYiSCD" role="3zH0cK">
                    <node concept="3clFbS" id="STlwLYiSCE" role="2VODD2">
                      <node concept="3clFbF" id="STlwLYiSCF" role="3cqZAp">
                        <node concept="2OqwBi" id="STlwLYiSCG" role="3clFbG">
                          <node concept="3TrcHB" id="STlwLYiSCH" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                          <node concept="30H73N" id="STlwLYiSCI" role="2Oq$k0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="356sEF" id="STlwLYiSCJ" role="356sEH">
                <property role="TrG5h" value="&quot; type=&quot;number&quot; step=&quot;1&quot; data-ql-question oninput=&quot;update()&quot; /&gt;" />
              </node>
              <node concept="2EixSi" id="STlwLYiSCK" role="2EinRH" />
            </node>
            <node concept="356sEK" id="STlwLYiSCL" role="383Ya9">
              <node concept="2EixSi" id="STlwLYiSCY" role="2EinRH" />
              <node concept="356sEF" id="STlwLYiSCM" role="356sEH">
                <property role="TrG5h" value="&lt;label for=&quot;" />
              </node>
              <node concept="356sEF" id="STlwLYlsnb" role="356sEH">
                <property role="TrG5h" value="sellingPrice" />
                <node concept="17Uvod" id="STlwLYlsnc" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="STlwLYlsnd" role="3zH0cK">
                    <node concept="3clFbS" id="STlwLYlsne" role="2VODD2">
                      <node concept="3clFbF" id="STlwLYlsnf" role="3cqZAp">
                        <node concept="2OqwBi" id="STlwLYlsng" role="3clFbG">
                          <node concept="3TrcHB" id="STlwLYlsnh" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                          <node concept="30H73N" id="STlwLYlsni" role="2Oq$k0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="356sEF" id="STlwLYlsnj" role="356sEH">
                <property role="TrG5h" value="&quot;&gt;" />
              </node>
              <node concept="356sEF" id="STlwLYiSCN" role="356sEH">
                <property role="TrG5h" value="Price the house was sold for" />
                <node concept="17Uvod" id="STlwLYiSCO" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="STlwLYiSCP" role="3zH0cK">
                    <node concept="3clFbS" id="STlwLYiSCQ" role="2VODD2">
                      <node concept="3clFbF" id="STlwLYiSCR" role="3cqZAp">
                        <node concept="2OqwBi" id="STlwLYiSCS" role="3clFbG">
                          <node concept="2OqwBi" id="STlwLYiSCT" role="2Oq$k0">
                            <node concept="30H73N" id="STlwLYiSCU" role="2Oq$k0" />
                            <node concept="3TrEf2" id="STlwLYiSCV" role="2OqNvi">
                              <ref role="3Tt5mk" to="zg3i:6vTVXvbANVS" resolve="label" />
                            </node>
                          </node>
                          <node concept="3zqWPK" id="2fKtARxB2iv" role="2OqNvi">
                            <ref role="37wK5l" to="tbr6:3Q5enzfMT4l" resolve="asTextString" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="356sEF" id="STlwLYiSCX" role="356sEH">
                <property role="TrG5h" value=":&lt;/label&gt;" />
              </node>
            </node>
          </node>
          <node concept="356sEK" id="STlwLYiSCZ" role="383Ya9">
            <node concept="356sEF" id="STlwLYiSD0" role="356sEH">
              <property role="TrG5h" value="&lt;/div&gt;" />
            </node>
            <node concept="2EixSi" id="STlwLYiSD1" role="2EinRH" />
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="STlwLYiSD2" role="30HLyM">
        <node concept="3clFbS" id="STlwLYiSD3" role="2VODD2">
          <node concept="3clFbF" id="STlwLYiSD4" role="3cqZAp">
            <node concept="2OqwBi" id="STlwLYiSD5" role="3clFbG">
              <node concept="2OqwBi" id="STlwLYiSD6" role="2Oq$k0">
                <node concept="2OqwBi" id="STlwLYiSD7" role="2Oq$k0">
                  <node concept="30H73N" id="STlwLYiSD8" role="2Oq$k0" />
                  <node concept="3TrEf2" id="STlwLYiSD9" role="2OqNvi">
                    <ref role="3Tt5mk" to="zg3i:257K23PtZmx" resolve="type" />
                  </node>
                </node>
                <node concept="2yIwOk" id="STlwLYiSDa" role="2OqNvi" />
              </node>
              <node concept="3O6GUB" id="STlwLYiSDb" role="2OqNvi">
                <node concept="chp4Y" id="STlwLYiSDc" role="3QVz_e">
                  <ref role="cht4Q" to="5qo5:4rZeNQ6Oerp" resolve="IntegerType" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="STlwLYiSDd" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="zg3i:6vTVXvbANVN" resolve="Question" />
      <node concept="gft3U" id="STlwLYiSDe" role="1lVwrX">
        <node concept="356WMU" id="STlwLYiSDf" role="gfFT$">
          <node concept="356sEK" id="STlwLYiSDg" role="383Ya9">
            <node concept="356sEF" id="STlwLYiSDh" role="356sEH">
              <property role="TrG5h" value="&lt;div class=&quot;input-field&quot; id=&quot;" />
            </node>
            <node concept="356sEF" id="STlwLYiSDi" role="356sEH">
              <property role="TrG5h" value="sellingPrice" />
              <node concept="17Uvod" id="STlwLYiSDj" role="lGtFl">
                <property role="2qtEX9" value="name" />
                <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                <node concept="3zFVjK" id="STlwLYiSDk" role="3zH0cK">
                  <node concept="3clFbS" id="STlwLYiSDl" role="2VODD2">
                    <node concept="3clFbF" id="STlwLYiSDm" role="3cqZAp">
                      <node concept="2OqwBi" id="STlwLYiSDn" role="3clFbG">
                        <node concept="3TrcHB" id="STlwLYiSDo" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                        <node concept="30H73N" id="STlwLYiSDp" role="2Oq$k0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="356sEF" id="STlwLYiSDq" role="356sEH">
              <property role="TrG5h" value="_container&quot; style=&quot;display: none;&quot;&gt;" />
            </node>
            <node concept="2EixSi" id="STlwLYiSDr" role="2EinRH" />
          </node>
          <node concept="356sEQ" id="STlwLYiSDs" role="383Ya9">
            <property role="333NGx" value="  " />
            <node concept="356sEK" id="STlwLYiSDt" role="383Ya9">
              <node concept="356sEF" id="STlwLYiSDu" role="356sEH">
                <property role="TrG5h" value="&lt;input placeholder=&quot;&quot; id=&quot;" />
              </node>
              <node concept="356sEF" id="STlwLYiSDv" role="356sEH">
                <property role="TrG5h" value="sellingPrice" />
                <node concept="17Uvod" id="STlwLYiSDw" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="STlwLYiSDx" role="3zH0cK">
                    <node concept="3clFbS" id="STlwLYiSDy" role="2VODD2">
                      <node concept="3clFbF" id="STlwLYiSDz" role="3cqZAp">
                        <node concept="2OqwBi" id="STlwLYiSD$" role="3clFbG">
                          <node concept="3TrcHB" id="STlwLYiSD_" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                          <node concept="30H73N" id="STlwLYiSDA" role="2Oq$k0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="356sEF" id="STlwLYiSDB" role="356sEH">
                <property role="TrG5h" value="&quot; type=&quot;number&quot; step=&quot;any&quot; data-ql-question oninput=&quot;update()&quot; /&gt;" />
              </node>
              <node concept="2EixSi" id="STlwLYiSDC" role="2EinRH" />
            </node>
            <node concept="356sEK" id="STlwLYiSDD" role="383Ya9">
              <node concept="2EixSi" id="STlwLYiSDQ" role="2EinRH" />
              <node concept="356sEF" id="STlwLYiSDE" role="356sEH">
                <property role="TrG5h" value="&lt;label for=&quot;" />
              </node>
              <node concept="356sEF" id="STlwLYlsnk" role="356sEH">
                <property role="TrG5h" value="sellingPrice" />
                <node concept="17Uvod" id="STlwLYlsnl" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="STlwLYlsnm" role="3zH0cK">
                    <node concept="3clFbS" id="STlwLYlsnn" role="2VODD2">
                      <node concept="3clFbF" id="STlwLYlsno" role="3cqZAp">
                        <node concept="2OqwBi" id="STlwLYlsnp" role="3clFbG">
                          <node concept="3TrcHB" id="STlwLYlsnq" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                          <node concept="30H73N" id="STlwLYlsnr" role="2Oq$k0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="356sEF" id="STlwLYlsns" role="356sEH">
                <property role="TrG5h" value="&quot;&gt;" />
              </node>
              <node concept="356sEF" id="STlwLYiSDF" role="356sEH">
                <property role="TrG5h" value="Price the house was sold for" />
                <node concept="17Uvod" id="STlwLYiSDG" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="STlwLYiSDH" role="3zH0cK">
                    <node concept="3clFbS" id="STlwLYiSDI" role="2VODD2">
                      <node concept="3clFbF" id="STlwLYiSDJ" role="3cqZAp">
                        <node concept="2OqwBi" id="STlwLYiSDK" role="3clFbG">
                          <node concept="2OqwBi" id="STlwLYiSDL" role="2Oq$k0">
                            <node concept="30H73N" id="STlwLYiSDM" role="2Oq$k0" />
                            <node concept="3TrEf2" id="STlwLYiSDN" role="2OqNvi">
                              <ref role="3Tt5mk" to="zg3i:6vTVXvbANVS" resolve="label" />
                            </node>
                          </node>
                          <node concept="3zqWPK" id="2fKtARxB2ix" role="2OqNvi">
                            <ref role="37wK5l" to="tbr6:3Q5enzfMT4l" resolve="asTextString" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="356sEF" id="STlwLYiSDP" role="356sEH">
                <property role="TrG5h" value=":&lt;/label&gt;" />
              </node>
            </node>
          </node>
          <node concept="356sEK" id="STlwLYiSDR" role="383Ya9">
            <node concept="356sEF" id="STlwLYiSDS" role="356sEH">
              <property role="TrG5h" value="&lt;/div&gt;" />
            </node>
            <node concept="2EixSi" id="STlwLYiSDT" role="2EinRH" />
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="STlwLYiSDU" role="30HLyM">
        <node concept="3clFbS" id="STlwLYiSDV" role="2VODD2">
          <node concept="3clFbF" id="STlwLYiSDW" role="3cqZAp">
            <node concept="2OqwBi" id="STlwLYiSDX" role="3clFbG">
              <node concept="2OqwBi" id="STlwLYiSDY" role="2Oq$k0">
                <node concept="2OqwBi" id="STlwLYiSDZ" role="2Oq$k0">
                  <node concept="30H73N" id="STlwLYiSE0" role="2Oq$k0" />
                  <node concept="3TrEf2" id="STlwLYiSE1" role="2OqNvi">
                    <ref role="3Tt5mk" to="zg3i:257K23PtZmx" resolve="type" />
                  </node>
                </node>
                <node concept="2yIwOk" id="STlwLYiSE2" role="2OqNvi" />
              </node>
              <node concept="3O6GUB" id="STlwLYiSE3" role="2OqNvi">
                <node concept="chp4Y" id="STlwLYiSE4" role="3QVz_e">
                  <ref role="cht4Q" to="5qo5:78hTg1$P0UC" resolve="NumberType" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="STlwLYiSE5" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="zg3i:6vTVXvbANVN" resolve="Question" />
      <node concept="gft3U" id="STlwLYiSE6" role="1lVwrX">
        <node concept="356WMU" id="STlwLYiSE7" role="gfFT$">
          <node concept="356sEK" id="STlwLYiSE8" role="383Ya9">
            <node concept="356sEF" id="STlwLYiSE9" role="356sEH">
              <property role="TrG5h" value="&lt;div class=&quot;input-field&quot; id=&quot;" />
            </node>
            <node concept="356sEF" id="STlwLYiSEa" role="356sEH">
              <property role="TrG5h" value="sellingPrice" />
              <node concept="17Uvod" id="STlwLYiSEb" role="lGtFl">
                <property role="2qtEX9" value="name" />
                <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                <node concept="3zFVjK" id="STlwLYiSEc" role="3zH0cK">
                  <node concept="3clFbS" id="STlwLYiSEd" role="2VODD2">
                    <node concept="3clFbF" id="STlwLYiSEe" role="3cqZAp">
                      <node concept="2OqwBi" id="STlwLYiSEf" role="3clFbG">
                        <node concept="3TrcHB" id="STlwLYiSEg" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                        <node concept="30H73N" id="STlwLYiSEh" role="2Oq$k0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="356sEF" id="STlwLYiSEi" role="356sEH">
              <property role="TrG5h" value="_container&quot; style=&quot;display: none;&quot;&gt;" />
            </node>
            <node concept="2EixSi" id="STlwLYiSEj" role="2EinRH" />
          </node>
          <node concept="356sEQ" id="STlwLYiSEk" role="383Ya9">
            <property role="333NGx" value="  " />
            <node concept="356sEK" id="STlwLYiSEl" role="383Ya9">
              <node concept="356sEF" id="STlwLYiSEm" role="356sEH">
                <property role="TrG5h" value="&lt;input placeholder=&quot;&quot; id=&quot;" />
              </node>
              <node concept="356sEF" id="STlwLYiSEn" role="356sEH">
                <property role="TrG5h" value="sellingPrice" />
                <node concept="17Uvod" id="STlwLYiSEo" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="STlwLYiSEp" role="3zH0cK">
                    <node concept="3clFbS" id="STlwLYiSEq" role="2VODD2">
                      <node concept="3clFbF" id="STlwLYiSEr" role="3cqZAp">
                        <node concept="2OqwBi" id="STlwLYiSEs" role="3clFbG">
                          <node concept="3TrcHB" id="STlwLYiSEt" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                          <node concept="30H73N" id="STlwLYiSEu" role="2Oq$k0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="356sEF" id="STlwLYiSEv" role="356sEH">
                <property role="TrG5h" value="&quot; type=&quot;number&quot; step=&quot;any&quot; data-ql-question oninput=&quot;update()&quot; /&gt;" />
              </node>
              <node concept="2EixSi" id="STlwLYiSEw" role="2EinRH" />
            </node>
            <node concept="356sEK" id="STlwLYiSEx" role="383Ya9">
              <node concept="2EixSi" id="STlwLYiSEI" role="2EinRH" />
              <node concept="356sEF" id="STlwLYiSEy" role="356sEH">
                <property role="TrG5h" value="&lt;label for=&quot;" />
              </node>
              <node concept="356sEF" id="STlwLYlsnt" role="356sEH">
                <property role="TrG5h" value="sellingPrice" />
                <node concept="17Uvod" id="STlwLYlsnu" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="STlwLYlsnv" role="3zH0cK">
                    <node concept="3clFbS" id="STlwLYlsnw" role="2VODD2">
                      <node concept="3clFbF" id="STlwLYlsnx" role="3cqZAp">
                        <node concept="2OqwBi" id="STlwLYlsny" role="3clFbG">
                          <node concept="3TrcHB" id="STlwLYlsnz" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                          <node concept="30H73N" id="STlwLYlsn$" role="2Oq$k0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="356sEF" id="STlwLYlsn_" role="356sEH">
                <property role="TrG5h" value="&quot;&gt;" />
              </node>
              <node concept="356sEF" id="STlwLYiSEz" role="356sEH">
                <property role="TrG5h" value="Price the house was sold for" />
                <node concept="17Uvod" id="STlwLYiSE$" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="STlwLYiSE_" role="3zH0cK">
                    <node concept="3clFbS" id="STlwLYiSEA" role="2VODD2">
                      <node concept="3clFbF" id="STlwLYiSEB" role="3cqZAp">
                        <node concept="2OqwBi" id="STlwLYiSEC" role="3clFbG">
                          <node concept="2OqwBi" id="STlwLYiSED" role="2Oq$k0">
                            <node concept="30H73N" id="STlwLYiSEE" role="2Oq$k0" />
                            <node concept="3TrEf2" id="STlwLYiSEF" role="2OqNvi">
                              <ref role="3Tt5mk" to="zg3i:6vTVXvbANVS" resolve="label" />
                            </node>
                          </node>
                          <node concept="3zqWPK" id="2fKtARxB2iz" role="2OqNvi">
                            <ref role="37wK5l" to="tbr6:3Q5enzfMT4l" resolve="asTextString" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="356sEF" id="STlwLYiSEH" role="356sEH">
                <property role="TrG5h" value=":&lt;/label&gt;" />
              </node>
            </node>
          </node>
          <node concept="356sEK" id="STlwLYiSEJ" role="383Ya9">
            <node concept="356sEF" id="STlwLYiSEK" role="356sEH">
              <property role="TrG5h" value="&lt;/div&gt;" />
            </node>
            <node concept="2EixSi" id="STlwLYiSEL" role="2EinRH" />
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="STlwLYiSEM" role="30HLyM">
        <node concept="3clFbS" id="STlwLYiSEN" role="2VODD2">
          <node concept="3clFbF" id="STlwLYiSEO" role="3cqZAp">
            <node concept="2OqwBi" id="STlwLYiSEP" role="3clFbG">
              <node concept="2OqwBi" id="STlwLYiSEQ" role="2Oq$k0">
                <node concept="2OqwBi" id="STlwLYiSER" role="2Oq$k0">
                  <node concept="30H73N" id="STlwLYiSES" role="2Oq$k0" />
                  <node concept="3TrEf2" id="STlwLYiSET" role="2OqNvi">
                    <ref role="3Tt5mk" to="zg3i:257K23PtZmx" resolve="type" />
                  </node>
                </node>
                <node concept="2yIwOk" id="STlwLYiSEU" role="2OqNvi" />
              </node>
              <node concept="3O6GUB" id="STlwLYiSEV" role="2OqNvi">
                <node concept="chp4Y" id="STlwLYiSEW" role="3QVz_e">
                  <ref role="cht4Q" to="5qo5:4rZeNQ6Oetc" resolve="RealType" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="STlwLYiSEX" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="zg3i:6vTVXvbANVN" resolve="Question" />
      <node concept="gft3U" id="STlwLYiSEY" role="1lVwrX">
        <node concept="356WMU" id="STlwLYiSEZ" role="gfFT$">
          <node concept="356sEK" id="STlwLYiSF0" role="383Ya9">
            <node concept="356sEF" id="STlwLYiSF1" role="356sEH">
              <property role="TrG5h" value="&lt;div class=&quot;input-field&quot; id=&quot;" />
            </node>
            <node concept="356sEF" id="STlwLYiSF2" role="356sEH">
              <property role="TrG5h" value="sellingPrice" />
              <node concept="17Uvod" id="STlwLYiSF3" role="lGtFl">
                <property role="2qtEX9" value="name" />
                <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                <node concept="3zFVjK" id="STlwLYiSF4" role="3zH0cK">
                  <node concept="3clFbS" id="STlwLYiSF5" role="2VODD2">
                    <node concept="3clFbF" id="STlwLYiSF6" role="3cqZAp">
                      <node concept="2OqwBi" id="STlwLYiSF7" role="3clFbG">
                        <node concept="3TrcHB" id="STlwLYiSF8" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                        <node concept="30H73N" id="STlwLYiSF9" role="2Oq$k0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="356sEF" id="STlwLYiSFa" role="356sEH">
              <property role="TrG5h" value="_container&quot; style=&quot;display: none;&quot;&gt;" />
            </node>
            <node concept="2EixSi" id="STlwLYiSFb" role="2EinRH" />
          </node>
          <node concept="356sEQ" id="STlwLYiSFc" role="383Ya9">
            <property role="333NGx" value="  " />
            <node concept="356sEK" id="STlwLYiSFd" role="383Ya9">
              <node concept="356sEF" id="STlwLYiSFe" role="356sEH">
                <property role="TrG5h" value="&lt;input placeholder=&quot;&quot; id=&quot;" />
              </node>
              <node concept="356sEF" id="STlwLYiSFf" role="356sEH">
                <property role="TrG5h" value="sellingPrice" />
                <node concept="17Uvod" id="STlwLYiSFg" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="STlwLYiSFh" role="3zH0cK">
                    <node concept="3clFbS" id="STlwLYiSFi" role="2VODD2">
                      <node concept="3clFbF" id="STlwLYiSFj" role="3cqZAp">
                        <node concept="2OqwBi" id="STlwLYiSFk" role="3clFbG">
                          <node concept="3TrcHB" id="STlwLYiSFl" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                          <node concept="30H73N" id="STlwLYiSFm" role="2Oq$k0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="356sEF" id="STlwLYiSFn" role="356sEH">
                <property role="TrG5h" value="&quot; type=&quot;text&quot; data-ql-question oninput=&quot;update()&quot; /&gt;" />
              </node>
              <node concept="2EixSi" id="STlwLYiSFo" role="2EinRH" />
            </node>
            <node concept="356sEK" id="STlwLYiSFp" role="383Ya9">
              <node concept="2EixSi" id="STlwLYiSFA" role="2EinRH" />
              <node concept="356sEF" id="STlwLYiSFq" role="356sEH">
                <property role="TrG5h" value="&lt;label for=&quot;" />
              </node>
              <node concept="356sEF" id="STlwLYlsnA" role="356sEH">
                <property role="TrG5h" value="sellingPrice" />
                <node concept="17Uvod" id="STlwLYlsnB" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="STlwLYlsnC" role="3zH0cK">
                    <node concept="3clFbS" id="STlwLYlsnD" role="2VODD2">
                      <node concept="3clFbF" id="STlwLYlsnE" role="3cqZAp">
                        <node concept="2OqwBi" id="STlwLYlsnF" role="3clFbG">
                          <node concept="3TrcHB" id="STlwLYlsnG" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                          <node concept="30H73N" id="STlwLYlsnH" role="2Oq$k0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="356sEF" id="STlwLYlsnI" role="356sEH">
                <property role="TrG5h" value="&quot;&gt;" />
              </node>
              <node concept="356sEF" id="STlwLYiSFr" role="356sEH">
                <property role="TrG5h" value="Price the house was sold for" />
                <node concept="17Uvod" id="STlwLYiSFs" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="STlwLYiSFt" role="3zH0cK">
                    <node concept="3clFbS" id="STlwLYiSFu" role="2VODD2">
                      <node concept="3clFbF" id="STlwLYiSFv" role="3cqZAp">
                        <node concept="2OqwBi" id="STlwLYiSFw" role="3clFbG">
                          <node concept="2OqwBi" id="STlwLYiSFx" role="2Oq$k0">
                            <node concept="30H73N" id="STlwLYiSFy" role="2Oq$k0" />
                            <node concept="3TrEf2" id="STlwLYiSFz" role="2OqNvi">
                              <ref role="3Tt5mk" to="zg3i:6vTVXvbANVS" resolve="label" />
                            </node>
                          </node>
                          <node concept="3zqWPK" id="2fKtARxB2i_" role="2OqNvi">
                            <ref role="37wK5l" to="tbr6:3Q5enzfMT4l" resolve="asTextString" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="356sEF" id="STlwLYiSF_" role="356sEH">
                <property role="TrG5h" value=":&lt;/label&gt;" />
              </node>
            </node>
          </node>
          <node concept="356sEK" id="STlwLYiSFB" role="383Ya9">
            <node concept="356sEF" id="STlwLYiSFC" role="356sEH">
              <property role="TrG5h" value="&lt;/div&gt;" />
            </node>
            <node concept="2EixSi" id="STlwLYiSFD" role="2EinRH" />
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="STlwLYiSFE" role="30HLyM">
        <node concept="3clFbS" id="STlwLYiSFF" role="2VODD2">
          <node concept="3clFbF" id="STlwLYiSFG" role="3cqZAp">
            <node concept="2OqwBi" id="STlwLYiSFH" role="3clFbG">
              <node concept="2OqwBi" id="STlwLYiSFI" role="2Oq$k0">
                <node concept="2OqwBi" id="STlwLYiSFJ" role="2Oq$k0">
                  <node concept="30H73N" id="STlwLYiSFK" role="2Oq$k0" />
                  <node concept="3TrEf2" id="STlwLYiSFL" role="2OqNvi">
                    <ref role="3Tt5mk" to="zg3i:257K23PtZmx" resolve="type" />
                  </node>
                </node>
                <node concept="2yIwOk" id="STlwLYiSFM" role="2OqNvi" />
              </node>
              <node concept="3O6GUB" id="STlwLYiSFN" role="2OqNvi">
                <node concept="chp4Y" id="STlwLYiSFO" role="3QVz_e">
                  <ref role="cht4Q" to="5qo5:4rZeNQ6OYR7" resolve="StringType" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="STlwLYiSFP" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="zg3i:6vTVXvbANVN" resolve="Question" />
      <node concept="gft3U" id="STlwLYiSFQ" role="1lVwrX">
        <node concept="356WMU" id="STlwLYiSFR" role="gfFT$">
          <node concept="356sEK" id="STlwLYiSFS" role="383Ya9">
            <node concept="356sEF" id="STlwLYiSFT" role="356sEH">
              <property role="TrG5h" value="&lt;div class=&quot;input-field&quot; id=&quot;" />
            </node>
            <node concept="356sEF" id="STlwLYiSFU" role="356sEH">
              <property role="TrG5h" value="sellingPrice" />
              <node concept="17Uvod" id="STlwLYiSFV" role="lGtFl">
                <property role="2qtEX9" value="name" />
                <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                <node concept="3zFVjK" id="STlwLYiSFW" role="3zH0cK">
                  <node concept="3clFbS" id="STlwLYiSFX" role="2VODD2">
                    <node concept="3clFbF" id="STlwLYiSFY" role="3cqZAp">
                      <node concept="2OqwBi" id="STlwLYiSFZ" role="3clFbG">
                        <node concept="3TrcHB" id="STlwLYiSG0" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                        <node concept="30H73N" id="STlwLYiSG1" role="2Oq$k0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="356sEF" id="STlwLYiSG2" role="356sEH">
              <property role="TrG5h" value="_container&quot; style=&quot;display: none;&quot;&gt;" />
            </node>
            <node concept="2EixSi" id="STlwLYiSG3" role="2EinRH" />
          </node>
          <node concept="356sEQ" id="STlwLYiSG4" role="383Ya9">
            <property role="333NGx" value="  " />
            <node concept="356sEK" id="STlwLYiSG5" role="383Ya9">
              <node concept="356sEF" id="STlwLYiSG6" role="356sEH">
                <property role="TrG5h" value="&lt;input placeholder=&quot;&quot; id=&quot;" />
              </node>
              <node concept="356sEF" id="STlwLYiSG7" role="356sEH">
                <property role="TrG5h" value="sellingPrice" />
                <node concept="17Uvod" id="STlwLYiSG8" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="STlwLYiSG9" role="3zH0cK">
                    <node concept="3clFbS" id="STlwLYiSGa" role="2VODD2">
                      <node concept="3clFbF" id="STlwLYiSGb" role="3cqZAp">
                        <node concept="2OqwBi" id="STlwLYiSGc" role="3clFbG">
                          <node concept="3TrcHB" id="STlwLYiSGd" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                          <node concept="30H73N" id="STlwLYiSGe" role="2Oq$k0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="356sEF" id="STlwLYiSGf" role="356sEH">
                <property role="TrG5h" value="&quot; type=&quot;date&quot; data-ql-question oninput=&quot;update()&quot; /&gt;" />
              </node>
              <node concept="2EixSi" id="STlwLYiSGg" role="2EinRH" />
            </node>
            <node concept="356sEK" id="STlwLYiSGh" role="383Ya9">
              <node concept="2EixSi" id="STlwLYiSGu" role="2EinRH" />
              <node concept="356sEF" id="STlwLYiSGi" role="356sEH">
                <property role="TrG5h" value="&lt;label for=&quot;" />
              </node>
              <node concept="356sEF" id="STlwLYlsnJ" role="356sEH">
                <property role="TrG5h" value="sellingPrice" />
                <node concept="17Uvod" id="STlwLYlsnK" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="STlwLYlsnL" role="3zH0cK">
                    <node concept="3clFbS" id="STlwLYlsnM" role="2VODD2">
                      <node concept="3clFbF" id="STlwLYlsnN" role="3cqZAp">
                        <node concept="2OqwBi" id="STlwLYlsnO" role="3clFbG">
                          <node concept="3TrcHB" id="STlwLYlsnP" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                          <node concept="30H73N" id="STlwLYlsnQ" role="2Oq$k0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="356sEF" id="STlwLYlsnR" role="356sEH">
                <property role="TrG5h" value="&quot;&gt;" />
              </node>
              <node concept="356sEF" id="STlwLYiSGj" role="356sEH">
                <property role="TrG5h" value="Price the house was sold for" />
                <node concept="17Uvod" id="STlwLYiSGk" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="STlwLYiSGl" role="3zH0cK">
                    <node concept="3clFbS" id="STlwLYiSGm" role="2VODD2">
                      <node concept="3clFbF" id="STlwLYiSGn" role="3cqZAp">
                        <node concept="2OqwBi" id="STlwLYiSGo" role="3clFbG">
                          <node concept="2OqwBi" id="STlwLYiSGp" role="2Oq$k0">
                            <node concept="30H73N" id="STlwLYiSGq" role="2Oq$k0" />
                            <node concept="3TrEf2" id="STlwLYiSGr" role="2OqNvi">
                              <ref role="3Tt5mk" to="zg3i:6vTVXvbANVS" resolve="label" />
                            </node>
                          </node>
                          <node concept="3zqWPK" id="2fKtARxB2iB" role="2OqNvi">
                            <ref role="37wK5l" to="tbr6:3Q5enzfMT4l" resolve="asTextString" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="356sEF" id="STlwLYiSGt" role="356sEH">
                <property role="TrG5h" value=":&lt;/label&gt;" />
              </node>
            </node>
          </node>
          <node concept="356sEK" id="STlwLYiSGv" role="383Ya9">
            <node concept="356sEF" id="STlwLYiSGw" role="356sEH">
              <property role="TrG5h" value="&lt;/div&gt;" />
            </node>
            <node concept="2EixSi" id="STlwLYiSGx" role="2EinRH" />
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="STlwLYiSGy" role="30HLyM">
        <node concept="3clFbS" id="STlwLYiSGz" role="2VODD2">
          <node concept="3clFbF" id="STlwLYiSG$" role="3cqZAp">
            <node concept="2OqwBi" id="STlwLYiSG_" role="3clFbG">
              <node concept="2OqwBi" id="STlwLYiSGA" role="2Oq$k0">
                <node concept="2OqwBi" id="STlwLYiSGB" role="2Oq$k0">
                  <node concept="30H73N" id="STlwLYiSGC" role="2Oq$k0" />
                  <node concept="3TrEf2" id="STlwLYiSGD" role="2OqNvi">
                    <ref role="3Tt5mk" to="zg3i:257K23PtZmx" resolve="type" />
                  </node>
                </node>
                <node concept="2yIwOk" id="STlwLYiSGE" role="2OqNvi" />
              </node>
              <node concept="3O6GUB" id="STlwLYiSGF" role="2OqNvi">
                <node concept="chp4Y" id="STlwLYiSGG" role="3QVz_e">
                  <ref role="cht4Q" to="mi3w:3nGzaxU$Pz8" resolve="DateType" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="STlwLYiSGH" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="zg3i:6vTVXvbANVN" resolve="Question" />
      <node concept="gft3U" id="STlwLYiSGI" role="1lVwrX">
        <node concept="356WMU" id="STlwLYiSGJ" role="gfFT$">
          <node concept="356sEK" id="STlwLYiSGK" role="383Ya9">
            <node concept="356sEF" id="STlwLYiSGL" role="356sEH">
              <property role="TrG5h" value="&lt;div class=&quot;input-field&quot; id=&quot;" />
            </node>
            <node concept="356sEF" id="STlwLYiSGM" role="356sEH">
              <property role="TrG5h" value="sellingPrice" />
              <node concept="17Uvod" id="STlwLYiSGN" role="lGtFl">
                <property role="2qtEX9" value="name" />
                <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                <node concept="3zFVjK" id="STlwLYiSGO" role="3zH0cK">
                  <node concept="3clFbS" id="STlwLYiSGP" role="2VODD2">
                    <node concept="3clFbF" id="STlwLYiSGQ" role="3cqZAp">
                      <node concept="2OqwBi" id="STlwLYiSGR" role="3clFbG">
                        <node concept="3TrcHB" id="STlwLYiSGS" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                        <node concept="30H73N" id="STlwLYiSGT" role="2Oq$k0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="356sEF" id="STlwLYiSGU" role="356sEH">
              <property role="TrG5h" value="_container&quot; style=&quot;display: none;&quot;&gt;" />
            </node>
            <node concept="2EixSi" id="STlwLYiSGV" role="2EinRH" />
          </node>
          <node concept="356sEQ" id="STlwLYiSGW" role="383Ya9">
            <property role="333NGx" value="  " />
            <node concept="356sEK" id="STlwLYiSGX" role="383Ya9">
              <node concept="356sEF" id="STlwLYiSGY" role="356sEH">
                <property role="TrG5h" value="&lt;input placeholder=&quot;&quot; id=&quot;" />
              </node>
              <node concept="356sEF" id="STlwLYiSGZ" role="356sEH">
                <property role="TrG5h" value="sellingPrice" />
                <node concept="17Uvod" id="STlwLYiSH0" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="STlwLYiSH1" role="3zH0cK">
                    <node concept="3clFbS" id="STlwLYiSH2" role="2VODD2">
                      <node concept="3clFbF" id="STlwLYiSH3" role="3cqZAp">
                        <node concept="2OqwBi" id="STlwLYiSH4" role="3clFbG">
                          <node concept="3TrcHB" id="STlwLYiSH5" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                          <node concept="30H73N" id="STlwLYiSH6" role="2Oq$k0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="356sEF" id="STlwLYiSH7" role="356sEH">
                <property role="TrG5h" value="&quot; type=&quot;number&quot; step=&quot;any&quot; data-ql-question oninput=&quot;update()&quot; /&gt;" />
              </node>
              <node concept="2EixSi" id="STlwLYiSH8" role="2EinRH" />
            </node>
            <node concept="356sEK" id="STlwLYiSH9" role="383Ya9">
              <node concept="2EixSi" id="STlwLYiSHm" role="2EinRH" />
              <node concept="356sEF" id="STlwLYiSHa" role="356sEH">
                <property role="TrG5h" value="&lt;label for=&quot;" />
              </node>
              <node concept="356sEF" id="STlwLYlsnS" role="356sEH">
                <property role="TrG5h" value="sellingPrice" />
                <node concept="17Uvod" id="STlwLYlsnT" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="STlwLYlsnU" role="3zH0cK">
                    <node concept="3clFbS" id="STlwLYlsnV" role="2VODD2">
                      <node concept="3clFbF" id="STlwLYlsnW" role="3cqZAp">
                        <node concept="2OqwBi" id="STlwLYlsnX" role="3clFbG">
                          <node concept="3TrcHB" id="STlwLYlsnY" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                          <node concept="30H73N" id="STlwLYlsnZ" role="2Oq$k0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="356sEF" id="STlwLYlso0" role="356sEH">
                <property role="TrG5h" value="&quot;&gt;" />
              </node>
              <node concept="356sEF" id="STlwLYiSHb" role="356sEH">
                <property role="TrG5h" value="Price the house was sold for" />
                <node concept="17Uvod" id="STlwLYiSHc" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="STlwLYiSHd" role="3zH0cK">
                    <node concept="3clFbS" id="STlwLYiSHe" role="2VODD2">
                      <node concept="3clFbF" id="STlwLYiSHf" role="3cqZAp">
                        <node concept="2OqwBi" id="STlwLYiSHg" role="3clFbG">
                          <node concept="2OqwBi" id="STlwLYiSHh" role="2Oq$k0">
                            <node concept="30H73N" id="STlwLYiSHi" role="2Oq$k0" />
                            <node concept="3TrEf2" id="STlwLYiSHj" role="2OqNvi">
                              <ref role="3Tt5mk" to="zg3i:6vTVXvbANVS" resolve="label" />
                            </node>
                          </node>
                          <node concept="3zqWPK" id="2fKtARxB2iD" role="2OqNvi">
                            <ref role="37wK5l" to="tbr6:3Q5enzfMT4l" resolve="asTextString" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="356sEF" id="STlwLYiSHl" role="356sEH">
                <property role="TrG5h" value=":&lt;/label&gt;" />
              </node>
            </node>
          </node>
          <node concept="356sEK" id="STlwLYiSHn" role="383Ya9">
            <node concept="356sEF" id="STlwLYiSHo" role="356sEH">
              <property role="TrG5h" value="&lt;/div&gt;" />
            </node>
            <node concept="2EixSi" id="STlwLYiSHp" role="2EinRH" />
          </node>
        </node>
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
    <node concept="3aamgX" id="4D$GIrwZiZ7" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="zg3i:6vTVXvbANVN" resolve="Question" />
      <node concept="gft3U" id="4D$GIrwZiZ8" role="1lVwrX">
        <node concept="356sEQ" id="STlwLYiWkf" role="gfFT$">
          <property role="333NGx" value="  " />
          <node concept="356sEK" id="STlwLYiWk4" role="383Ya9">
            <node concept="356sEF" id="STlwLYiWk5" role="356sEH">
              <property role="TrG5h" value="beginVisibility('" />
            </node>
            <node concept="356sEF" id="STlwLYiWjw" role="356sEH">
              <property role="TrG5h" value="questionId" />
              <node concept="17Uvod" id="STlwLYiWjx" role="lGtFl">
                <property role="2qtEX9" value="name" />
                <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                <node concept="3zFVjK" id="STlwLYiWjy" role="3zH0cK">
                  <node concept="3clFbS" id="STlwLYiWjz" role="2VODD2">
                    <node concept="3clFbF" id="STlwLYiWj$" role="3cqZAp">
                      <node concept="2OqwBi" id="STlwLYiWj_" role="3clFbG">
                        <node concept="3TrcHB" id="STlwLYiWjA" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                        <node concept="30H73N" id="STlwLYiWjB" role="2Oq$k0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="356sEF" id="STlwLYiWk6" role="356sEH">
              <property role="TrG5h" value="');" />
            </node>
            <node concept="2EixSi" id="STlwLYiWk7" role="2EinRH" />
          </node>
          <node concept="356sEK" id="STlwLYiWk8" role="383Ya9">
            <node concept="356sEF" id="STlwLYiWk9" role="356sEH">
              <property role="TrG5h" value="addVisibilityCondition(" />
            </node>
            <node concept="356sEF" id="STlwLYiWjC" role="356sEH">
              <property role="TrG5h" value="cond" />
              <node concept="29HgVG" id="STlwLYiWjD" role="lGtFl">
                <node concept="3NFfHV" id="STlwLYiWjE" role="3NFExx">
                  <node concept="3clFbS" id="STlwLYiWjF" role="2VODD2">
                    <node concept="3clFbF" id="STlwLYiWjG" role="3cqZAp">
                      <node concept="2OqwBi" id="STlwLYiWjH" role="3clFbG">
                        <node concept="3TrEf2" id="STlwLYiWjN" role="2OqNvi">
                          <ref role="3Tt5mk" to="zg3i:257K23PuhQu" resolve="condition" />
                        </node>
                        <node concept="30H73N" id="STlwLYiWjO" role="2Oq$k0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="356sEF" id="STlwLYiWka" role="356sEH">
              <property role="TrG5h" value=")" />
            </node>
            <node concept="2EixSi" id="STlwLYiWkb" role="2EinRH" />
            <node concept="1WS0z7" id="STlwLYiWjP" role="lGtFl">
              <node concept="3JmXsc" id="STlwLYiWjQ" role="3Jn$fo">
                <node concept="3clFbS" id="STlwLYiWjR" role="2VODD2">
                  <node concept="3clFbF" id="STlwLYiWjS" role="3cqZAp">
                    <node concept="2OqwBi" id="STlwLYiWjZ" role="3clFbG">
                      <node concept="30H73N" id="STlwLYiWk0" role="2Oq$k0" />
                      <node concept="z$bX8" id="STlwLYiWk1" role="2OqNvi">
                        <node concept="1xMEDy" id="STlwLYiWk2" role="1xVPHs">
                          <node concept="chp4Y" id="STlwLYiWk3" role="ri$Ld">
                            <ref role="cht4Q" to="zg3i:257K23PuhQr" resolve="ConditionalBlock" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEK" id="STlwLYiWkc" role="383Ya9">
            <node concept="356sEF" id="STlwLYiWkd" role="356sEH">
              <property role="TrG5h" value="finishVisibility();" />
            </node>
            <node concept="2EixSi" id="STlwLYiWke" role="2EinRH" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="4D$GIrwZHjN" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="zg3i:257K23Pv8vo" resolve="DerivedValue" />
      <node concept="gft3U" id="4D$GIrwZHjO" role="1lVwrX">
        <node concept="356sEQ" id="STlwLYiWkZ" role="gfFT$">
          <property role="333NGx" value="  " />
          <node concept="356sEK" id="STlwLYiWkO" role="383Ya9">
            <node concept="356sEF" id="STlwLYiWkP" role="356sEH">
              <property role="TrG5h" value="beginVisibility('" />
            </node>
            <node concept="356sEF" id="STlwLYiWkg" role="356sEH">
              <property role="TrG5h" value="questionId" />
              <node concept="17Uvod" id="STlwLYiWkh" role="lGtFl">
                <property role="2qtEX9" value="name" />
                <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                <node concept="3zFVjK" id="STlwLYiWki" role="3zH0cK">
                  <node concept="3clFbS" id="STlwLYiWkj" role="2VODD2">
                    <node concept="3clFbF" id="STlwLYiWkk" role="3cqZAp">
                      <node concept="2OqwBi" id="STlwLYiWkl" role="3clFbG">
                        <node concept="3TrcHB" id="STlwLYiWkm" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                        <node concept="30H73N" id="STlwLYiWkn" role="2Oq$k0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="356sEF" id="STlwLYiWkQ" role="356sEH">
              <property role="TrG5h" value="');" />
            </node>
            <node concept="2EixSi" id="STlwLYiWkR" role="2EinRH" />
          </node>
          <node concept="356sEK" id="STlwLYiWkS" role="383Ya9">
            <node concept="356sEF" id="STlwLYiWkT" role="356sEH">
              <property role="TrG5h" value="addVisibilityCondition(" />
            </node>
            <node concept="356sEF" id="STlwLYiWko" role="356sEH">
              <property role="TrG5h" value="cond" />
              <node concept="29HgVG" id="STlwLYiWkp" role="lGtFl">
                <node concept="3NFfHV" id="STlwLYiWkq" role="3NFExx">
                  <node concept="3clFbS" id="STlwLYiWkr" role="2VODD2">
                    <node concept="3clFbF" id="STlwLYiWks" role="3cqZAp">
                      <node concept="2OqwBi" id="STlwLYiWkt" role="3clFbG">
                        <node concept="3TrEf2" id="STlwLYiWkz" role="2OqNvi">
                          <ref role="3Tt5mk" to="zg3i:257K23PuhQu" resolve="condition" />
                        </node>
                        <node concept="30H73N" id="STlwLYiWk$" role="2Oq$k0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="356sEF" id="STlwLYiWkU" role="356sEH">
              <property role="TrG5h" value=")" />
            </node>
            <node concept="2EixSi" id="STlwLYiWkV" role="2EinRH" />
            <node concept="1WS0z7" id="STlwLYiWk_" role="lGtFl">
              <node concept="3JmXsc" id="STlwLYiWkA" role="3Jn$fo">
                <node concept="3clFbS" id="STlwLYiWkB" role="2VODD2">
                  <node concept="3clFbF" id="STlwLYiWkC" role="3cqZAp">
                    <node concept="2OqwBi" id="STlwLYiWkJ" role="3clFbG">
                      <node concept="30H73N" id="STlwLYiWkK" role="2Oq$k0" />
                      <node concept="z$bX8" id="STlwLYiWkL" role="2OqNvi">
                        <node concept="1xMEDy" id="STlwLYiWkM" role="1xVPHs">
                          <node concept="chp4Y" id="STlwLYiWkN" role="ri$Ld">
                            <ref role="cht4Q" to="zg3i:257K23PuhQr" resolve="ConditionalBlock" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEK" id="STlwLYiWkW" role="383Ya9">
            <node concept="356sEF" id="STlwLYiWkX" role="356sEH">
              <property role="TrG5h" value="finishVisibility();" />
            </node>
            <node concept="2EixSi" id="STlwLYiWkY" role="2EinRH" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

