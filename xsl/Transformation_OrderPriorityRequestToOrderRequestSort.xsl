<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:ns0="http://tigo.com/enterprise/serviceEntity/provisioning/dataChangeRequest/v1/schema" xmlns:ns5="http://tigo.com/enterprise/businessEntity/charge/v1/schema" xmlns:ns24="http://tigo.com/enterprise/taskService/provisioning/v1" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns17="http://tigo.com/enterprise/serviceEntity/provisioning/reverseProvideProcess" xmlns:ns20="http://xmlns.oracle.com/pcbpel/adapter/db/OrchestratorOrders/Orchestrator/LOG_ORCHESTRATOR_PRODUCT_UPDATE" xmlns:ns25="http://tigo.com/enterprise/serviceEntity/provisioning/orderRequest/v1" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns3="http://tigo.com/enterprise/business/entities/order/v1/schema" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns22="http://tigo.com/enterprise/serviceEntity/provisioning/provideProcess" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns7="http://tigo.com/commons/basicRequest/v1/schema" xmlns:ns9="http://tigo.com/enterprise/resources/GeneralRequest/v1/schema" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:sch="http://tigo.com/enterprise/business/task/OrderBroker/v1/schema" xmlns:ns14="http://tigo.com/enterprise/serviceEntity/provisioning/order/priority/v1/schema" xmlns:tns="http://tigo.com/enterprise/business/task/OrderBroker/v1/PreOrderProcess" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:grs="http://tigo.com/enterprise/resources/GeneralResponse/v1/schema" xmlns:ns8="http://tigo.com/enterprise/resources/parameters/simple/v1/schema" xmlns:ns10="http://tigo.com/commons/resources/additional/v1/schema" xmlns:ns11="http://tigo.com/enterprise/business/entities/notificationBasic/v1/schema" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:ns12="http://tigo.com/enterprise/business/entities/client/basic/v1/schema" xmlns:ns13="http://tigo.com/commons/generalResponse/v1/schema" xmlns:ns18="http://tigo.com/enterprise/taskService/paymentService/v1" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ns1="http://tigo.com/enterprise/serviceEntity/provisioning/orderRequest/v1/schema" xmlns:ns15="http://tigo.com/enterprise/businessEntity/product/basic/v1/schema" xmlns:ns16="http://tigo.com/enterprise/serviceEntity/provisioning/fieldService/v1/schema" xmlns:ns23="http://tigo.com/enterprise/serviceEntity/provisioning/reverseProcess" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns4="http://tigo.com/serviceEntity/provisioning/offeringDetail/v1/schema" xmlns:ns6="http://tigo.com/enterprise/businessEntity/client/basic/v1/schema" xmlns:ns2="http://tigo.com/enterprise/serviceEntity/provisioning/orderRequest/priority/v1/schema" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns21="http://tigo.com/enterprise/taskService/provisioning/v1/schema" xmlns:ns19="http://tigo.com/enterprise/serviceEntity/provisioning/reversePayProcess" xmlns:ns26="http://tigo.com/enterprise/serviceEntity/provisioning/order/v1/schema" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsl xsi ns0 ns5 ns3 ns7 ns9 xsd sch ns14 tns grs ns8 ns10 ns11 soap ns12 ns13 wsdl ns1 ns15 ns16 ns4 ns6 ns2 ns24 ns17 ns20 ns25 ns22 ns18 ns23 ns21 ns19 ns26 bpm ora socket mhdr dvm xdk bpws xp20 bpel oraext hwf med ids xref ldap">
   <xsl:template match="/">
      <ns1:BasicOrderRequest>
         <ns7:basicRequest>
            <xsl:if test="/ns2:BasicOrderRequest/ns7:basicRequest/externalApplicationID">
               <externalApplicationID>
                  <xsl:value-of select="/ns2:BasicOrderRequest/ns7:basicRequest/externalApplicationID"/>
               </externalApplicationID>
            </xsl:if>
            <xsl:if test="/ns2:BasicOrderRequest/ns7:basicRequest/externalTransactionID">
               <externalTransactionID>
                  <xsl:value-of select="/ns2:BasicOrderRequest/ns7:basicRequest/externalTransactionID"/>
               </externalTransactionID>
            </xsl:if>
            <xsl:if test="/ns2:BasicOrderRequest/ns7:basicRequest/utiReference">
               <utiReference>
                  <xsl:value-of select="/ns2:BasicOrderRequest/ns7:basicRequest/utiReference"/>
               </utiReference>
            </xsl:if>
         </ns7:basicRequest>
         <xsl:if test="/ns2:BasicOrderRequest/ServiceOffer">
            <ServiceOffer>
               <xsl:for-each select="/ns2:BasicOrderRequest/ServiceOffer/order">
                  <order>
                     <ns6:client>
                        <ID>
                           <xsl:value-of select="ns6:client/ID"/>
                        </ID>
                        <idType>
                           <xsl:value-of select="ns6:client/idType"/>
                        </idType>
                     </ns6:client>
                     <xsl:if test="charge_orders">
                        <charge_orders>
                           <xsl:for-each select="charge_orders/ns5:charge">
                              <ns5:charge>
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
                                 <xsl:if test="ns10:additionals">
                                    <ns10:additionals>
                                       <xsl:if test="ns10:additionals/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="ns10:additionals/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:for-each select="ns10:additionals/additional">
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
                                    </ns10:additionals>
                                 </xsl:if>
                              </ns5:charge>
                           </xsl:for-each>
                        </charge_orders>
                     </xsl:if>
                     <xsl:if test="productOffering">
                        <productOffering>
                           <xsl:for-each select="productOffering/ns14:order">
                              <xsl:sort select="priority" order="descending" data-type="number"/>
                              <ns26:order>
                                 <ns15:product>
                                    <CODE>
                                       <xsl:value-of select="ns15:product/CODE"/>
                                    </CODE>
                                    <name>
                                       <xsl:value-of select="ns15:product/name"/>
                                    </name>
                                 </ns15:product>
                                 <ns4:offeringDetail>
                                    <value>
                                       <xsl:value-of select="ns4:offeringDetail/value"/>
                                    </value>
                                    <xsl:if test="ns4:offeringDetail/currency">
                                       <currency>
                                          <xsl:value-of select="ns4:offeringDetail/currency"/>
                                       </currency>
                                    </xsl:if>
                                    <xsl:if test="ns4:offeringDetail/expirationDate">
                                       <expirationDate>
                                          <xsl:value-of select="ns4:offeringDetail/expirationDate"/>
                                       </expirationDate>
                                    </xsl:if>
                                    <xsl:if test="ns4:offeringDetail/startDate">
                                       <startDate>
                                          <xsl:value-of select="ns4:offeringDetail/startDate"/>
                                       </startDate>
                                    </xsl:if>
                                    <xsl:if test="ns4:offeringDetail/defer">
                                       <defer>
                                          <xsl:value-of select="ns4:offeringDetail/defer"/>
                                       </defer>
                                    </xsl:if>
                                    <xsl:if test="ns4:offeringDetail/offerAction">
                                       <offerAction>
                                          <xsl:value-of select="ns4:offeringDetail/offerAction"/>
                                       </offerAction>
                                    </xsl:if>
                                 </ns4:offeringDetail>
                                 <xsl:if test="ns10:additionals">
                                    <ns10:additionals>
                                       <xsl:if test="ns10:additionals/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="ns10:additionals/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:for-each select="ns10:additionals/additional">
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
                                    </ns10:additionals>
                                 </xsl:if>
                              </ns26:order>
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
                                 <xsl:if test="ns10:additionals">
                                    <ns10:additionals>
                                       <xsl:if test="ns10:additionals/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="ns10:additionals/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:for-each select="ns10:additionals/additional">
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
                                    </ns10:additionals>
                                 </xsl:if>
                              </ns16:fieldService>
                           </xsl:for-each>
                        </field_orders>
                     </xsl:if>
                  </order>
               </xsl:for-each>
            </ServiceOffer>
         </xsl:if>
      </ns1:BasicOrderRequest>
   </xsl:template>
</xsl:stylesheet>
