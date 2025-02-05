<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:1563aa75-9e95-4906-b5e3-c9d7c1e3928d(Sandbox.QLBasic)">
  <persistence version="9" />
  <languages>
    <use id="83a543da-6367-4b94-9df8-b626b1b2132c" name="QuestionnaireLanguage" version="0" />
    <use id="6b277d9a-d52d-416f-a209-1919bd737f50" name="org.iets3.core.expr.simpleTypes" version="1" />
  </languages>
  <imports />
  <registry>
    <language id="92d2ea16-5a42-4fdf-a676-c7604efe3504" name="de.slisson.mps.richtext">
      <concept id="2557074442922380897" name="de.slisson.mps.richtext.structure.Text" flags="ng" index="19SGf9">
        <child id="2557074442922392302" name="words" index="19SJt6" />
      </concept>
      <concept id="2557074442922438156" name="de.slisson.mps.richtext.structure.Word" flags="ng" index="19SUe$">
        <property id="2557074442922438158" name="escapedValue" index="19SUeA" />
      </concept>
    </language>
    <language id="6b277d9a-d52d-416f-a209-1919bd737f50" name="org.iets3.core.expr.simpleTypes">
      <concept id="7425695345928349207" name="org.iets3.core.expr.simpleTypes.structure.BooleanType" flags="ng" index="2vmvy5" />
    </language>
    <language id="83a543da-6367-4b94-9df8-b626b1b2132c" name="QuestionnaireLanguage">
      <concept id="7492283165220486899" name="QuestionnaireLanguage.structure.Question" flags="ng" index="2GoH4$">
        <child id="7492283165220486904" name="label" index="2GoH4J" />
        <child id="2398096574387844513" name="type" index="3kc3m1" />
      </concept>
      <concept id="7492283165220413985" name="QuestionnaireLanguage.structure.Form" flags="ng" index="2GoWRQ">
        <child id="2398096574387845211" name="contents" index="3kc3xV" />
      </concept>
      <concept id="2398096574388144088" name="QuestionnaireLanguage.structure.DerivedValue" flags="ng" index="3keOvS">
        <child id="2398096574388170356" name="expectedType" index="3keMTk" />
        <child id="2398096574388144092" name="label" index="3keOvW" />
        <child id="2398096574388144094" name="value" index="3keOvY" />
      </concept>
      <concept id="2398096574388116800" name="QuestionnaireLanguage.structure.Money" flags="ng" index="3keXPw" />
      <concept id="2398096574387971775" name="QuestionnaireLanguage.structure.QuestionReference" flags="ng" index="3kfyqv">
        <reference id="2398096574387971776" name="question" index="3kfyrw" />
      </concept>
      <concept id="2398096574387920283" name="QuestionnaireLanguage.structure.ConditionalBlock" flags="ng" index="3kfHQV">
        <child id="2398096574387920286" name="condition" index="3kfHQY" />
        <child id="2398096574387920287" name="body" index="3kfHQZ" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2GoWRQ" id="257K23PtZxq">
    <property role="TrG5h" value="HouseOwning" />
    <node concept="2GoH4$" id="257K23PtZGE" role="3kc3xV">
      <property role="TrG5h" value="hasSoldHouse" />
      <node concept="19SGf9" id="257K23PtZGF" role="2GoH4J">
        <node concept="19SUe$" id="257K23PtZGG" role="19SJt6">
          <property role="19SUeA" value="Did you sell a house in 2025?" />
        </node>
      </node>
      <node concept="2vmvy5" id="257K23PtZH2" role="3kc3m1" />
    </node>
    <node concept="2GoH4$" id="257K23PtZGQ" role="3kc3xV">
      <property role="TrG5h" value="hasBoughtHouse" />
      <node concept="19SGf9" id="257K23PtZGR" role="2GoH4J">
        <node concept="19SUe$" id="257K23PtZGS" role="19SJt6">
          <property role="19SUeA" value="Did you buy a house in 2025?" />
        </node>
      </node>
      <node concept="2vmvy5" id="257K23PtZGY" role="3kc3m1" />
    </node>
    <node concept="2GoH4$" id="257K23PtZH6" role="3kc3xV">
      <property role="TrG5h" value="hasMaintLoan" />
      <node concept="19SGf9" id="257K23PtZH7" role="2GoH4J">
        <node concept="19SUe$" id="257K23PtZH8" role="19SJt6">
          <property role="19SUeA" value="Did you enter a loan for maintenance/reconstruction?" />
        </node>
      </node>
      <node concept="2vmvy5" id="257K23PtZHe" role="3kc3m1" />
    </node>
    <node concept="3kfHQV" id="257K23PuuqV" role="3kc3xV">
      <node concept="3kfyqv" id="257K23PuBYX" role="3kfHQY">
        <ref role="3kfyrw" node="257K23PtZGE" resolve="hasSoldHouse" />
      </node>
      <node concept="2GoH4$" id="257K23PuBYZ" role="3kfHQZ">
        <property role="TrG5h" value="sellingPrice" />
        <node concept="19SGf9" id="257K23PuBZ0" role="2GoH4J">
          <node concept="19SUe$" id="257K23PuBZ1" role="19SJt6">
            <property role="19SUeA" value="Price the house was sold for:" />
          </node>
        </node>
        <node concept="3keXPw" id="257K23Pv2tC" role="3kc3m1" />
      </node>
      <node concept="2GoH4$" id="257K23Pv858" role="3kfHQZ">
        <property role="TrG5h" value="privateDebt" />
        <node concept="19SGf9" id="257K23Pv85a" role="2GoH4J">
          <node concept="19SUe$" id="257K23Pv85b" role="19SJt6">
            <property role="19SUeA" value="Private debts for the sold house:" />
          </node>
        </node>
        <node concept="3keXPw" id="257K23Pv85j" role="3kc3m1" />
      </node>
      <node concept="3keOvS" id="257K23Pv8QD" role="3kfHQZ">
        <property role="TrG5h" value="valueResidue" />
        <node concept="19SGf9" id="257K23Pv8QF" role="3keOvW">
          <node concept="19SUe$" id="257K23Pv8QG" role="19SJt6">
            <property role="19SUeA" value="Value residue:" />
          </node>
        </node>
        <node concept="3keXPw" id="257K23PvlkB" role="3keMTk" />
        <node concept="3kfyqv" id="257K23PvA0i" role="3keOvY">
          <ref role="3kfyrw" node="257K23PuBYZ" resolve="sellingPrice" />
        </node>
      </node>
    </node>
  </node>
</model>

