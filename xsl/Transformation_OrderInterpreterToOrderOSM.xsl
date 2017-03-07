<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:dcr="http://tigo.com/enterprise/serviceEntity/provisioning/dataChangeRequest/v1/schema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:chr="http://tigo.com/enterprise/businessEntity/charge/v1/schema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns3="http://tigo.com/commons/resources/additional/v1/schema" xmlns:tns="http://facade.broker.osm.mic/" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:cmn="http://tigo.com/commons/generalResponse/v1/schema" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:sch="http://tigo.com/enterprise/serviceEntity/provisioning/orderRequest/v1/schema" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns2="http://tigo.com/enterprise/businessEntity/product/basic/v1/schema" xmlns:fsr="http://tigo.com/enterprise/serviceEntity/provisioning/fieldService/v1/schema" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns1="http://tigo.com/serviceEntity/provisioning/offeringDetail/v1/schema" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:clt="http://tigo.com/enterprise/businessEntity/client/basic/v1/schema" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:bsc="http://tigo.com/commons/basicRequest/v1/schema" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns0="http://facade.broker.osm.mic/types" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ord="http://tigo.com/enterprise/serviceEntity/provisioning/order/v1/schema" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl tns soap12 soap wsdl mime ns0 xsd dcr chr ns3 cmn sch ns2 fsr ns1 clt bsc ord xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:template match="/">
      <sch:BasicOrderRequest>
         <bsc:basicRequest>
            <xsl:if test="/tns:processOSMOrderResponse/return/basicRequest/externalApplicationId">
               <externalApplicationID>
                  <xsl:value-of select="/tns:processOSMOrderResponse/return/basicRequest/externalApplicationId"/>
               </externalApplicationID>
            </xsl:if>
            <xsl:if test="/tns:processOSMOrderResponse/return/basicRequest/externalTransactionId">
               <externalTransactionID>
                  <xsl:value-of select="/tns:processOSMOrderResponse/return/basicRequest/externalTransactionId"/>
               </externalTransactionID>
            </xsl:if>
            <xsl:if test="/tns:processOSMOrderResponse/return/basicRequest/uti">
               <utiReference>
                  <xsl:value-of select="/tns:processOSMOrderResponse/return/basicRequest/uti"/>
               </utiReference>
            </xsl:if>
         </bsc:basicRequest>
         <ServiceOffer>
            <xsl:for-each select="/tns:processOSMOrderResponse/return/offer/orders">
               <order>
                  <clt:client>
                     <ID>
                        <xsl:value-of select="client/id"/>
                     </ID>
                     <idType>
                        <xsl:value-of select="client/type"/>
                     </idType>
                  </clt:client>
                  <xsl:if test="chargeOrder">
                     <charge_orders>
                        <xsl:for-each select="chargeOrder/charges">
                           <chr:charge>
                              <value>
                                 <xsl:value-of select="value"/>
                              </value>
                              <wallet>
                                 <xsl:value-of select="wallet"/>
                              </wallet>
                              <xsl:if test="walletId">
                                 <walletID>
                                    <xsl:value-of select="walletId"/>
                                 </walletID>
                              </xsl:if>
                              <chargeReference>
                                 <xsl:value-of select="changeReference"/>
                              </chargeReference>
                              <xsl:if test="additionals">
                                 <ns3:additionals>
                                    <xsl:for-each select="additionals/additional">
                                       <additional>
                                          <name>
                                             <xsl:value-of select="name"/>
                                          </name>
                                          <value>
                                             <xsl:value-of select="value"/>
                                          </value>
                                       </additional>
                                    </xsl:for-each>
                                 </ns3:additionals>
                              </xsl:if>
                           </chr:charge>
                        </xsl:for-each>
                     </charge_orders>
                  </xsl:if>
                  <xsl:if test="productOffering">
                     <productOffering>
                        <xsl:for-each select="productOffering/provisioningOrder">
                           <ord:order>
                              <ns2:product>
                                 <CODE>
                                    <xsl:value-of select="product/code"/>
                                 </CODE>
                                 <name>
                                    <xsl:value-of select="product/name"/>
                                 </name>
                              </ns2:product>
                              <ns1:offeringDetail>
                                 <value>
                                    <xsl:value-of select="offeringDetail/value"/>
                                 </value>
                                 <xsl:if test="offeringDetail/currency">
                                    <currency>
                                       <xsl:value-of select="offeringDetail/currency"/>
                                    </currency>
                                 </xsl:if>
                                 <xsl:if test="offeringDetail/expirationDate">
                                    <expirationDate>
                                       <xsl:value-of select="offeringDetail/expirationDate"/>
                                    </expirationDate>
                                 </xsl:if>
                                 <xsl:if test="offeringDetail/startDate">
                                    <startDate>
                                       <xsl:value-of select="offeringDetail/startDate"/>
                                    </startDate>
                                 </xsl:if>
                                 <xsl:if test="offeringDetail/defer">
                                    <defer>
                                       <xsl:value-of select="offeringDetail/defer"/>
                                    </defer>
                                 </xsl:if>
                                 <xsl:if test="offeringDetail/offerAction">
                                    <offerAction>
                                       <xsl:value-of select="offeringDetail/offerAction"/>
                                    </offerAction>
                                 </xsl:if>
                              </ns1:offeringDetail>
                              <xsl:if test="additionals">
                                 <ns3:additionals>
                                    <xsl:for-each select="additionals/additional">
                                       <additional>
                                          <name>
                                             <xsl:value-of select="name"/>
                                          </name>
                                          <value>
                                             <xsl:value-of select="value"/>
                                          </value>
                                       </additional>
                                    </xsl:for-each>
                                 </ns3:additionals>
                              </xsl:if>
                           </ord:order>
                        </xsl:for-each>
                     </productOffering>
                  </xsl:if>
                  <xsl:if test="dataChange">
                     <dataChangeRequest_orders>
                        <xsl:for-each select="dataChange/dataChange">
                           <dcr:dataChangeRequest>
                              <dataReference>
                                 <xsl:value-of select="dataReference"/>
                              </dataReference>
                              <dataValue>
                                 <xsl:value-of select="dataValue"/>
                              </dataValue>
                           </dcr:dataChangeRequest>
                        </xsl:for-each>
                     </dataChangeRequest_orders>
                  </xsl:if>
                  <xsl:if test=".">
                     <field_orders>
                        <xsl:for-each select="fieldOrder/fieldOrders">
                           <fsr:fieldService>
                              <FIELDSERVICECODE>
                                 <xsl:value-of select="fieldServiceCode"/>
                              </FIELDSERVICECODE>
                              <executionDate>
                                 <xsl:value-of select="executionDate"/>
                              </executionDate>
                              <priority>
                                 <xsl:value-of select="priority"/>
                              </priority>
                              <xsl:if test="additionals">
                                 <ns3:additionals>
                                    <xsl:for-each select="additionals/additional">
                                       <additional>
                                          <name>
                                             <xsl:value-of select="name"/>
                                          </name>
                                          <value>
                                             <xsl:value-of select="value"/>
                                          </value>
                                       </additional>
                                    </xsl:for-each>
                                 </ns3:additionals>
                              </xsl:if>
                           </fsr:fieldService>
                        </xsl:for-each>
                     </field_orders>
                  </xsl:if>
               </order>
            </xsl:for-each>
         </ServiceOffer>
      </sch:BasicOrderRequest>
   </xsl:template>
</xsl:stylesheet>
