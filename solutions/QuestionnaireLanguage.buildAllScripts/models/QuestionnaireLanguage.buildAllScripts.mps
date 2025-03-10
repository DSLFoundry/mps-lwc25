<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c14054a1-cbe3-4a3a-9436-ccdf7a44ed18(QuestionnaireLanguage.buildAllScripts)">
  <persistence version="9" />
  <languages>
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="8" />
  </languages>
  <imports>
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
    <import index="al5i" ref="r:742f344d-4dc4-4862-992c-4bc94b094870(com.mbeddr.mpsutil.dev.build)" />
    <import index="90a9" ref="r:fb24ac52-5985-4947-bba9-25be6fd32c1a(de.itemis.mps.extensions.build)" />
    <import index="ip48" ref="r:c3d6ae0c-8b10-477f-a3e9-5dc8700ceb13(org.iets3.opensource.build.build)" />
  </imports>
  <registry>
    <language id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build">
      <concept id="5481553824944787378" name="jetbrains.mps.build.structure.BuildSourceProjectRelativePath" flags="ng" index="55IIr" />
      <concept id="7321017245476976379" name="jetbrains.mps.build.structure.BuildRelativePath" flags="ng" index="iG8Mu">
        <child id="7321017245477039051" name="compositePart" index="iGT6I" />
      </concept>
      <concept id="4993211115183325728" name="jetbrains.mps.build.structure.BuildProjectDependency" flags="ng" index="2sgV4H">
        <reference id="5617550519002745380" name="script" index="1l3spb" />
        <child id="4129895186893471026" name="artifacts" index="2JcizS" />
      </concept>
      <concept id="8618885170173601777" name="jetbrains.mps.build.structure.BuildCompositePath" flags="nn" index="2Ry0Ak">
        <property id="8618885170173601779" name="head" index="2Ry0Am" />
        <child id="8618885170173601778" name="tail" index="2Ry0An" />
      </concept>
      <concept id="6647099934206700647" name="jetbrains.mps.build.structure.BuildJavaPlugin" flags="ng" index="10PD9b" />
      <concept id="7389400916848136194" name="jetbrains.mps.build.structure.BuildFolderMacro" flags="ng" index="398rNT">
        <child id="7389400916848144618" name="defaultPath" index="398pKh" />
      </concept>
      <concept id="7389400916848153117" name="jetbrains.mps.build.structure.BuildSourceMacroRelativePath" flags="ng" index="398BVA">
        <reference id="7389400916848153130" name="macro" index="398BVh" />
      </concept>
      <concept id="5617550519002745364" name="jetbrains.mps.build.structure.BuildLayout" flags="ng" index="1l3spV" />
      <concept id="5617550519002745363" name="jetbrains.mps.build.structure.BuildProject" flags="ng" index="1l3spW">
        <property id="5204048710541015587" name="internalBaseDirectory" index="2DA0ip" />
        <child id="6647099934206700656" name="plugins" index="10PD9s" />
        <child id="7389400916848080626" name="parts" index="3989C9" />
        <child id="5617550519002745381" name="dependencies" index="1l3spa" />
        <child id="5617550519002745378" name="macros" index="1l3spd" />
        <child id="5617550519002745372" name="layout" index="1l3spN" />
      </concept>
      <concept id="8654221991637384182" name="jetbrains.mps.build.structure.BuildFileIncludesSelector" flags="ng" index="3qWCbU">
        <property id="8654221991637384184" name="pattern" index="3qWCbO" />
      </concept>
      <concept id="5248329904287794596" name="jetbrains.mps.build.structure.BuildInputFiles" flags="ng" index="3LXTmp">
        <child id="5248329904287794598" name="dir" index="3LXTmr" />
        <child id="5248329904287794679" name="selectors" index="3LXTna" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps">
      <concept id="1500819558095907805" name="jetbrains.mps.build.mps.structure.BuildMps_Group" flags="ng" index="2G$12M">
        <child id="1500819558095907806" name="modules" index="2G$12L" />
      </concept>
      <concept id="868032131020265945" name="jetbrains.mps.build.mps.structure.BuildMPSPlugin" flags="ng" index="3b7kt6" />
      <concept id="5253498789149381388" name="jetbrains.mps.build.mps.structure.BuildMps_Module" flags="ng" index="3bQrTs">
        <child id="5253498789149547825" name="sources" index="3bR31x" />
        <child id="5253498789149547704" name="dependencies" index="3bR37C" />
      </concept>
      <concept id="5253498789149585690" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnModule" flags="ng" index="3bR9La">
        <reference id="5253498789149547705" name="module" index="3bR37D" />
      </concept>
      <concept id="4278635856200817744" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleModelRoot" flags="ng" index="1BupzO">
        <property id="8137134783396907368" name="convert2binary" index="1Hdu6h" />
        <property id="8137134783396676838" name="extracted" index="1HemKv" />
        <property id="2889113830911481881" name="deployFolderName" index="3ZfqAx" />
        <child id="8137134783396676835" name="location" index="1HemKq" />
      </concept>
      <concept id="3189788309731840247" name="jetbrains.mps.build.mps.structure.BuildMps_Solution" flags="ng" index="1E1JtA" />
      <concept id="322010710375871467" name="jetbrains.mps.build.mps.structure.BuildMps_AbstractModule" flags="ng" index="3LEN3z">
        <property id="8369506495128725901" name="compact" index="BnDLt" />
        <property id="322010710375892619" name="uuid" index="3LESm3" />
        <child id="322010710375956261" name="path" index="3LF7KH" />
      </concept>
      <concept id="7259033139236285166" name="jetbrains.mps.build.mps.structure.BuildMps_ExtractedModuleDependency" flags="nn" index="1SiIV0">
        <child id="7259033139236285167" name="dependency" index="1SiIV1" />
      </concept>
    </language>
  </registry>
  <node concept="1l3spW" id="3OiB6Qt3drC">
    <property role="TrG5h" value="QuestionnaireLanguage" />
    <property role="2DA0ip" value="../../build/QuestionnaireLanguage.allScripts" />
    <node concept="10PD9b" id="3OiB6Qt3drD" role="10PD9s" />
    <node concept="3b7kt6" id="3OiB6Qt3drE" role="10PD9s" />
    <node concept="398rNT" id="3OiB6Qt3drF" role="1l3spd">
      <property role="TrG5h" value="mps.home" />
    </node>
    <node concept="398rNT" id="3OiB6Qt3ekv" role="1l3spd">
      <property role="TrG5h" value="ql.home" />
      <node concept="55IIr" id="3OiB6Qt3ekx" role="398pKh">
        <node concept="2Ry0Ak" id="3OiB6Qt3ekz" role="iGT6I">
          <property role="2Ry0Am" value=".." />
          <node concept="2Ry0Ak" id="3OiB6Qt3ek_" role="2Ry0An">
            <property role="2Ry0Am" value=".." />
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="3OiB6Qt3dsQ" role="1l3spd">
      <property role="TrG5h" value="artifacts.root" />
      <node concept="55IIr" id="3OiB6Qt3dsS" role="398pKh">
        <node concept="2Ry0Ak" id="3OiB6Qt3dsV" role="iGT6I">
          <property role="2Ry0Am" value="build" />
          <node concept="2Ry0Ak" id="3OiB6Qt3dsY" role="2Ry0An">
            <property role="2Ry0Am" value="artifacts" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="3OiB6Qt3drG" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="3OiB6Qt3drH" role="2JcizS">
        <ref role="398BVh" node="3OiB6Qt3drF" resolve="mps.home" />
      </node>
    </node>
    <node concept="2sgV4H" id="3OiB6Qt3dt0" role="1l3spa">
      <ref role="1l3spb" to="ip48:5wLtKNeSRPl" resolve="org.iets3.opensource" />
      <node concept="398BVA" id="3OiB6Qt3dt2" role="2JcizS">
        <ref role="398BVh" node="3OiB6Qt3dsQ" resolve="artifacts.root" />
        <node concept="2Ry0Ak" id="3OiB6Qt3dt5" role="iGT6I">
          <property role="2Ry0Am" value="org.iets3.opensource" />
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="3OiB6Qt3dt7" role="1l3spa">
      <ref role="1l3spb" to="al5i:3AVJcIMlF8l" resolve="com.mbeddr.platform" />
      <node concept="398BVA" id="3OiB6Qt3dt9" role="2JcizS">
        <ref role="398BVh" node="3OiB6Qt3dsQ" resolve="artifacts.root" />
        <node concept="2Ry0Ak" id="3OiB6Qt3dtc" role="iGT6I">
          <property role="2Ry0Am" value="com.mbeddr.platform" />
        </node>
      </node>
    </node>
    <node concept="1l3spV" id="3OiB6Qt3dsf" role="1l3spN" />
    <node concept="2G$12M" id="3OiB6Qt3ds1" role="3989C9">
      <property role="TrG5h" value="QuestionnaireLanguage.allScripts" />
      <node concept="1E1JtA" id="3OiB6Qt3drU" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="QuestionnaireLanguage.build" />
        <property role="3LESm3" value="10f275e3-1a9c-4414-acab-c5b801f5560b" />
        <node concept="398BVA" id="3OiB6Qt3ekE" role="3LF7KH">
          <ref role="398BVh" node="3OiB6Qt3ekv" resolve="ql.home" />
          <node concept="2Ry0Ak" id="3OiB6Qt3ekJ" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="3OiB6Qt3ekK" role="2Ry0An">
              <property role="2Ry0Am" value="QuestionnaireLanguage.build" />
              <node concept="2Ry0Ak" id="3OiB6Qt3ekL" role="2Ry0An">
                <property role="2Ry0Am" value="QuestionnaireLanguage.build.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3OiB6Qt3ds_" role="3bR37C">
          <node concept="3bR9La" id="3OiB6Qt3dsA" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:78GwwOvB3tw" resolve="jetbrains.mps.ide.build" />
          </node>
        </node>
        <node concept="1BupzO" id="3OiB6Qt3dsF" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="3OiB6Qt3dsG" role="1HemKq">
            <node concept="55IIr" id="3OiB6Qt3dsB" role="3LXTmr">
              <node concept="2Ry0Ak" id="3OiB6Qt3dsC" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="3OiB6Qt3dsD" role="2Ry0An">
                  <property role="2Ry0Am" value="QuestionnaireLanguage.build" />
                  <node concept="2Ry0Ak" id="3OiB6Qt3dsE" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="3OiB6Qt3dsH" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3OiB6Qt3dtP" role="3bR37C">
          <node concept="3bR9La" id="3OiB6Qt3dtQ" role="1SiIV1">
            <ref role="3bR37D" to="90a9:PE3B26VOkn" resolve="de.itemis.mps.extensions.build" />
          </node>
        </node>
        <node concept="1SiIV0" id="3OiB6Qt3dtR" role="3bR37C">
          <node concept="3bR9La" id="3OiB6Qt3dtS" role="1SiIV1">
            <ref role="3bR37D" to="ip48:7C6tnXfWu6n" resolve="org.iets3.opensource.build" />
          </node>
        </node>
        <node concept="1SiIV0" id="3OiB6Qt3dtT" role="3bR37C">
          <node concept="3bR9La" id="3OiB6Qt3dtU" role="1SiIV1">
            <ref role="3bR37D" to="al5i:7Pr7tifzlku" resolve="com.mbeddr.platform" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

