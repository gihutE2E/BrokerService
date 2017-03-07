<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:ns0="http://tigo.com/enterprise/serviceEntity/provisioning/dataChangeRequest/v1/schema" xmlns:ns3="http://tigo.com/enterprise/taskService/provisioning/v1" xmlns:ns9="http://tigo.com/enterprise/businessEntity/charge/v1/schema" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns8="http://xmlns.oracle.com/pcbpel/adapter/db/OrchestratorOrders/Orchestrator/LOG_ORCHESTRATOR_PRODUCT_UPDATE" xmlns:ns5="http://tigo.com/enterprise/serviceEntity/provisioning/reverseProvideProcess" xmlns:tns="http://tigo.com/enterprise/serviceEntity/provisioning/orderRequest/v1" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns21="http://tigo.com/enterprise/business/entities/order/v1/schema" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns1="http://tigo.com/enterprise/serviceEntity/provisioning/provideProcess" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns12="http://tigo.com/commons/basicRequest/v1/schema" xmlns:ns23="http://tigo.com/enterprise/resources/GeneralRequest/v1/schema" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns18="http://tigo.com/enterprise/business/task/OrderBroker/v1/schema" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:grs="http://tigo.com/enterprise/resources/GeneralResponse/v1/schema" xmlns:ns24="http://tigo.com/enterprise/resources/parameters/simple/v1/schema" xmlns:ns13="http://tigo.com/commons/resources/additional/v1/schema" xmlns:ns19="http://tigo.com/enterprise/business/entities/notificationBasic/v1/schema" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:ns20="http://tigo.com/enterprise/business/entities/client/basic/v1/schema" xmlns:ns6="http://tigo.com/enterprise/taskService/paymentService/v1" xmlns:cmn="http://tigo.com/commons/generalResponse/v1/schema" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:sch="http://tigo.com/enterprise/serviceEntity/provisioning/orderRequest/v1/schema" xmlns:ns17="http://tigo.com/enterprise/business/task/OrderBroker/v1/O2MappingProcess" xmlns:ns14="http://tigo.com/enterprise/businessEntity/product/basic/v1/schema" xmlns:ns4="http://tigo.com/enterprise/serviceEntity/provisioning/reverseProcess" xmlns:ns16="http://tigo.com/enterprise/serviceEntity/provisioning/fieldService/v1/schema" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns10="http://tigo.com/serviceEntity/provisioning/offeringDetail/v1/schema" xmlns:ns11="http://tigo.com/enterprise/businessEntity/client/basic/v1/schema" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns2="http://tigo.com/enterprise/taskService/provisioning/v1/schema" xmlns:ns22="http://tigo.com/enterprise/business/task/OrderBroker/v1/SendOrderProcess" xmlns:ns7="http://tigo.com/enterprise/serviceEntity/provisioning/reversePayProcess" xmlns:ns15="http://tigo.com/enterprise/serviceEntity/provisioning/order/v1/schema" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsl xsi ns0 ns3 ns9 ns8 ns5 tns ns21 ns1 ns12 ns23 xsd ns18 grs ns24 ns13 ns19 soap ns20 ns6 cmn wsdl sch ns17 ns14 ns4 ns16 ns10 ns11 ns2 ns22 ns7 ns15 bpm ora socket mhdr dvm xdk bpws xp20 bpel oraext hwf med ids xref ldap">
   <xsl:param name="inputVariable.body"/>
   <xsl:template match="/">
      <sch:BasicOrderRequest>
         <ns12:basicRequest>
            <externalApplicationID>
               <xsl:value-of select="$inputVariable.body/ns18:SubmitOrder_Request/GeneralRequest/applicationID"/>
            </externalApplicationID>
            <externalTransactionID>
               <xsl:value-of select="$inputVariable.body/ns18:SubmitOrder_Request/GeneralRequest/applicationTransactionID"/>
            </externalTransactionID>
            <utiReference>
               <xsl:value-of select="$inputVariable.body/ns18:SubmitOrder_Request/GeneralRequest/utiReference"/>
            </utiReference>
         </ns12:basicRequest>
         <xsl:if test="/sch:BasicOrderRequest/ServiceOffer">
            <ServiceOffer>
               <xsl:for-each select="/sch:BasicOrderRequest/ServiceOffer/order">
                  <order>
                     <ns11:client>
                        <ID>
                           <xsl:value-of select="ns11:client/ID"/>
                        </ID>
                        <idType>
                           <xsl:value-of select="ns11:client/idType"/>
                        </idType>
                     </ns11:client>
                     <xsl:if test="charge_orders">
                        <charge_orders>
                           <xsl:for-each select="charge_orders/ns9:charge">
                              <ns9:charge>
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
                                 <xsl:if test="ns13:additionals">
                                    <ns13:additionals>
                                       <xsl:if test="ns13:additionals/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="ns13:additionals/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:for-each select="ns13:additionals/additional">
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
                                    </ns13:additionals>
                                 </xsl:if>
                              </ns9:charge>
                           </xsl:for-each>
                        </charge_orders>
                     </xsl:if>
                     <xsl:if test="productOffering">
                        <productOffering>
                           <xsl:for-each select="productOffering/ns15:order">
                              <ns15:order>
                                 <ns14:product>
                                    <CODE>
                                       <xsl:value-of select="ns14:product/CODE"/>
                                    </CODE>
                                    <name>
                                       <xsl:value-of select="ns14:product/name"/>
                                    </name>
                                 </ns14:product>
                                 <ns10:offeringDetail>
                                    <value>
                                       <xsl:value-of select="ns10:offeringDetail/value"/>
                                    </value>
                                    <xsl:if test="ns10:offeringDetail/currency">
                                       <currency>
                                          <xsl:value-of select="ns10:offeringDetail/currency"/>
                                       </currency>
                                    </xsl:if>
                                    <xsl:if test="ns10:offeringDetail/expirationDate">
                                       <expirationDate>
                                          <xsl:value-of select="ns10:offeringDetail/expirationDate"/>
                                       </expirationDate>
                                    </xsl:if>
                                    <xsl:if test="ns10:offeringDetail/startDate">
                                       <startDate>
                                          <xsl:value-of select="ns10:offeringDetail/startDate"/>
                                       </startDate>
                                    </xsl:if>
                                    <xsl:if test="ns10:offeringDetail/defer">
                                       <defer>
                                          <xsl:value-of select="ns10:offeringDetail/defer"/>
                                       </defer>
                                    </xsl:if>
                                    <xsl:if test="ns10:offeringDetail/offerAction">
                                       <offerAction>
                                          <xsl:value-of select="ns10:offeringDetail/offerAction"/>
                                       </offerAction>
                                    </xsl:if>
                                 </ns10:offeringDetail>
                                 <xsl:if test="ns13:additionals">
                                    <ns13:additionals>
                                       <xsl:if test="ns13:additionals/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="ns13:additionals/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:for-each select="ns13:additionals/additional">
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
                                    </ns13:additionals>
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
                           <xsl:for-each select="field_orders/ns16:fieldService">
                              <ns16:fieldService>
                                 <FIELDSERVICECODE>
                                    <xsl:value-of select="FIELDSERVICECODE"/>
                                 </FIELDSERVICECODE>
                                 <executionDate>
                                    <xsl:value-of select="executionDate"/>
                                 </executionDate>
                                 <priority>
                                    <xsl:value-of select="priority"/>
                                 </priority>
                                 <xsl:if test="ns13:additionals">
                                    <ns13:additionals>
                                       <xsl:if test="ns13:additionals/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="ns13:additionals/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:for-each select="ns13:additionals/additional">
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
                                    </ns13:additionals>
                                 </xsl:if>
                              </ns16:fieldService>
                           </xsl:for-each>
                        </field_orders>
                     </xsl:if>
                  </order>
               </xsl:for-each>
            </ServiceOffer>
         </xsl:if>
      </sch:BasicOrderRequest>
   </xsl:template>
</xsl:stylesheet>
