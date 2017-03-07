<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:ns0="http://tigo.com/enterprise/serviceEntity/provisioning/dataChangeRequest/v1/schema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:ns23="http://tigo.com/enterprise/taskService/provisioning/v1" xmlns:ns3="http://tigo.com/enterprise/businessEntity/charge/v1/schema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns6="http://tigo.com/enterprise/resources/parameters/simple/v1/schema" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:grs="http://tigo.com/enterprise/resources/GeneralResponse/v1/schema" xmlns:ns8="http://tigo.com/commons/resources/additional/v1/schema" xmlns:ns9="http://tigo.com/enterprise/business/entities/notificationBasic/v1/schema" xmlns:ns10="http://tigo.com/enterprise/business/entities/client/basic/v1/schema" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:ns17="http://tigo.com/enterprise/taskService/paymentService/v1" xmlns:ns11="http://tigo.com/commons/generalResponse/v1/schema" xmlns:ns19="http://xmlns.oracle.com/pcbpel/adapter/db/OrchestratorOrders/Orchestrator/LOG_ORCHESTRATOR_PRODUCT_UPDATE" xmlns:ns16="http://tigo.com/enterprise/serviceEntity/provisioning/reverseProvideProcess" xmlns:ns24="http://tigo.com/enterprise/serviceEntity/provisioning/orderRequest/v1" xmlns:ns12="http://tigo.com/enterprise/serviceEntity/provisioning/orderRequest/v1/schema" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns13="http://tigo.com/enterprise/businessEntity/product/basic/v1/schema" xmlns:ns22="http://tigo.com/enterprise/serviceEntity/provisioning/reverseProcess" xmlns:ns14="http://tigo.com/enterprise/serviceEntity/provisioning/fieldService/v1/schema" xmlns:tns="http://tigo.com/enterprise/business/task/CRMOrderManagement/v1" xmlns:ns1="http://tigo.com/enterprise/business/entities/order/v1/schema" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns2="http://tigo.com/serviceEntity/provisioning/offeringDetail/v1/schema" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns4="http://tigo.com/enterprise/businessEntity/client/basic/v1/schema" xmlns:ns21="http://tigo.com/enterprise/serviceEntity/provisioning/provideProcess" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns5="http://tigo.com/commons/basicRequest/v1/schema" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ns7="http://tigo.com/enterprise/resources/GeneralRequest/v1/schema" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:sch="http://tigo.com/enterprise/business/task/CRMOrderManagement/v1/schema" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns20="http://tigo.com/enterprise/taskService/provisioning/v1/schema" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns18="http://tigo.com/enterprise/serviceEntity/provisioning/reversePayProcess" xmlns:ns15="http://tigo.com/enterprise/serviceEntity/provisioning/order/v1/schema" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns0 ns3 ns6 grs ns8 ns9 ns10 soap ns11 ns12 wsdl ns13 ns14 tns ns1 ns2 ns4 ns5 ns7 sch xsd ns15 ns23 ns17 ns19 ns16 ns24 ns22 ns21 ns20 ns18 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:template match="/">
      <ns12:BasicOrderRequest>
         <ns5:basicRequest>
            <utiReference>
               <xsl:value-of select="/sch:GenerateOrder_Response/GeneralResponse/uti"/>
            </utiReference>
         </ns5:basicRequest>
         <xsl:if test="/sch:GenerateOrder_Response/ServiceOffer">
            <ServiceOffer>
               <xsl:for-each select="/sch:GenerateOrder_Response/ServiceOffer/order">
                  <order>
                     <ns4:client>
                        <ID>
                           <xsl:value-of select="ns4:client/ID"/>
                        </ID>
                        <idType>
                           <xsl:value-of select="ns4:client/idType"/>
                        </idType>
                     </ns4:client>
                     <xsl:if test="charge_orders">
                        <charge_orders>
                           <xsl:for-each select="charge_orders/ns3:charge">
                              <ns3:charge>
                                 <value>
                                    <xsl:value-of select="value"/>
                                 </value>
                                 <wallet>
                                    <xsl:value-of select="wallet"/>
                                 </wallet>
                                 <xsl:if test="walletID">
                                    <walletID>
                                       <xsl:value-of select="walletID"/>
                                    </walletID>
                                 </xsl:if>
                                 <chargeReference>
                                    <xsl:value-of select="chargeReference"/>
                                 </chargeReference>
                                 <xsl:if test="ns8:additionals">
                                    <ns8:additionals>
                                       <xsl:if test="ns8:additionals/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="ns8:additionals/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:for-each select="ns8:additionals/additional">
                                          <additional>
                                             <name>
                                                <xsl:value-of select="name"/>
                                             </name>
                                             <value>
                                                <xsl:if test="value/@xsi:nil">
                                                   <xsl:attribute name="xsi:nil">
                                                      <xsl:value-of select="value/@xsi:nil"/>
                                                   </xsl:attribute>
                                                </xsl:if>
                                                <xsl:value-of select="value"/>
                                             </value>
                                          </additional>
                                       </xsl:for-each>
                                    </ns8:additionals>
                                 </xsl:if>
                              </ns3:charge>
                           </xsl:for-each>
                        </charge_orders>
                     </xsl:if>
                     <xsl:if test="productOffering">
                        <productOffering>
                           <xsl:for-each select="productOffering/ns15:order">
                              <ns15:order>
                                 <ns13:product>
                                    <CODE>
                                       <xsl:value-of select="ns13:product/CODE"/>
                                    </CODE>
                                    <name>
                                       <xsl:value-of select="ns13:product/name"/>
                                    </name>
                                 </ns13:product>
                                 <ns2:offeringDetail>
                                    <value>
                                       <xsl:value-of select="ns2:offeringDetail/value"/>
                                    </value>
                                    <xsl:if test="ns2:offeringDetail/currency">
                                       <currency>
                                          <xsl:value-of select="ns2:offeringDetail/currency"/>
                                       </currency>
                                    </xsl:if>
                                    <xsl:if test="ns2:offeringDetail/expirationDate">
                                       <expirationDate>
                                          <xsl:value-of select="ns2:offeringDetail/expirationDate"/>
                                       </expirationDate>
                                    </xsl:if>
                                    <xsl:if test="ns2:offeringDetail/startDate">
                                       <startDate>
                                          <xsl:value-of select="ns2:offeringDetail/startDate"/>
                                       </startDate>
                                    </xsl:if>
                                    <xsl:if test="ns2:offeringDetail/defer">
                                       <defer>
                                          <xsl:value-of select="ns2:offeringDetail/defer"/>
                                       </defer>
                                    </xsl:if>
                                    <xsl:if test="ns2:offeringDetail/offerAction">
                                       <offerAction>
                                          <xsl:value-of select="ns2:offeringDetail/offerAction"/>
                                       </offerAction>
                                    </xsl:if>
                                 </ns2:offeringDetail>
                                 <xsl:if test="ns8:additionals">
                                    <ns8:additionals>
                                       <xsl:if test="ns8:additionals/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="ns8:additionals/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:for-each select="ns8:additionals/additional">
                                          <additional>
                                             <name>
                                                <xsl:value-of select="name"/>
                                             </name>
                                             <value>
                                                <xsl:if test="value/@xsi:nil">
                                                   <xsl:attribute name="xsi:nil">
                                                      <xsl:value-of select="value/@xsi:nil"/>
                                                   </xsl:attribute>
                                                </xsl:if>
                                                <xsl:value-of select="value"/>
                                             </value>
                                          </additional>
                                       </xsl:for-each>
                                    </ns8:additionals>
                                 </xsl:if>
                              </ns15:order>
                           </xsl:for-each>
                        </productOffering>
                     </xsl:if>
                     <xsl:if test="dataChangeRequest_orders">
                        <dataChangeRequest_orders>
                           <xsl:for-each select="dataChangeRequest_orders/ns0:dataChangeRequest">
                              <ns0:dataChangeRequest>
                                 <dataReference>
                                    <xsl:value-of select="dataReference"/>
                                 </dataReference>
                                 <dataValue>
                                    <xsl:value-of select="dataValue"/>
                                 </dataValue>
                              </ns0:dataChangeRequest>
                           </xsl:for-each>
                        </dataChangeRequest_orders>
                     </xsl:if>
                     <xsl:if test="field_orders">
                        <field_orders>
                           <xsl:for-each select="field_orders/ns14:fieldService">
                              <ns14:fieldService>
                                 <FIELDSERVICECODE>
                                    <xsl:value-of select="FIELDSERVICECODE"/>
                                 </FIELDSERVICECODE>
                                 <executionDate>
                                    <xsl:value-of select="executionDate"/>
                                 </executionDate>
                                 <priority>
                                    <xsl:value-of select="priority"/>
                                 </priority>
                                 <xsl:if test="ns8:additionals">
                                    <ns8:additionals>
                                       <xsl:if test="ns8:additionals/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="ns8:additionals/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:for-each select="ns8:additionals/additional">
                                          <additional>
                                             <name>
                                                <xsl:value-of select="name"/>
                                             </name>
                                             <value>
                                                <xsl:if test="value/@xsi:nil">
                                                   <xsl:attribute name="xsi:nil">
                                                      <xsl:value-of select="value/@xsi:nil"/>
                                                   </xsl:attribute>
                                                </xsl:if>
                                                <xsl:value-of select="value"/>
                                             </value>
                                          </additional>
                                       </xsl:for-each>
                                    </ns8:additionals>
                                 </xsl:if>
                              </ns14:fieldService>
                           </xsl:for-each>
                        </field_orders>
                     </xsl:if>
                  </order>
               </xsl:for-each>
            </ServiceOffer>
         </xsl:if>
      </ns12:BasicOrderRequest>
   </xsl:template>
</xsl:stylesheet>
