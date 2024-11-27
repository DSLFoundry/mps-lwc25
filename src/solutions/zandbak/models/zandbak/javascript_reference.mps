<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:fba4b950-030c-428d-9be8-c5b497864bab(zandbak.javascript_reference)">
  <persistence version="8" />
  <language namespace="23f8f5c8-c424-4585-9e67-e43ec0c23c7d(JavaScript)" />
  <language namespace="60846345-74ad-46ca-aeec-8ec9b1fd7587(JSON)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="gsa0" modelUID="r:749a161a-c4fa-4ccd-9eb8-e79f5e4a6a60(JavaScript.structure)" version="10" implicit="yes" />
  <import index="t7lg" modelUID="r:a96e69fb-b2ea-4eac-b994-570ea4d99eed(JSON.structure)" version="1" implicit="yes" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="4" implicit="yes" />
  <root type="gsa0.Program" typeId="gsa0.4031917828564848554" id="2957252048714825492" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="example-allWidgets" />
    <node role="elements" roleId="gsa0.9188439651718537906" type="gsa0.ExprStatement" typeId="gsa0.632813521157717787" id="2957252048714844355" nodeInfo="ng">
      <node role="expr" roleId="gsa0.632813521157717827" type="gsa0.DotExpression" typeId="gsa0.2868603563889925974" id="2957252048714844365" nodeInfo="ng">
        <node role="exprlist" roleId="gsa0.2868603563889926050" type="gsa0.FunctionCall" typeId="gsa0.2868603563890928558" id="2957252048714844259" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="$" />
          <node role="arguments" roleId="gsa0.2868603563890928637" type="gsa0.ArgumentList" typeId="gsa0.2868603563889526990" id="2957252048714844261" nodeInfo="ng">
            <node role="arguments" roleId="gsa0.2868603563889526991" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048714844268" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="document" />
            </node>
          </node>
        </node>
        <node role="exprlist" roleId="gsa0.2868603563889926050" type="gsa0.FunctionCall" typeId="gsa0.2868603563890928558" id="2957252048714858474" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="ready" />
          <node role="arguments" roleId="gsa0.2868603563890928637" type="gsa0.ArgumentList" typeId="gsa0.2868603563889526990" id="2957252048714858476" nodeInfo="ng">
            <node role="arguments" roleId="gsa0.2868603563889526991" type="gsa0.AnonymousFunction" typeId="gsa0.2957252048714881273" id="2957252048715283045" nodeInfo="ng">
              <node role="body" roleId="gsa0.2957252048715030697" type="gsa0.CompoundStatement" typeId="gsa0.9188439651719047863" id="2957252048715283088" nodeInfo="ng">
                <node role="statements" roleId="gsa0.9188439651719047866" type="gsa0.VariableList" typeId="gsa0.632813521157821325" id="2957252048715283090" nodeInfo="ng">
                  <node role="vars" roleId="gsa0.632813521157821337" type="gsa0.Assignment" typeId="gsa0.632813521157821425" id="2957252048715283117" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="form" />
                    <node role="expr" roleId="gsa0.632813521157821428" type="gsa0.Constructor" typeId="gsa0.2868603563889228072" id="2957252048715283147" nodeInfo="ng">
                      <node role="identifiers" roleId="gsa0.2868603563889526880" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048715283178" nodeInfo="ng">
                        <property name="name" nameId="tpck.1169194664001" value="QLrt" />
                      </node>
                      <node role="identifiers" roleId="gsa0.2868603563889526880" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048715283181" nodeInfo="ng">
                        <property name="name" nameId="tpck.1169194664001" value="FormWidget" />
                      </node>
                      <node role="argumentlist" roleId="gsa0.2868603563889630774" type="gsa0.ArgumentList" typeId="gsa0.2868603563889526990" id="2957252048715283228" nodeInfo="ng">
                        <node role="arguments" roleId="gsa0.2868603563889526991" type="gsa0.JSONObject" typeId="gsa0.981240464064929872" id="2957252048715283310" nodeInfo="ng">
                          <node role="json" roleId="gsa0.981240464064929873" type="t7lg.Object" typeId="t7lg.10699986371514977" id="2957252048715283312" nodeInfo="ng">
                            <node role="members" roleId="t7lg.10699986371534188" type="t7lg.Member" typeId="t7lg.10699986371534184" id="2957252048715283316" nodeInfo="ng">
                              <property name="name" nameId="tpck.1169194664001" value="name" />
                              <node role="value" roleId="t7lg.10699986371562304" type="t7lg.StringValue" typeId="t7lg.10699986371562314" id="2957252048715283378" nodeInfo="ng">
                                <property name="value" nameId="t7lg.10699986371562366" value="Widget gallery" />
                              </node>
                            </node>
                            <node role="members" roleId="t7lg.10699986371534188" type="t7lg.Member" typeId="t7lg.10699986371534184" id="2957252048715283442" nodeInfo="ng">
                              <property name="name" nameId="tpck.1169194664001" value="submitCallback" />
                              <node role="value" roleId="t7lg.10699986371562304" type="gsa0.ExpressionValue" typeId="gsa0.2957252048715284477" id="2957252048715443362" nodeInfo="ng">
                                <node role="expr" roleId="gsa0.2957252048715284478" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048715443366" nodeInfo="ng">
                                  <property name="name" nameId="tpck.1169194664001" value="persist" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="lval" roleId="gsa0.2957252048716734855" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048716925119" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="form" />
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="gsa0.9188439651719047866" type="gsa0.VariableList" typeId="gsa0.632813521157821325" id="2957252048715283704" nodeInfo="ng">
                  <node role="vars" roleId="gsa0.632813521157821337" type="gsa0.Assignment" typeId="gsa0.632813521157821425" id="2957252048715283756" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="stringValue" />
                    <node role="expr" roleId="gsa0.632813521157821428" type="gsa0.DotExpression" typeId="gsa0.2868603563889925974" id="2957252048715466874" nodeInfo="ng">
                      <node role="exprlist" roleId="gsa0.2868603563889926050" type="gsa0.Constructor" typeId="gsa0.2868603563889228072" id="2957252048715283798" nodeInfo="ng">
                        <node role="identifiers" roleId="gsa0.2868603563889526880" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048715283800" nodeInfo="ng">
                          <property name="name" nameId="tpck.1169194664001" value="QLrt" />
                        </node>
                        <node role="identifiers" roleId="gsa0.2868603563889526880" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048715283844" nodeInfo="ng">
                          <property name="name" nameId="tpck.1169194664001" value="SimpleFormElementWidget" />
                        </node>
                        <node role="argumentlist" roleId="gsa0.2868603563889630774" type="gsa0.ArgumentList" typeId="gsa0.2868603563889526990" id="2957252048715283998" nodeInfo="ng">
                          <node role="arguments" roleId="gsa0.2868603563889526991" type="gsa0.JSONObject" typeId="gsa0.981240464064929872" id="2957252048715284042" nodeInfo="ng">
                            <node role="json" roleId="gsa0.981240464064929873" type="t7lg.Object" typeId="t7lg.10699986371514977" id="2957252048715284044" nodeInfo="ng">
                              <node role="members" roleId="t7lg.10699986371534188" type="t7lg.Member" typeId="t7lg.10699986371534184" id="2957252048715284089" nodeInfo="ng">
                                <property name="name" nameId="tpck.1169194664001" value="name" />
                                <node role="value" roleId="t7lg.10699986371562304" type="t7lg.StringValue" typeId="t7lg.10699986371562314" id="2957252048715284091" nodeInfo="ng">
                                  <property name="value" nameId="t7lg.10699986371562366" value="string value" />
                                </node>
                              </node>
                              <node role="members" roleId="t7lg.10699986371534188" type="t7lg.Member" typeId="t7lg.10699986371534184" id="2957252048715284136" nodeInfo="ng">
                                <property name="name" nameId="tpck.1169194664001" value="label" />
                                <node role="value" roleId="t7lg.10699986371562304" type="t7lg.StringValue" typeId="t7lg.10699986371562314" id="2957252048715284228" nodeInfo="ng">
                                  <property name="value" nameId="t7lg.10699986371562366" value="String value:" />
                                </node>
                              </node>
                              <node role="members" roleId="t7lg.10699986371534188" type="t7lg.Member" typeId="t7lg.10699986371534184" id="2957252048715284320" nodeInfo="ng">
                                <property name="name" nameId="tpck.1169194664001" value="valueWidget" />
                                <node role="value" roleId="t7lg.10699986371562304" type="gsa0.ExpressionValue" typeId="gsa0.2957252048715284477" id="2957252048715443465" nodeInfo="ng">
                                  <node role="expr" roleId="gsa0.2957252048715284478" type="gsa0.Constructor" typeId="gsa0.2868603563889228072" id="2957252048715443469" nodeInfo="ng">
                                    <node role="identifiers" roleId="gsa0.2868603563889526880" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048715443471" nodeInfo="ng">
                                      <property name="name" nameId="tpck.1169194664001" value="QLrt" />
                                    </node>
                                    <node role="identifiers" roleId="gsa0.2868603563889526880" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048715443577" nodeInfo="ng">
                                      <property name="name" nameId="tpck.1169194664001" value="StringValueWidget" />
                                    </node>
                                    <node role="argumentlist" roleId="gsa0.2868603563889630774" type="gsa0.ArgumentList" typeId="gsa0.2868603563889526990" id="2957252048715443704" nodeInfo="ng" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="exprlist" roleId="gsa0.2868603563889926050" type="gsa0.FunctionCall" typeId="gsa0.2868603563890928558" id="2957252048715467190" nodeInfo="ng">
                        <property name="name" nameId="tpck.1169194664001" value="appendTo" />
                        <node role="arguments" roleId="gsa0.2868603563890928637" type="gsa0.ArgumentList" typeId="gsa0.2868603563889526990" id="2957252048715467192" nodeInfo="ng">
                          <node role="arguments" roleId="gsa0.2868603563889526991" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048715467324" nodeInfo="ng">
                            <property name="name" nameId="tpck.1169194664001" value="form" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="lval" roleId="gsa0.2957252048716734855" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048716925304" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="stringValue" />
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="gsa0.9188439651719047866" type="gsa0.ExprStatement" typeId="gsa0.632813521157717787" id="2957252048715884296" nodeInfo="ng">
                  <node role="expr" roleId="gsa0.632813521157717827" type="gsa0.DotExpression" typeId="gsa0.2868603563889925974" id="2957252048715884337" nodeInfo="ng">
                    <node role="exprlist" roleId="gsa0.2868603563889926050" type="gsa0.Constructor" typeId="gsa0.2868603563889228072" id="2957252048715884465" nodeInfo="ng">
                      <node role="identifiers" roleId="gsa0.2868603563889526880" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048715884467" nodeInfo="ng">
                        <property name="name" nameId="tpck.1169194664001" value="QLrt" />
                      </node>
                      <node role="identifiers" roleId="gsa0.2868603563889526880" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048715884537" nodeInfo="ng">
                        <property name="name" nameId="tpck.1169194664001" value="SimpleFormElementWidget" />
                      </node>
                      <node role="argumentlist" roleId="gsa0.2868603563889630774" type="gsa0.ArgumentList" typeId="gsa0.2868603563889526990" id="2957252048715884469" nodeInfo="ng">
                        <node role="arguments" roleId="gsa0.2868603563889526991" type="gsa0.JSONObject" typeId="gsa0.981240464064929872" id="2957252048715884933" nodeInfo="ng">
                          <node role="json" roleId="gsa0.981240464064929873" type="t7lg.Object" typeId="t7lg.10699986371514977" id="2957252048715884934" nodeInfo="ng">
                            <node role="members" roleId="t7lg.10699986371534188" type="t7lg.Member" typeId="t7lg.10699986371534184" id="2957252048715885006" nodeInfo="ng">
                              <property name="name" nameId="tpck.1169194664001" value="label" />
                              <node role="value" roleId="t7lg.10699986371562304" type="t7lg.StringValue" typeId="t7lg.10699986371562314" id="2957252048715885144" nodeInfo="ng">
                                <property name="value" nameId="t7lg.10699986371562366" value="String Defined?" />
                              </node>
                            </node>
                            <node role="members" roleId="t7lg.10699986371534188" type="t7lg.Member" typeId="t7lg.10699986371534184" id="2957252048715885215" nodeInfo="ng">
                              <property name="name" nameId="tpck.1169194664001" value="valueWidget" />
                              <node role="value" roleId="t7lg.10699986371562304" type="gsa0.ExpressionValue" typeId="gsa0.2957252048715284477" id="2957252048715885359" nodeInfo="ng">
                                <node role="expr" roleId="gsa0.2957252048715284478" type="gsa0.Constructor" typeId="gsa0.2868603563889228072" id="2957252048715885363" nodeInfo="ng">
                                  <node role="identifiers" roleId="gsa0.2868603563889526880" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048715885446" nodeInfo="ng">
                                    <property name="name" nameId="tpck.1169194664001" value="QLrt" />
                                  </node>
                                  <node role="identifiers" roleId="gsa0.2868603563889526880" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048715885448" nodeInfo="ng">
                                    <property name="name" nameId="tpck.1169194664001" value="BooleanValueWidget" />
                                  </node>
                                  <node role="argumentlist" roleId="gsa0.2868603563889630774" type="gsa0.ArgumentList" typeId="gsa0.2868603563889526990" id="2957252048715885367" nodeInfo="ng">
                                    <node role="arguments" roleId="gsa0.2868603563889526991" type="gsa0.Constructor" typeId="gsa0.2868603563889228072" id="2957252048715885679" nodeInfo="ng">
                                      <node role="identifiers" roleId="gsa0.2868603563889526880" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048715885681" nodeInfo="ng">
                                        <property name="name" nameId="tpck.1169194664001" value="QLrt" />
                                      </node>
                                      <node role="identifiers" roleId="gsa0.2868603563889526880" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048715885688" nodeInfo="ng">
                                        <property name="name" nameId="tpck.1169194664001" value="LazyValue" />
                                      </node>
                                      <node role="argumentlist" roleId="gsa0.2868603563889630774" type="gsa0.ArgumentList" typeId="gsa0.2868603563889526990" id="2957252048715885683" nodeInfo="ng">
                                        <node role="arguments" roleId="gsa0.2868603563889526991" type="gsa0.AnonymousFunction" typeId="gsa0.2957252048714881273" id="2957252048715885928" nodeInfo="ng">
                                          <node role="body" roleId="gsa0.2957252048715030697" type="gsa0.CompoundStatement" typeId="gsa0.9188439651719047863" id="2957252048715885929" nodeInfo="ng">
                                            <node role="statements" roleId="gsa0.9188439651719047866" type="gsa0.ReturnStatement" typeId="gsa0.632813521157666055" id="2957252048715886097" nodeInfo="ng">
                                              <node role="expr" roleId="gsa0.632813521157666090" type="gsa0.ArrayExpression" typeId="gsa0.2957252048715886919" id="2957252048716071913" nodeInfo="ng">
                                                <node role="values" roleId="gsa0.2957252048715886971" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048716086723" nodeInfo="ng">
                                                  <property name="name" nameId="tpck.1169194664001" value="stringValue" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node role="arguments" roleId="gsa0.2868603563889526991" type="gsa0.AnonymousFunction" typeId="gsa0.2957252048714881273" id="2957252048716086834" nodeInfo="ng">
                                          <node role="paramList" roleId="gsa0.2957252048715030695" type="gsa0.Parameter" typeId="gsa0.9188439651719047855" id="2957252048716086933" nodeInfo="ng">
                                            <property name="name" nameId="tpck.1169194664001" value="stringValue" />
                                          </node>
                                          <node role="body" roleId="gsa0.2957252048715030697" type="gsa0.CompoundStatement" typeId="gsa0.9188439651719047863" id="2957252048716086836" nodeInfo="ng">
                                            <node role="statements" roleId="gsa0.9188439651719047866" type="gsa0.ReturnStatement" typeId="gsa0.632813521157666055" id="2957252048716087023" nodeInfo="ng">
                                              <node role="expr" roleId="gsa0.632813521157666090" type="gsa0.NotEquivalentExpression" typeId="gsa0.2957252048716087253" id="2957252048716150326" nodeInfo="ng">
                                                <node role="rightExpression" roleId="tpee.1081773367579" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048716165334" nodeInfo="ng">
                                                  <property name="name" nameId="tpck.1169194664001" value="undefined" />
                                                </node>
                                                <node role="leftExpression" roleId="tpee.1081773367580" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048716150322" nodeInfo="ng">
                                                  <property name="name" nameId="tpck.1169194664001" value="stringValue" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node role="arguments" roleId="gsa0.2868603563889526991" type="tpee.BooleanConstant" typeId="tpee.1068580123137" id="2957252048716165652" nodeInfo="nn">
                                          <property name="value" nameId="tpee.1068580123138" value="true" />
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
                    </node>
                    <node role="exprlist" roleId="gsa0.2868603563889926050" type="gsa0.FunctionCall" typeId="gsa0.2868603563890928558" id="2957252048715884792" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="appendTo" />
                      <node role="arguments" roleId="gsa0.2868603563890928637" type="gsa0.ArgumentList" typeId="gsa0.2868603563889526990" id="2957252048715884794" nodeInfo="ng">
                        <node role="arguments" roleId="gsa0.2868603563889526991" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048715884866" nodeInfo="ng">
                          <property name="name" nameId="tpck.1169194664001" value="form" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="gsa0.9188439651719047866" type="gsa0.VariableList" typeId="gsa0.632813521157821325" id="2957252048716438379" nodeInfo="ng">
                  <node role="vars" roleId="gsa0.632813521157821337" type="gsa0.Assignment" typeId="gsa0.632813521157821425" id="2957252048716438559" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="qualityEnum" />
                    <node role="expr" roleId="gsa0.632813521157821428" type="gsa0.ArrayExpression" typeId="gsa0.2957252048715886919" id="2957252048716438670" nodeInfo="ng">
                      <node role="values" roleId="gsa0.2957252048715886971" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="2957252048716438778" nodeInfo="nn">
                        <property name="value" nameId="tpee.1070475926801" value="good" />
                      </node>
                      <node role="values" roleId="gsa0.2957252048715886971" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="2957252048716438922" nodeInfo="nn">
                        <property name="value" nameId="tpee.1070475926801" value="bad" />
                      </node>
                      <node role="values" roleId="gsa0.2957252048715886971" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="2957252048716439064" nodeInfo="nn">
                        <property name="value" nameId="tpee.1070475926801" value="don't know" />
                      </node>
                    </node>
                    <node role="lval" roleId="gsa0.2957252048716734855" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048716925674" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="qualityEnum" />
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="gsa0.9188439651719047866" type="gsa0.VariableList" typeId="gsa0.632813521157821325" id="2957252048716691079" nodeInfo="ng">
                  <node role="vars" roleId="gsa0.632813521157821337" type="gsa0.Assignment" typeId="gsa0.632813521157821425" id="2957252048716691199" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="enumValue" />
                    <node role="expr" roleId="gsa0.632813521157821428" type="gsa0.DotExpression" typeId="gsa0.2868603563889925974" id="2957252048716695735" nodeInfo="ng">
                      <node role="exprlist" roleId="gsa0.2868603563889926050" type="gsa0.Constructor" typeId="gsa0.2868603563889228072" id="2957252048716691405" nodeInfo="ng">
                        <node role="identifiers" roleId="gsa0.2868603563889526880" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048716691407" nodeInfo="ng">
                          <property name="name" nameId="tpck.1169194664001" value="QLrt" />
                        </node>
                        <node role="identifiers" roleId="gsa0.2868603563889526880" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048716691536" nodeInfo="ng">
                          <property name="name" nameId="tpck.1169194664001" value="SimpleFormElementWidget" />
                        </node>
                        <node role="argumentlist" roleId="gsa0.2868603563889630774" type="gsa0.ArgumentList" typeId="gsa0.2868603563889526990" id="2957252048716691409" nodeInfo="ng">
                          <node role="arguments" roleId="gsa0.2868603563889526991" type="gsa0.JSONObject" typeId="gsa0.981240464064929872" id="2957252048716691895" nodeInfo="ng">
                            <node role="json" roleId="gsa0.981240464064929873" type="t7lg.Object" typeId="t7lg.10699986371514977" id="2957252048716691896" nodeInfo="ng">
                              <node role="members" roleId="t7lg.10699986371534188" type="t7lg.Member" typeId="t7lg.10699986371534184" id="2957252048716692005" nodeInfo="ng">
                                <property name="name" nameId="tpck.1169194664001" value="name" />
                                <node role="value" roleId="t7lg.10699986371562304" type="t7lg.StringValue" typeId="t7lg.10699986371562314" id="2957252048716692114" nodeInfo="ng">
                                  <property name="value" nameId="t7lg.10699986371562366" value="enum value" />
                                </node>
                              </node>
                              <node role="members" roleId="t7lg.10699986371534188" type="t7lg.Member" typeId="t7lg.10699986371534184" id="2957252048716692332" nodeInfo="ng">
                                <property name="name" nameId="tpck.1169194664001" value="label" />
                                <node role="value" roleId="t7lg.10699986371562304" type="t7lg.StringValue" typeId="t7lg.10699986371562314" id="2957252048716692556" nodeInfo="ng">
                                  <property name="value" nameId="t7lg.10699986371562366" value="Enum value - Quality:" />
                                </node>
                              </node>
                              <node role="members" roleId="t7lg.10699986371534188" type="t7lg.Member" typeId="t7lg.10699986371534184" id="2957252048716693018" nodeInfo="ng">
                                <property name="name" nameId="tpck.1169194664001" value="valueWidget" />
                                <node role="value" roleId="t7lg.10699986371562304" type="gsa0.ExpressionValue" typeId="gsa0.2957252048715284477" id="2957252048716693246" nodeInfo="ng">
                                  <node role="expr" roleId="gsa0.2957252048715284478" type="gsa0.Constructor" typeId="gsa0.2868603563889228072" id="2957252048716693250" nodeInfo="ng">
                                    <node role="identifiers" roleId="gsa0.2868603563889526880" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048716693252" nodeInfo="ng">
                                      <property name="name" nameId="tpck.1169194664001" value="QLrt" />
                                    </node>
                                    <node role="identifiers" roleId="gsa0.2868603563889526880" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048716693508" nodeInfo="ng">
                                      <property name="name" nameId="tpck.1169194664001" value="EnumValueWidget" />
                                    </node>
                                    <node role="argumentlist" roleId="gsa0.2868603563889630774" type="gsa0.ArgumentList" typeId="gsa0.2868603563889526990" id="2957252048716693254" nodeInfo="ng">
                                      <node role="arguments" roleId="gsa0.2868603563889526991" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048716693745" nodeInfo="ng">
                                        <property name="name" nameId="tpck.1169194664001" value="qualityEnum" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="exprlist" roleId="gsa0.2868603563889926050" type="gsa0.FunctionCall" typeId="gsa0.2868603563890928558" id="2957252048716695947" nodeInfo="ng">
                        <property name="name" nameId="tpck.1169194664001" value="appendTo" />
                        <node role="arguments" roleId="gsa0.2868603563890928637" type="gsa0.ArgumentList" typeId="gsa0.2868603563889526990" id="2957252048716695949" nodeInfo="ng">
                          <node role="arguments" roleId="gsa0.2868603563889526991" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048716696109" nodeInfo="ng">
                            <property name="name" nameId="tpck.1169194664001" value="form" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="lval" roleId="gsa0.2957252048716734855" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048716926046" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="enumValue" />
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="gsa0.9188439651719047866" type="gsa0.ExprStatement" typeId="gsa0.632813521157717787" id="2957252048716696456" nodeInfo="ng">
                  <node role="expr" roleId="gsa0.632813521157717827" type="gsa0.DotExpression" typeId="gsa0.2868603563889925974" id="2957252048716696581" nodeInfo="ng">
                    <node role="exprlist" roleId="gsa0.2868603563889926050" type="gsa0.Constructor" typeId="gsa0.2868603563889228072" id="2957252048716696730" nodeInfo="ng">
                      <node role="identifiers" roleId="gsa0.2868603563889526880" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048716696732" nodeInfo="ng">
                        <property name="name" nameId="tpck.1169194664001" value="QLrt" />
                      </node>
                      <node role="identifiers" roleId="gsa0.2868603563889526880" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048716697303" nodeInfo="ng">
                        <property name="name" nameId="tpck.1169194664001" value="SimpleFormElementWidget" />
                      </node>
                      <node role="argumentlist" roleId="gsa0.2868603563889630774" type="gsa0.ArgumentList" typeId="gsa0.2868603563889526990" id="2957252048716696734" nodeInfo="ng">
                        <node role="arguments" roleId="gsa0.2868603563889526991" type="gsa0.JSONObject" typeId="gsa0.981240464064929872" id="2957252048716697566" nodeInfo="ng">
                          <node role="json" roleId="gsa0.981240464064929873" type="t7lg.Object" typeId="t7lg.10699986371514977" id="2957252048716697567" nodeInfo="ng">
                            <node role="members" roleId="t7lg.10699986371534188" type="t7lg.Member" typeId="t7lg.10699986371534184" id="2957252048716697702" nodeInfo="ng">
                              <property name="name" nameId="tpck.1169194664001" value="label" />
                              <node role="value" roleId="t7lg.10699986371562304" type="t7lg.StringValue" typeId="t7lg.10699986371562314" id="2957252048716697837" nodeInfo="ng">
                                <property name="value" nameId="t7lg.10699986371562366" value="enum choice defined?" />
                              </node>
                            </node>
                            <node role="members" roleId="t7lg.10699986371534188" type="t7lg.Member" typeId="t7lg.10699986371534184" id="2957252048716698107" nodeInfo="ng">
                              <property name="name" nameId="tpck.1169194664001" value="valueWidget" />
                              <node role="value" roleId="t7lg.10699986371562304" type="gsa0.ExpressionValue" typeId="gsa0.2957252048715284477" id="2957252048716698686" nodeInfo="ng">
                                <node role="expr" roleId="gsa0.2957252048715284478" type="gsa0.Constructor" typeId="gsa0.2868603563889228072" id="2957252048716698827" nodeInfo="ng">
                                  <node role="identifiers" roleId="gsa0.2868603563889526880" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048716698829" nodeInfo="ng">
                                    <property name="name" nameId="tpck.1169194664001" value="QLrt" />
                                  </node>
                                  <node role="identifiers" roleId="gsa0.2868603563889526880" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048716699133" nodeInfo="ng">
                                    <property name="name" nameId="tpck.1169194664001" value="BooleanValueWidget" />
                                  </node>
                                  <node role="argumentlist" roleId="gsa0.2868603563889630774" type="gsa0.ArgumentList" typeId="gsa0.2868603563889526990" id="2957252048716698831" nodeInfo="ng">
                                    <node role="arguments" roleId="gsa0.2868603563889526991" type="gsa0.Constructor" typeId="gsa0.2868603563889228072" id="2957252048716699920" nodeInfo="ng">
                                      <node role="identifiers" roleId="gsa0.2868603563889526880" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048716699922" nodeInfo="ng">
                                        <property name="name" nameId="tpck.1169194664001" value="QLrt" />
                                      </node>
                                      <node role="identifiers" roleId="gsa0.2868603563889526880" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048716700094" nodeInfo="ng">
                                        <property name="name" nameId="tpck.1169194664001" value="LazyValue" />
                                      </node>
                                      <node role="argumentlist" roleId="gsa0.2868603563889630774" type="gsa0.ArgumentList" typeId="gsa0.2868603563889526990" id="2957252048716699924" nodeInfo="ng">
                                        <node role="arguments" roleId="gsa0.2868603563889526991" type="gsa0.AnonymousFunction" typeId="gsa0.2957252048714881273" id="2957252048716700299" nodeInfo="ng">
                                          <node role="body" roleId="gsa0.2957252048715030697" type="gsa0.CompoundStatement" typeId="gsa0.9188439651719047863" id="2957252048716700301" nodeInfo="ng">
                                            <node role="statements" roleId="gsa0.9188439651719047866" type="gsa0.ReturnStatement" typeId="gsa0.632813521157666055" id="2957252048716700509" nodeInfo="ng">
                                              <node role="expr" roleId="gsa0.632813521157666090" type="gsa0.ArrayExpression" typeId="gsa0.2957252048715886919" id="2957252048716700661" nodeInfo="ng">
                                                <node role="values" roleId="gsa0.2957252048715886971" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048716700663" nodeInfo="ng">
                                                  <property name="name" nameId="tpck.1169194664001" value="enumValue" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node role="arguments" roleId="gsa0.2868603563889526991" type="gsa0.AnonymousFunction" typeId="gsa0.2957252048714881273" id="2957252048716700329" nodeInfo="ng">
                                          <node role="body" roleId="gsa0.2957252048715030697" type="gsa0.CompoundStatement" typeId="gsa0.9188439651719047863" id="2957252048716700331" nodeInfo="ng">
                                            <node role="statements" roleId="gsa0.9188439651719047866" type="gsa0.ReturnStatement" typeId="gsa0.632813521157666055" id="2957252048716700972" nodeInfo="ng">
                                              <node role="expr" roleId="gsa0.632813521157666090" type="gsa0.NotEquivalentExpression" typeId="gsa0.2957252048716087253" id="2957252048716700978" nodeInfo="ng">
                                                <node role="rightExpression" roleId="tpee.1081773367579" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048716701156" nodeInfo="ng">
                                                  <property name="name" nameId="tpck.1169194664001" value="undefined" />
                                                </node>
                                                <node role="leftExpression" roleId="tpee.1081773367580" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048716700974" nodeInfo="ng">
                                                  <property name="name" nameId="tpck.1169194664001" value="enumValue" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node role="paramList" roleId="gsa0.2957252048715030695" type="gsa0.Parameter" typeId="gsa0.9188439651719047855" id="2957252048716700817" nodeInfo="ng">
                                            <property name="name" nameId="tpck.1169194664001" value="enumValue" />
                                          </node>
                                        </node>
                                        <node role="arguments" roleId="gsa0.2868603563889526991" type="tpee.BooleanConstant" typeId="tpee.1068580123137" id="2957252048716700270" nodeInfo="nn">
                                          <property name="value" nameId="tpee.1068580123138" value="true" />
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
                    </node>
                    <node role="exprlist" roleId="gsa0.2868603563889926050" type="gsa0.FunctionCall" typeId="gsa0.2868603563890928558" id="2957252048716697016" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="appendTo" />
                      <node role="arguments" roleId="gsa0.2868603563890928637" type="gsa0.ArgumentList" typeId="gsa0.2868603563889526990" id="2957252048716697018" nodeInfo="ng">
                        <node role="arguments" roleId="gsa0.2868603563889526991" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048716697172" nodeInfo="ng">
                          <property name="name" nameId="tpck.1169194664001" value="form" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="gsa0.9188439651719047866" type="gsa0.ExprStatement" typeId="gsa0.632813521157717787" id="2957252048716702490" nodeInfo="ng">
                  <node role="expr" roleId="gsa0.632813521157717827" type="gsa0.DotExpression" typeId="gsa0.2868603563889925974" id="2957252048716702662" nodeInfo="ng">
                    <node role="exprlist" roleId="gsa0.2868603563889926050" type="gsa0.FunctionCall" typeId="gsa0.2868603563890928558" id="2957252048716703084" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="$" />
                      <node role="arguments" roleId="gsa0.2868603563890928637" type="gsa0.ArgumentList" typeId="gsa0.2868603563889526990" id="2957252048716703086" nodeInfo="ng">
                        <node role="arguments" roleId="gsa0.2868603563889526991" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="2957252048716703283" nodeInfo="nn">
                          <property name="value" nameId="tpee.1070475926801" value="#QL-content" />
                        </node>
                      </node>
                    </node>
                    <node role="exprlist" roleId="gsa0.2868603563889926050" type="gsa0.FunctionCall" typeId="gsa0.2868603563890928558" id="2957252048716703858" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="append" />
                      <node role="arguments" roleId="gsa0.2868603563890928637" type="gsa0.ArgumentList" typeId="gsa0.2868603563889526990" id="2957252048716703860" nodeInfo="ng">
                        <node role="arguments" roleId="gsa0.2868603563889526991" type="gsa0.DotExpression" typeId="gsa0.2868603563889925974" id="2957252048716704064" nodeInfo="ng">
                          <node role="exprlist" roleId="gsa0.2868603563889926050" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048716704068" nodeInfo="ng">
                            <property name="name" nameId="tpck.1169194664001" value="form" />
                          </node>
                          <node role="exprlist" roleId="gsa0.2868603563889926050" type="gsa0.FunctionCall" typeId="gsa0.2868603563890928558" id="2957252048716704480" nodeInfo="ng">
                            <property name="name" nameId="tpck.1169194664001" value="domElement" />
                            <node role="arguments" roleId="gsa0.2868603563890928637" type="gsa0.ArgumentList" typeId="gsa0.2868603563889526990" id="2957252048716704482" nodeInfo="ng" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="gsa0.9188439651719047866" type="gsa0.ExprStatement" typeId="gsa0.632813521157717787" id="2957252048716704857" nodeInfo="ng">
                  <node role="expr" roleId="gsa0.632813521157717827" type="gsa0.DotExpression" typeId="gsa0.2868603563889925974" id="2957252048716705042" nodeInfo="ng">
                    <node role="exprlist" roleId="gsa0.2868603563889926050" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048716705251" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="form" />
                    </node>
                    <node role="exprlist" roleId="gsa0.2868603563889926050" type="gsa0.FunctionCall" typeId="gsa0.2868603563890928558" id="2957252048716705461" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="activate" />
                      <node role="arguments" roleId="gsa0.2868603563890928637" type="gsa0.ArgumentList" typeId="gsa0.2868603563889526990" id="2957252048716705463" nodeInfo="ng" />
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="gsa0.9188439651719047866" type="gsa0.Function" typeId="gsa0.9188439651718537914" id="2957252048716731945" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="persist" />
                  <node role="paramList" roleId="gsa0.9188439651719047858" type="gsa0.Parameter" typeId="gsa0.9188439651719047855" id="2957252048716732485" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="data" />
                  </node>
                  <node role="body" roleId="gsa0.9188439651719047860" type="gsa0.CompoundStatement" typeId="gsa0.9188439651719047863" id="2957252048716731947" nodeInfo="ng">
                    <node role="statements" roleId="gsa0.9188439651719047866" type="gsa0.Assignment" typeId="gsa0.632813521157821425" id="2957252048716732663" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="localStorage" />
                      <node role="expr" roleId="gsa0.632813521157821428" type="gsa0.DotExpression" typeId="gsa0.2868603563889925974" id="2957252048716733935" nodeInfo="ng">
                        <node role="exprlist" roleId="gsa0.2868603563889926050" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048716734160" nodeInfo="ng">
                          <property name="name" nameId="tpck.1169194664001" value="JSON" />
                        </node>
                        <node role="exprlist" roleId="gsa0.2868603563889926050" type="gsa0.FunctionCall" typeId="gsa0.2868603563890928558" id="2957252048716734377" nodeInfo="ng">
                          <property name="name" nameId="tpck.1169194664001" value="stringify" />
                          <node role="arguments" roleId="gsa0.2868603563890928637" type="gsa0.ArgumentList" typeId="gsa0.2868603563889526990" id="2957252048716734379" nodeInfo="ng">
                            <node role="arguments" roleId="gsa0.2868603563889526991" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048716734600" nodeInfo="ng">
                              <property name="name" nameId="tpck.1169194664001" value="data" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="lval" roleId="gsa0.2957252048716734855" type="gsa0.ArraySubscript" typeId="gsa0.2957252048716933006" id="2957252048717117412" nodeInfo="ng">
                        <node role="array" roleId="gsa0.2957252048716933007" type="gsa0.Identifier" typeId="gsa0.632813521157821708" id="2957252048717117459" nodeInfo="ng">
                          <property name="name" nameId="tpck.1169194664001" value="localStorage" />
                        </node>
                        <node role="subscript" roleId="gsa0.2957252048716933009" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="2957252048717117494" nodeInfo="nn">
                          <property name="value" nameId="tpee.1070475926801" value="QL-persist" />
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
    </node>
  </root>
</model>

