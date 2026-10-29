<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:3a2e8b24-b1fd-4488-a8fb-eb722e24ac5d(QuestionnaireLanguage.textGen)">
  <persistence version="9" />
  <languages>
    <use id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen" version="1" />
    <use id="83a543da-6367-4b94-9df8-b626b1b2132c" name="QuestionnaireLanguage" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <devkit ref="fa73d85a-ac7f-447b-846c-fcdc41caa600(jetbrains.mps.devkit.aspect.textgen)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="zg3i" ref="r:e8876d31-137a-458a-aef5-06f967861a7c(QuestionnaireLanguage.structure)" />
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
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
    </language>
    <language id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen">
      <concept id="8931911391946696733" name="jetbrains.mps.lang.textGen.structure.ExtensionDeclaration" flags="in" index="9MYSb" />
      <concept id="1237305334312" name="jetbrains.mps.lang.textGen.structure.NodeAppendPart" flags="ng" index="l9hG8">
        <child id="1237305790512" name="value" index="lb14g" />
      </concept>
      <concept id="1237305491868" name="jetbrains.mps.lang.textGen.structure.CollectionAppendPart" flags="ng" index="l9S2W">
        <property id="1237306003719" name="separator" index="lbP0B" />
        <property id="1237983969951" name="withSeparator" index="XA4eZ" />
        <child id="1237305945551" name="list" index="lbANJ" />
      </concept>
      <concept id="1237305557638" name="jetbrains.mps.lang.textGen.structure.ConstantStringAppendPart" flags="ng" index="la8eA">
        <property id="1237305576108" name="value" index="lacIc" />
      </concept>
      <concept id="1237306079178" name="jetbrains.mps.lang.textGen.structure.AppendOperation" flags="nn" index="lc7rE">
        <child id="1237306115446" name="part" index="lcghm" />
      </concept>
      <concept id="1233670071145" name="jetbrains.mps.lang.textGen.structure.ConceptTextGenDeclaration" flags="ig" index="WtQ9Q">
        <reference id="1233670257997" name="conceptDeclaration" index="WuzLi" />
        <child id="1233749296504" name="textGenBlock" index="11c4hB" />
        <child id="7991274449437422201" name="extension" index="33IsuW" />
      </concept>
      <concept id="1233748055915" name="jetbrains.mps.lang.textGen.structure.NodeParameter" flags="nn" index="117lpO" />
      <concept id="1233749247888" name="jetbrains.mps.lang.textGen.structure.GenerateTextDeclaration" flags="in" index="11bSqf" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="WtQ9Q" id="2fKtARxBnYz">
    <property role="TrG5h" value="Form" />
    <ref role="WuzLi" to="zg3i:2fKtARxBmmk" resolve="Form" />
    <node concept="9MYSb" id="2fKtARxCAQk" role="33IsuW">
      <node concept="3clFbS" id="2fKtARxCAQm" role="2VODD2">
        <node concept="3cpWs6" id="2fKtARxCAQn" role="3cqZAp">
          <node concept="Xl_RD" id="2fKtARxCAQo" role="3cqZAk">
            <property role="Xl_RC" value="json" />
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="2fKtARxCAQp" role="11c4hB">
      <node concept="3clFbS" id="2fKtARxCAQr" role="2VODD2">
        <node concept="lc7rE" id="2fKtARxCAQs" role="3cqZAp">
          <node concept="la8eA" id="2fKtARxCAQu" role="lcghm">
            <property role="lacIc" value="{&quot;name&quot;:&quot;" />
          </node>
          <node concept="l9hG8" id="2fKtARxCAQv" role="lcghm">
            <node concept="2OqwBi" id="2fKtARxCAQx" role="lb14g">
              <node concept="117lpO" id="2fKtARxCAQ$" role="2Oq$k0" />
              <node concept="3TrcHB" id="2fKtARxCAQ_" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="2fKtARxCAQA" role="lcghm">
            <property role="lacIc" value="&quot;,&quot;items&quot;:[" />
          </node>
          <node concept="l9S2W" id="2fKtARxCAQB" role="lcghm">
            <property role="XA4eZ" value="true" />
            <property role="lbP0B" value="," />
            <node concept="2OqwBi" id="2fKtARxCAQD" role="lbANJ">
              <node concept="117lpO" id="2fKtARxCAQG" role="2Oq$k0" />
              <node concept="3Tsc0h" id="2fKtARxCAQH" role="2OqNvi">
                <ref role="3TtcxE" to="zg3i:2fKtARxBmmt" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="2fKtARxCAQI" role="lcghm">
            <property role="lacIc" value="]}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="2fKtARxBnZq">
    <property role="TrG5h" value="Question" />
    <ref role="WuzLi" to="zg3i:2fKtARxBmmm" resolve="Question" />
    <node concept="11bSqf" id="2fKtARxBo76" role="11c4hB">
      <node concept="3clFbS" id="2fKtARxBo78" role="2VODD2">
        <node concept="lc7rE" id="2fKtARxBo79" role="3cqZAp">
          <node concept="la8eA" id="2fKtARxBo7b" role="lcghm">
            <property role="lacIc" value="{&quot;id&quot;:&quot;" />
          </node>
          <node concept="l9hG8" id="2fKtARxBo7c" role="lcghm">
            <node concept="2OqwBi" id="2fKtARxBo7e" role="lb14g">
              <node concept="117lpO" id="2fKtARxBo7h" role="2Oq$k0" />
              <node concept="3TrcHB" id="2fKtARxBo7i" role="2OqNvi">
                <ref role="3TsBF5" to="zg3i:2fKtARxBo66" resolve="id" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="2fKtARxBo7j" role="lcghm">
            <property role="lacIc" value="&quot;,&quot;label&quot;:&quot;" />
          </node>
          <node concept="l9hG8" id="2fKtARxBo7k" role="lcghm">
            <node concept="2OqwBi" id="2fKtARxBo7m" role="lb14g">
              <node concept="117lpO" id="2fKtARxBo7p" role="2Oq$k0" />
              <node concept="3TrcHB" id="2fKtARxBo7q" role="2OqNvi">
                <ref role="3TsBF5" to="zg3i:2fKtARxBmmv" resolve="label" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="2fKtARxBo7r" role="lcghm">
            <property role="lacIc" value="&quot;,&quot;type&quot;:&quot;" />
          </node>
          <node concept="l9hG8" id="2fKtARxBo7s" role="lcghm">
            <node concept="2OqwBi" id="2fKtARxBo7u" role="lb14g">
              <node concept="117lpO" id="2fKtARxBo7x" role="2Oq$k0" />
              <node concept="3TrcHB" id="2fKtARxBo7y" role="2OqNvi">
                <ref role="3TsBF5" to="zg3i:2fKtARxBmmw" resolve="valueType" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="2fKtARxBo7z" role="lcghm">
            <property role="lacIc" value="&quot;}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="2fKtARxBo0k">
    <property role="TrG5h" value="Calculated" />
    <ref role="WuzLi" to="zg3i:2fKtARxBnbO" resolve="Calculated" />
    <node concept="11bSqf" id="2fKtARxCfY6" role="11c4hB">
      <node concept="3clFbS" id="2fKtARxCfY8" role="2VODD2">
        <node concept="lc7rE" id="2fKtARxCfY9" role="3cqZAp">
          <node concept="la8eA" id="2fKtARxCfYb" role="lcghm">
            <property role="lacIc" value="{&quot;id&quot;:&quot;" />
          </node>
          <node concept="l9hG8" id="2fKtARxCfYc" role="lcghm">
            <node concept="2OqwBi" id="2fKtARxCfYe" role="lb14g">
              <node concept="117lpO" id="2fKtARxCfYh" role="2Oq$k0" />
              <node concept="3TrcHB" id="2fKtARxCfYi" role="2OqNvi">
                <ref role="3TsBF5" to="zg3i:2fKtARxBo66" resolve="id" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="2fKtARxCfYj" role="lcghm">
            <property role="lacIc" value="&quot;,&quot;label&quot;:&quot;" />
          </node>
          <node concept="l9hG8" id="2fKtARxCfYk" role="lcghm">
            <node concept="2OqwBi" id="2fKtARxCfYm" role="lb14g">
              <node concept="117lpO" id="2fKtARxCfYp" role="2Oq$k0" />
              <node concept="3TrcHB" id="2fKtARxCfYq" role="2OqNvi">
                <ref role="3TsBF5" to="zg3i:2fKtARxBmmv" resolve="label" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="2fKtARxCfYr" role="lcghm">
            <property role="lacIc" value="&quot;,&quot;type&quot;:&quot;" />
          </node>
          <node concept="l9hG8" id="2fKtARxCfYs" role="lcghm">
            <node concept="2OqwBi" id="2fKtARxCfYu" role="lb14g">
              <node concept="117lpO" id="2fKtARxCfYx" role="2Oq$k0" />
              <node concept="3TrcHB" id="2fKtARxCfYy" role="2OqNvi">
                <ref role="3TsBF5" to="zg3i:2fKtARxBmmw" resolve="valueType" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="2fKtARxCfYz" role="lcghm">
            <property role="lacIc" value="&quot;,&quot;computed&quot;:" />
          </node>
          <node concept="l9hG8" id="2fKtARxCfY$" role="lcghm">
            <node concept="2OqwBi" id="2fKtARxCfYA" role="lb14g">
              <node concept="117lpO" id="2fKtARxCfYD" role="2Oq$k0" />
              <node concept="3TrEf2" id="2fKtARxCfYE" role="2OqNvi">
                <ref role="3Tt5mk" to="zg3i:2fKtARxBnbR" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="2fKtARxCfYF" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="2fKtARxBo1A">
    <property role="TrG5h" value="Branch" />
    <ref role="WuzLi" to="zg3i:2fKtARxBmmn" resolve="Branch" />
    <node concept="11bSqf" id="2fKtARxBo1B" role="11c4hB">
      <node concept="3clFbS" id="2fKtARxBo1D" role="2VODD2">
        <node concept="lc7rE" id="2fKtARxBo1E" role="3cqZAp">
          <node concept="la8eA" id="2fKtARxBo1G" role="lcghm">
            <property role="lacIc" value="{&quot;condition&quot;:" />
          </node>
          <node concept="l9hG8" id="2fKtARxBo1H" role="lcghm">
            <node concept="2OqwBi" id="2fKtARxBo1J" role="lb14g">
              <node concept="117lpO" id="2fKtARxBo1M" role="2Oq$k0" />
              <node concept="3TrEf2" id="2fKtARxBo1N" role="2OqNvi">
                <ref role="3Tt5mk" to="zg3i:2fKtARxBmmz" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="2fKtARxBo1O" role="lcghm">
            <property role="lacIc" value=",&quot;items&quot;:[" />
          </node>
          <node concept="l9S2W" id="2fKtARxBo1P" role="lcghm">
            <property role="XA4eZ" value="true" />
            <property role="lbP0B" value="," />
            <node concept="2OqwBi" id="2fKtARxBo1R" role="lbANJ">
              <node concept="117lpO" id="2fKtARxBo1U" role="2Oq$k0" />
              <node concept="3Tsc0h" id="2fKtARxBo1V" role="2OqNvi">
                <ref role="3TtcxE" to="zg3i:2fKtARxBmm$" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="2fKtARxBo1W" role="lcghm">
            <property role="lacIc" value="]}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="2fKtARxBo2w">
    <property role="TrG5h" value="Literal" />
    <ref role="WuzLi" to="zg3i:2fKtARxBmmp" resolve="Literal" />
    <node concept="11bSqf" id="2fKtARxBo2x" role="11c4hB">
      <node concept="3clFbS" id="2fKtARxBo2z" role="2VODD2">
        <node concept="lc7rE" id="2fKtARxBo2$" role="3cqZAp">
          <node concept="la8eA" id="2fKtARxBo2A" role="lcghm">
            <property role="lacIc" value="{&quot;literal&quot;:" />
          </node>
          <node concept="l9hG8" id="2fKtARxBo2B" role="lcghm">
            <node concept="2OqwBi" id="2fKtARxBo2D" role="lb14g">
              <node concept="117lpO" id="2fKtARxBo2G" role="2Oq$k0" />
              <node concept="3TrcHB" id="2fKtARxBo2H" role="2OqNvi">
                <ref role="3TsBF5" to="zg3i:2fKtARxBmm_" resolve="value" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="2fKtARxBo2I" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="2fKtARxBo2U">
    <property role="TrG5h" value="Reference" />
    <ref role="WuzLi" to="zg3i:2fKtARxBmmq" resolve="Reference" />
    <node concept="11bSqf" id="2fKtARxBo5o" role="11c4hB">
      <node concept="3clFbS" id="2fKtARxBo5q" role="2VODD2">
        <node concept="lc7rE" id="2fKtARxBo5r" role="3cqZAp">
          <node concept="la8eA" id="2fKtARxBo5t" role="lcghm">
            <property role="lacIc" value="{&quot;ref&quot;:&quot;" />
          </node>
          <node concept="l9hG8" id="2fKtARxBo5u" role="lcghm">
            <node concept="2OqwBi" id="2fKtARxBo5w" role="lb14g">
              <node concept="117lpO" id="2fKtARxBo5z" role="2Oq$k0" />
              <node concept="3TrcHB" id="2fKtARxBo5$" role="2OqNvi">
                <ref role="3TsBF5" to="zg3i:2fKtARxBnz5" resolve="targetId" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="2fKtARxBo5_" role="lcghm">
            <property role="lacIc" value="&quot;}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="2fKtARxBo3s">
    <property role="TrG5h" value="Binary" />
    <ref role="WuzLi" to="zg3i:2fKtARxBmmr" resolve="Binary" />
    <node concept="11bSqf" id="2fKtARxBo3t" role="11c4hB">
      <node concept="3clFbS" id="2fKtARxBo3v" role="2VODD2">
        <node concept="lc7rE" id="2fKtARxBo3w" role="3cqZAp">
          <node concept="la8eA" id="2fKtARxBo3y" role="lcghm">
            <property role="lacIc" value="{&quot;op&quot;:&quot;" />
          </node>
          <node concept="l9hG8" id="2fKtARxBo3z" role="lcghm">
            <node concept="2OqwBi" id="2fKtARxBo3_" role="lb14g">
              <node concept="117lpO" id="2fKtARxBo3C" role="2Oq$k0" />
              <node concept="3TrcHB" id="2fKtARxBo3D" role="2OqNvi">
                <ref role="3TsBF5" to="zg3i:2fKtARxBmmC" resolve="operator" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="2fKtARxBo3E" role="lcghm">
            <property role="lacIc" value="&quot;,&quot;args&quot;:[" />
          </node>
          <node concept="l9hG8" id="2fKtARxBo3F" role="lcghm">
            <node concept="2OqwBi" id="2fKtARxBo3H" role="lb14g">
              <node concept="117lpO" id="2fKtARxBo3K" role="2Oq$k0" />
              <node concept="3TrEf2" id="2fKtARxBo3L" role="2OqNvi">
                <ref role="3Tt5mk" to="zg3i:2fKtARxBmmD" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="2fKtARxBo3M" role="lcghm">
            <property role="lacIc" value="," />
          </node>
          <node concept="l9hG8" id="2fKtARxBo3N" role="lcghm">
            <node concept="2OqwBi" id="2fKtARxBo3P" role="lb14g">
              <node concept="117lpO" id="2fKtARxBo3S" role="2Oq$k0" />
              <node concept="3TrEf2" id="2fKtARxBo3T" role="2OqNvi">
                <ref role="3Tt5mk" to="zg3i:2fKtARxBmmE" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="2fKtARxBo3U" role="lcghm">
            <property role="lacIc" value="]}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="2fKtARxBo4A">
    <property role="TrG5h" value="Unary" />
    <ref role="WuzLi" to="zg3i:2fKtARxBmms" resolve="Unary" />
    <node concept="11bSqf" id="2fKtARxBo4B" role="11c4hB">
      <node concept="3clFbS" id="2fKtARxBo4D" role="2VODD2">
        <node concept="lc7rE" id="2fKtARxBo4E" role="3cqZAp">
          <node concept="la8eA" id="2fKtARxBo4G" role="lcghm">
            <property role="lacIc" value="{&quot;op&quot;:&quot;" />
          </node>
          <node concept="l9hG8" id="2fKtARxBo4H" role="lcghm">
            <node concept="2OqwBi" id="2fKtARxBo4J" role="lb14g">
              <node concept="117lpO" id="2fKtARxBo4M" role="2Oq$k0" />
              <node concept="3TrcHB" id="2fKtARxBo4N" role="2OqNvi">
                <ref role="3TsBF5" to="zg3i:2fKtARxBmmF" resolve="operator" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="2fKtARxBo4O" role="lcghm">
            <property role="lacIc" value="&quot;,&quot;args&quot;:[" />
          </node>
          <node concept="l9hG8" id="2fKtARxBo4P" role="lcghm">
            <node concept="2OqwBi" id="2fKtARxBo4R" role="lb14g">
              <node concept="117lpO" id="2fKtARxBo4U" role="2Oq$k0" />
              <node concept="3TrEf2" id="2fKtARxBo4V" role="2OqNvi">
                <ref role="3Tt5mk" to="zg3i:2fKtARxBmmG" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="2fKtARxBo4W" role="lcghm">
            <property role="lacIc" value="]}" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

