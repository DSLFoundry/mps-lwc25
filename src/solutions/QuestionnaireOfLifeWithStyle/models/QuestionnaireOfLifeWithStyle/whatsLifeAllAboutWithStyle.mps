<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:5112113d-b2bc-4975-b8e9-a2b0b46426c8(QuestionnaireOfLifeWithStyle.whatsLifeAllAboutWithStyle)">
  <persistence version="8" />
  <language namespace="2d3f3459-8ac0-4348-bc30-3156adcd1fc0(qls)" />
  <language namespace="91226321-4f88-4441-9d12-6ac6527c0722(ql)" />
  <language namespace="92d2ea16-5a42-4fdf-a676-c7604efe3504(de.slisson.mps.richtext)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language-engaged-on-generation namespace="961a3518-50e6-494c-a0fd-5c7b33e78f78(ql.javagen)" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="4" implicit="yes" />
  <import index="q3i4" modelUID="r:db49606d-91ef-488e-ab05-ec0c916f7ed3(ql.structure)" version="6" implicit="yes" />
  <import index="2u6g" modelUID="r:f057e858-859b-4354-956f-efbe0e6a9dfa(qls.structure)" version="4" implicit="yes" />
  <import index="87nw" modelUID="r:ca2ab6bb-f6e7-4c0f-a88c-b78b9b31fff3(de.slisson.mps.richtext.structure)" version="5" implicit="yes" />
  <root type="q3i4.Form" typeId="q3i4.917898825946661681" id="113961188538979202" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="HouseOwning" />
    <node role="body" roleId="q3i4.917898825946661683" type="q3i4.Block" typeId="q3i4.8643211149799186884" id="4395333163361689770" nodeInfo="ng">
      <node role="formElements" roleId="q3i4.8643211149799186886" type="q3i4.NewLineFormElement" typeId="q3i4.4439350695988819379" id="4439350695990139375" nodeInfo="ng" />
      <node role="formElements" roleId="q3i4.8643211149799186886" type="q3i4.Question" typeId="q3i4.917898825946650079" id="4395333163361689772" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="hasSoldHouse" />
        <property name="label" nameId="q3i4.917898825946661686" value="Did you sell a house in 2010?" />
        <node role="type" roleId="q3i4.917898825946661687" type="q3i4.Boolean" typeId="q3i4.113961188538979205" id="4395333163361689774" nodeInfo="ng" />
      </node>
      <node role="formElements" roleId="q3i4.8643211149799186886" type="q3i4.NewLineFormElement" typeId="q3i4.4439350695988819379" id="4439350695990142330" nodeInfo="ng" />
      <node role="formElements" roleId="q3i4.8643211149799186886" type="q3i4.Question" typeId="q3i4.917898825946650079" id="4395333163361689777" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="hasBoughtHouse" />
        <property name="label" nameId="q3i4.917898825946661686" value="Did you buy a house in 2010?" />
        <node role="type" roleId="q3i4.917898825946661687" type="q3i4.Boolean" typeId="q3i4.113961188538979205" id="4395333163361689779" nodeInfo="ng" />
      </node>
      <node role="formElements" roleId="q3i4.8643211149799186886" type="q3i4.NewLineFormElement" typeId="q3i4.4439350695988819379" id="4439350695990145151" nodeInfo="ng" />
      <node role="formElements" roleId="q3i4.8643211149799186886" type="q3i4.Question" typeId="q3i4.917898825946650079" id="4395333163361689781" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="hasMaintLoan" />
        <property name="label" nameId="q3i4.917898825946661686" value="Did you enter a maintenance loan in 2010?" />
        <node role="type" roleId="q3i4.917898825946661687" type="q3i4.Boolean" typeId="q3i4.113961188538979205" id="4395333163361689783" nodeInfo="ng" />
      </node>
      <node role="formElements" roleId="q3i4.8643211149799186886" type="q3i4.NewLineFormElement" typeId="q3i4.4439350695988819379" id="4439350695990147972" nodeInfo="ng" />
      <node role="formElements" roleId="q3i4.8643211149799186886" type="q3i4.Question" typeId="q3i4.917898825946650079" id="7891420495526438582" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="houseCost" />
        <property name="label" nameId="q3i4.917898825946661686" value="How much does your house cost?" />
        <node role="type" roleId="q3i4.917898825946661687" type="q3i4.Integer" typeId="q3i4.917898825946790758" id="7290388397545998846" nodeInfo="ng" />
      </node>
      <node role="formElements" roleId="q3i4.8643211149799186886" type="q3i4.NewLineFormElement" typeId="q3i4.4439350695988819379" id="4439350695990150793" nodeInfo="ng" />
      <node role="formElements" roleId="q3i4.8643211149799186886" type="q3i4.Question" typeId="q3i4.917898825946650079" id="1582178472725747312" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="carCost" />
        <property name="label" nameId="q3i4.917898825946661686" value="How much does your car cost?" />
        <node role="type" roleId="q3i4.917898825946661687" type="q3i4.Integer" typeId="q3i4.917898825946790758" id="1582178472725747313" nodeInfo="ng" />
      </node>
      <node role="formElements" roleId="q3i4.8643211149799186886" type="q3i4.NewLineFormElement" typeId="q3i4.4439350695988819379" id="4439350695990153614" nodeInfo="ng" />
      <node role="formElements" roleId="q3i4.8643211149799186886" type="q3i4.Question" typeId="q3i4.917898825946650079" id="7290388397545998852" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="desiredChanges" />
        <property name="label" nameId="q3i4.917898825946661686" value="What would you like to change about your house?" />
        <node role="type" roleId="q3i4.917898825946661687" type="q3i4.String" typeId="q3i4.917898825946797936" id="7290388397545998854" nodeInfo="ng" />
      </node>
      <node role="formElements" roleId="q3i4.8643211149799186886" type="q3i4.NewLineFormElement" typeId="q3i4.4439350695988819379" id="4439350695990156435" nodeInfo="ng" />
      <node role="formElements" roleId="q3i4.8643211149799186886" type="q3i4.Question" typeId="q3i4.917898825946650079" id="8898037134863034428" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="desiredChanges2" />
        <property name="label" nameId="q3i4.917898825946661686" value="What else would you like to change about your house?" />
        <node role="type" roleId="q3i4.917898825946661687" type="q3i4.String" typeId="q3i4.917898825946797936" id="8898037134863034429" nodeInfo="ng" />
      </node>
      <node role="formElements" roleId="q3i4.8643211149799186886" type="q3i4.NewLineFormElement" typeId="q3i4.4439350695988819379" id="4439350695990159256" nodeInfo="ng" />
      <node role="formElements" roleId="q3i4.8643211149799186886" type="q3i4.CalculatedValue" typeId="q3i4.1582178472725744109" id="1582178472725747308" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="totalCost" />
        <property name="label" nameId="q3i4.1582178472725744113" value="Your total cost is " />
        <node role="type" roleId="q3i4.1582178472725744121" type="q3i4.Integer" typeId="q3i4.917898825946790758" id="1582178472725747314" nodeInfo="ng" />
        <node role="expression" roleId="q3i4.1582178472725744110" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="1582178472725748876" nodeInfo="nn">
          <node role="rightExpression" roleId="tpee.1081773367579" type="q3i4.QuestionReference" typeId="q3i4.1785499535625990009" id="1582178472725748879" nodeInfo="ng">
            <link role="question" roleId="q3i4.1785499535625990011" targetNodeId="1582178472725747312" resolveInfo="carCost" />
          </node>
          <node role="leftExpression" roleId="tpee.1081773367580" type="q3i4.QuestionReference" typeId="q3i4.1785499535625990009" id="1582178472725748863" nodeInfo="ng">
            <link role="question" roleId="q3i4.1785499535625990011" targetNodeId="7891420495526438582" resolveInfo="houseCost" />
          </node>
        </node>
      </node>
      <node role="formElements" roleId="q3i4.8643211149799186886" type="q3i4.NewLineFormElement" typeId="q3i4.4439350695988819379" id="4439350695990162077" nodeInfo="ng" />
      <node role="formElements" roleId="q3i4.8643211149799186886" type="q3i4.CalculatedValue" typeId="q3i4.1582178472725744109" id="8898037134863011664" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="tradedHouse" />
        <property name="label" nameId="q3i4.1582178472725744113" value="You traded a house" />
        <node role="type" roleId="q3i4.1582178472725744121" type="q3i4.Boolean" typeId="q3i4.113961188538979205" id="8898037134863011667" nodeInfo="ng" />
        <node role="expression" roleId="q3i4.1582178472725744110" type="tpee.AndExpression" typeId="tpee.1080120340718" id="8898037134863011681" nodeInfo="nn">
          <node role="rightExpression" roleId="tpee.1081773367579" type="q3i4.QuestionReference" typeId="q3i4.1785499535625990009" id="8898037134863011684" nodeInfo="ng">
            <link role="question" roleId="q3i4.1785499535625990011" targetNodeId="4395333163361689777" resolveInfo="hasBoughtHouse" />
          </node>
          <node role="leftExpression" roleId="tpee.1081773367580" type="q3i4.QuestionReference" typeId="q3i4.1785499535625990009" id="8898037134863011668" nodeInfo="ng">
            <link role="question" roleId="q3i4.1785499535625990011" targetNodeId="4395333163361689772" resolveInfo="hasSoldHouse" />
          </node>
        </node>
      </node>
      <node role="formElements" roleId="q3i4.8643211149799186886" type="q3i4.NewLineFormElement" typeId="q3i4.4439350695988819379" id="4439350695990164898" nodeInfo="ng" />
      <node role="formElements" roleId="q3i4.8643211149799186886" type="q3i4.CalculatedValue" typeId="q3i4.1582178472725744109" id="8898037134863034425" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="totalChanges" />
        <property name="label" nameId="q3i4.1582178472725744113" value="You want to change the following:" />
        <node role="expression" roleId="q3i4.1582178472725744110" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="8898037134863034439" nodeInfo="nn">
          <node role="rightExpression" roleId="tpee.1081773367579" type="q3i4.QuestionReference" typeId="q3i4.1785499535625990009" id="8898037134863034442" nodeInfo="ng">
            <link role="question" roleId="q3i4.1785499535625990011" targetNodeId="8898037134863034428" resolveInfo="desiredChanges2" />
          </node>
          <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="8898037134863034432" nodeInfo="nn">
            <node role="leftExpression" roleId="tpee.1081773367580" type="q3i4.QuestionReference" typeId="q3i4.1785499535625990009" id="8898037134863034431" nodeInfo="ng">
              <link role="question" roleId="q3i4.1785499535625990011" targetNodeId="7290388397545998852" resolveInfo="desiredChanges" />
            </node>
            <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="8898037134863034435" nodeInfo="nn">
              <property name="value" nameId="tpee.1070475926801" value=" and " />
            </node>
          </node>
        </node>
        <node role="type" roleId="q3i4.1582178472725744121" type="q3i4.String" typeId="q3i4.917898825946797936" id="8898037134863034430" nodeInfo="ng" />
      </node>
      <node role="formElements" roleId="q3i4.8643211149799186886" type="q3i4.NewLineFormElement" typeId="q3i4.4439350695988819379" id="4439350695990167719" nodeInfo="ng" />
      <node role="formElements" roleId="q3i4.8643211149799186886" type="q3i4.ConditionalBlock" typeId="q3i4.4395333163361697423" id="2668213510523922717" nodeInfo="ng">
        <node role="body" roleId="q3i4.4395333163361697426" type="q3i4.Block" typeId="q3i4.8643211149799186884" id="2668213510523922719" nodeInfo="ng">
          <node role="formElements" roleId="q3i4.8643211149799186886" type="q3i4.Question" typeId="q3i4.917898825946650079" id="2668213510523940877" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="congratsAllowed" />
            <property name="label" nameId="q3i4.917898825946661686" value="Can I congratulate you with your buy?" />
            <node role="type" roleId="q3i4.917898825946661687" type="q3i4.Boolean" typeId="q3i4.113961188538979205" id="2668213510523940879" nodeInfo="ng" />
            <node role="helpText" roleId="q3i4.2251561461935389090" type="87nw.Text" typeId="87nw.2557074442922380897" id="2726240646375784309" nodeInfo="ng">
              <node role="words" roleId="87nw.2557074442922392302" type="87nw.Word" typeId="87nw.2557074442922438156" id="2726240646375784310" nodeInfo="ng">
                <property name="escapedValue" nameId="87nw.2557074442922438158" value="You indicated in \&quot;" />
              </node>
              <node role="words" roleId="87nw.2557074442922392302" type="q3i4.QuestionRefWord" typeId="q3i4.2726240646375761944" id="2726240646375784311" nodeInfo="ng">
                <link role="question" roleId="q3i4.2726240646375761947" targetNodeId="4395333163361689777" resolveInfo="hasBoughtHouse" />
              </node>
              <node role="words" roleId="87nw.2557074442922392302" type="87nw.Word" typeId="87nw.2557074442922438156" id="2726240646375784312" nodeInfo="ng">
                <property name="escapedValue" nameId="87nw.2557074442922438158" value="\&quot; that you have bought a house.\nWe now ask you if we can congratulate you for the buy." />
              </node>
            </node>
          </node>
        </node>
        <node role="condition" roleId="q3i4.4395333163361697425" type="q3i4.QuestionReference" typeId="q3i4.1785499535625990009" id="1785499535625996876" nodeInfo="ng">
          <link role="question" roleId="q3i4.1785499535625990011" targetNodeId="4395333163361689777" resolveInfo="hasBoughtHouse" />
        </node>
      </node>
      <node role="formElements" roleId="q3i4.8643211149799186886" type="q3i4.NewLineFormElement" typeId="q3i4.4439350695988819379" id="4439350695990170540" nodeInfo="ng" />
      <node role="formElements" roleId="q3i4.8643211149799186886" type="q3i4.ConditionalBlock" typeId="q3i4.4395333163361697423" id="8898037134863157356" nodeInfo="ng">
        <node role="body" roleId="q3i4.4395333163361697426" type="q3i4.Block" typeId="q3i4.8643211149799186884" id="8898037134863157357" nodeInfo="ng">
          <node role="formElements" roleId="q3i4.8643211149799186886" type="q3i4.Question" typeId="q3i4.917898825946650079" id="8898037134863157358" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="likingTheLoan" />
            <property name="label" nameId="q3i4.917898825946661686" value="So you have a house and a loan?" />
            <node role="type" roleId="q3i4.917898825946661687" type="q3i4.Boolean" typeId="q3i4.113961188538979205" id="8898037134863157359" nodeInfo="ng" />
          </node>
        </node>
        <node role="condition" roleId="q3i4.4395333163361697425" type="tpee.AndExpression" typeId="tpee.1080120340718" id="8898037134863157363" nodeInfo="nn">
          <node role="leftExpression" roleId="tpee.1081773367580" type="q3i4.QuestionReference" typeId="q3i4.1785499535625990009" id="8898037134863157364" nodeInfo="ng">
            <link role="question" roleId="q3i4.1785499535625990011" targetNodeId="4395333163361689781" resolveInfo="hasMaintLoan" />
          </node>
          <node role="rightExpression" roleId="tpee.1081773367579" type="q3i4.QuestionReference" typeId="q3i4.1785499535625990009" id="8898037134863157365" nodeInfo="ng">
            <link role="question" roleId="q3i4.1785499535625990011" targetNodeId="4395333163361689777" resolveInfo="hasBoughtHouse" />
          </node>
        </node>
      </node>
      <node role="formElements" roleId="q3i4.8643211149799186886" type="q3i4.NewLineFormElement" typeId="q3i4.4439350695988819379" id="4439350695990173361" nodeInfo="ng" />
      <node role="formElements" roleId="q3i4.8643211149799186886" type="q3i4.ConditionalBlock" typeId="q3i4.4395333163361697423" id="7290388397546020311" nodeInfo="ng">
        <node role="body" roleId="q3i4.4395333163361697426" type="q3i4.Block" typeId="q3i4.8643211149799186884" id="7290388397546020312" nodeInfo="ng">
          <node role="formElements" roleId="q3i4.8643211149799186886" type="q3i4.Question" typeId="q3i4.917898825946650079" id="7290388397546020313" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="houseReallyExpensive" />
            <property name="label" nameId="q3i4.917898825946661686" value="Is your house really that expensive?" />
            <node role="type" roleId="q3i4.917898825946661687" type="q3i4.Boolean" typeId="q3i4.113961188538979205" id="7290388397546020314" nodeInfo="ng" />
          </node>
        </node>
        <node role="condition" roleId="q3i4.4395333163361697425" type="tpee.GreaterThanExpression" typeId="tpee.1081506762703" id="7290388397546020361" nodeInfo="nn">
          <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="7290388397546020364" nodeInfo="nn">
            <property name="value" nameId="tpee.1068580320021" value="300000" />
          </node>
          <node role="leftExpression" roleId="tpee.1081773367580" type="q3i4.QuestionReference" typeId="q3i4.1785499535625990009" id="7290388397546020348" nodeInfo="ng">
            <link role="question" roleId="q3i4.1785499535625990011" targetNodeId="7891420495526438582" resolveInfo="houseCost" />
          </node>
        </node>
      </node>
      <node role="formElements" roleId="q3i4.8643211149799186886" type="q3i4.NewLineFormElement" typeId="q3i4.4439350695988819379" id="4439350695990176182" nodeInfo="ng" />
      <node role="formElements" roleId="q3i4.8643211149799186886" type="q3i4.Question" typeId="q3i4.917898825946650079" id="8898037134863175115" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="outside" />
        <property name="label" nameId="q3i4.917898825946661686" value="Outside: Check me." />
        <node role="type" roleId="q3i4.917898825946661687" type="q3i4.Boolean" typeId="q3i4.113961188538979205" id="8898037134863175117" nodeInfo="ng" />
      </node>
      <node role="formElements" roleId="q3i4.8643211149799186886" type="q3i4.NewLineFormElement" typeId="q3i4.4439350695988819379" id="4439350695990179003" nodeInfo="ng" />
      <node role="formElements" roleId="q3i4.8643211149799186886" type="q3i4.ConditionalBlock" typeId="q3i4.4395333163361697423" id="8898037134863175111" nodeInfo="ng">
        <node role="condition" roleId="q3i4.4395333163361697425" type="q3i4.QuestionReference" typeId="q3i4.1785499535625990009" id="8898037134863175122" nodeInfo="ng">
          <link role="question" roleId="q3i4.1785499535625990011" targetNodeId="8898037134863175115" resolveInfo="outside" />
        </node>
        <node role="body" roleId="q3i4.4395333163361697426" type="q3i4.Block" typeId="q3i4.8643211149799186884" id="8898037134863175113" nodeInfo="ng">
          <node role="formElements" roleId="q3i4.8643211149799186886" type="q3i4.Question" typeId="q3i4.917898825946650079" id="8898037134863175123" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="inside" />
            <property name="label" nameId="q3i4.917898825946661686" value="Inside: Check me." />
            <node role="type" roleId="q3i4.917898825946661687" type="q3i4.Boolean" typeId="q3i4.113961188538979205" id="8898037134863175125" nodeInfo="ng" />
          </node>
        </node>
      </node>
      <node role="formElements" roleId="q3i4.8643211149799186886" type="q3i4.NewLineFormElement" typeId="q3i4.4439350695988819379" id="4439350695990181824" nodeInfo="ng" />
      <node role="formElements" roleId="q3i4.8643211149799186886" type="q3i4.ConditionalBlock" typeId="q3i4.4395333163361697423" id="8898037134863175127" nodeInfo="ng">
        <node role="condition" roleId="q3i4.4395333163361697425" type="q3i4.QuestionReference" typeId="q3i4.1785499535625990009" id="8898037134863175130" nodeInfo="ng">
          <link role="question" roleId="q3i4.1785499535625990011" targetNodeId="8898037134863175123" resolveInfo="inside" />
        </node>
        <node role="body" roleId="q3i4.4395333163361697426" type="q3i4.Block" typeId="q3i4.8643211149799186884" id="8898037134863175129" nodeInfo="ng">
          <node role="formElements" roleId="q3i4.8643211149799186886" type="q3i4.Question" typeId="q3i4.917898825946650079" id="8898037134863175147" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="shouldNotSeeWhenInsideFoldedIn" />
            <property name="label" nameId="q3i4.917898825946661686" value="If Outside unchecked you should not see me." />
            <node role="type" roleId="q3i4.917898825946661687" type="q3i4.Boolean" typeId="q3i4.113961188538979205" id="8898037134863175149" nodeInfo="ng" />
          </node>
        </node>
      </node>
    </node>
  </root>
  <root type="2u6g.StyleDefinition" typeId="2u6g.8418675792474610304" id="7394587662563509256" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="HouseOwningWithStyle" />
    <node role="rules" roleId="2u6g.8418675792474650541" type="2u6g.QuestionRule" typeId="2u6g.8418675792474650535" id="7394587662563509257" nodeInfo="ng">
      <node role="questionReference" roleId="2u6g.8418675792474863824" type="2u6g.QuestionReference" typeId="2u6g.8418675792474863223" id="7394587662563509259" nodeInfo="ng">
        <link role="question" roleId="2u6g.8418675792474863279" targetNodeId="4395333163361689777" resolveInfo="hasBoughtHouse" />
      </node>
      <node role="stylingRuleStatements" roleId="2u6g.5310625304505888034" type="2u6g.WidgetStatement" typeId="2u6g.5310625304505895066" id="7394587662563509260" nodeInfo="ng">
        <node role="widget" roleId="2u6g.5310625304505895068" type="2u6g.RadioButton" typeId="2u6g.5310625304505873667" id="7394587662563528334" nodeInfo="ng" />
      </node>
      <node role="stylingRuleStatements" roleId="2u6g.5310625304505888034" type="2u6g.BackgroundColorStatement" typeId="2u6g.7394587662563561008" id="7394587662563594594" nodeInfo="ng">
        <property name="color" nameId="2u6g.7394587662563563194" value="blue" />
      </node>
    </node>
    <node role="rules" roleId="2u6g.8418675792474650541" type="2u6g.QuestionRule" typeId="2u6g.8418675792474650535" id="7394587662563509265" nodeInfo="ng">
      <node role="questionReference" roleId="2u6g.8418675792474863824" type="2u6g.QuestionReference" typeId="2u6g.8418675792474863223" id="7394587662563509267" nodeInfo="ng">
        <link role="question" roleId="2u6g.8418675792474863279" targetNodeId="1582178472725747312" resolveInfo="carCost" />
      </node>
      <node role="stylingRuleStatements" roleId="2u6g.5310625304505888034" type="2u6g.WidgetStatement" typeId="2u6g.5310625304505895066" id="7394587662563509268" nodeInfo="ng">
        <node role="widget" roleId="2u6g.5310625304505895068" type="2u6g.Range" typeId="2u6g.7394587662563428930" id="7394587662563509270" nodeInfo="ng" />
      </node>
      <node role="stylingRuleStatements" roleId="2u6g.5310625304505888034" type="2u6g.BackgroundColorStatement" typeId="2u6g.7394587662563561008" id="7394587662563594596" nodeInfo="ng">
        <property name="color" nameId="2u6g.7394587662563563194" value="cyan" />
      </node>
    </node>
    <node role="rules" roleId="2u6g.8418675792474650541" type="2u6g.QuestionRule" typeId="2u6g.8418675792474650535" id="4133767426328535311" nodeInfo="ng">
      <node role="questionReference" roleId="2u6g.8418675792474863824" type="2u6g.QuestionReference" typeId="2u6g.8418675792474863223" id="4133767426328535313" nodeInfo="ng">
        <link role="question" roleId="2u6g.8418675792474863279" targetNodeId="4395333163361689781" resolveInfo="hasMaintLoan" />
      </node>
      <node role="stylingRuleStatements" roleId="2u6g.5310625304505888034" type="2u6g.WidgetStatement" typeId="2u6g.5310625304505895066" id="4133767426328535317" nodeInfo="ng">
        <node role="widget" roleId="2u6g.5310625304505895068" type="2u6g.RadioButton" typeId="2u6g.5310625304505873667" id="4133767426328535319" nodeInfo="ng" />
      </node>
    </node>
    <node role="rules" roleId="2u6g.8418675792474650541" type="2u6g.QuestionRule" typeId="2u6g.8418675792474650535" id="6182267496222741920" nodeInfo="ng">
      <node role="questionReference" roleId="2u6g.8418675792474863824" type="2u6g.QuestionReference" typeId="2u6g.8418675792474863223" id="6182267496222741922" nodeInfo="ng">
        <link role="question" roleId="2u6g.8418675792474863279" targetNodeId="7290388397545998852" resolveInfo="desiredChanges" />
      </node>
    </node>
  </root>
</model>

