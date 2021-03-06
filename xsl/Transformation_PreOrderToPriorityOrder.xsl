<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:dcr="http://tigo.com/enterprise/serviceEntity/provisioning/dataChangeRequest/v1/schema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:chr="http://tigo.com/enterprise/businessEntity/charge/v1/schema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns2="http://tigo.com/commons/resources/additional/v1/schema" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:tns="http://facade.broker.osm.mic/" xmlns:cmn="http://tigo.com/commons/generalResponse/v1/schema" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:sch="http://tigo.com/enterprise/serviceEntity/provisioning/orderRequest/v1/schema" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns1="http://tigo.com/enterprise/businessEntity/product/basic/v1/schema" xmlns:fsr="http://tigo.com/enterprise/serviceEntity/provisioning/fieldService/v1/schema" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns0="http://tigo.com/serviceEntity/provisioning/offeringDetail/v1/schema" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:clt="http://tigo.com/enterprise/businessEntity/client/basic/v1/schema" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns3="http://facade.broker.osm.mic/types" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:bsc="http://tigo.com/commons/basicRequest/v1/schema" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ord="http://tigo.com/enterprise/serviceEntity/provisioning/order/v1/schema" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl dcr chr ns2 cmn sch ns1 fsr ns0 clt bsc xsd ord soap12 tns soap mime wsdl ns3 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:template match="/">
      <tns:determinePriorities>
         <arg0>
            <basicRequest>
               <xsl:if test="/sch:BasicOrderRequest/bsc:basicRequest/externalApplicationID">
                  <externalApplicationId>
                     <xsl:value-of select="/sch:BasicOrderRequest/bsc:basicRequest/externalApplicationID"/>
                  </externalApplicationId>
               </xsl:if>
               <xsl:if test="/sch:BasicOrderRequest/bsc:basicRequest/externalTransactionID">
                  <externalTransactionId>
                     <xsl:value-of select="/sch:BasicOrderRequest/bsc:basicRequest/externalTransactionID"/>
                  </externalTransactionId>
               </xsl:if>
               <xsl:if test="/sch:BasicOrderRequest/bsc:basicRequest/utiReference">
                  <uti>
                     <xsl:value-of select="/sch:BasicOrderRequest/bsc:basicRequest/utiReference"/>
                  </uti>
               </xsl:if>
            </basicRequest>
            <xsl:if test="/sch:BasicOrderRequest/ServiceOffer">
               <offer>
                  <xsl:for-each select="/sch:BasicOrderRequest/ServiceOffer/order">
                     <orders>
                        <chargeOrder>
                           <xsl:for-each select="charge_orders/chr:charge">
                              <charges>
                                 <xsl:if test="ns2:additionals">
                                    <additionals>
                                       <xsl:for-each select="ns2:additionals/additional">
                                          <additional>
                                             <name>
                                                <xsl:value-of select="name"/>
                                             </name>
                                             <value>
                                                <xsl:value-of select="value"/>
                                             </value>
                                          </additional>
                                       </xsl:for-each>
                                    </additionals>
                                 </xsl:if>
                                 <changeReference>
                                    <xsl:value-of select="chargeReference"/>
                                 </changeReference>
                                 <value>
                                    <xsl:value-of select="value"/>
                                 </value>
                                 <wallet>
                                    <xsl:value-of select="wallet"/>
                                 </wallet>
                                 <walletId>
                                    <xsl:value-of select="walletID"/>
                                 </walletId>
                              </charges>
                           </xsl:for-each>
                        </chargeOrder>
                        <client>
                           <id>
                              <xsl:value-of select="clt:client/ID"/>
                           </id>
                           <type>
                              <xsl:value-of select="clt:client/idType"/>
                           </type>
                        </client>
                        <dataChange>
                           <xsl:for-each select="dataChangeRequest_orders/dcr:dataChangeRequest">
                              <dataChange>
                                 <dataReference>
                                    <xsl:value-of select="dataReference"/>
                                 </dataReference>
                                 <dataValue>
                                    <xsl:value-of select="dataValue"/>
                                 </dataValue>
                              </dataChange>
                           </xsl:for-each>
                        </dataChange>
                        <fieldOrder>
                           <xsl:for-each select="field_orders/fsr:fieldService">
                              <fieldOrders>
                                 <xsl:if test="ns2:additionals">
                                    <additionals>
                                       <xsl:for-each select="ns2:additionals/additional">
                                          <additional>
                                             <name>
                                                <xsl:value-of select="name"/>
                                             </name>
                                             <value>
                                                <xsl:value-of select="value"/>
                                             </value>
                                          </additional>
                                       </xsl:for-each>
                                    </additionals>
                                 </xsl:if>
                                 <executionDate>
                                    <xsl:value-of select="executionDate"/>
                                 </executionDate>
                                 <fieldServiceCode>
                                    <xsl:value-of select="FIELDSERVICECODE"/>
                                 </fieldServiceCode>
                                 <priority>
                                    <xsl:value-of select="priority"/>
                                 </priority>
                              </fieldOrders>
                           </xsl:for-each>
                        </fieldOrder>
                        <xsl:if test="productOffering">
                           <productOffering>
                              <xsl:for-each select="productOffering/ord:order">
                                 <provisioningOrder>
                                    <additionals>
                                       <xsl:for-each select="ns2:additionals/additional">
                                          <additional>
                                             <name>
                                                <xsl:value-of select="name"/>
                                             </name>
                                             <value>
                                                <xsl:value-of select="value"/>
                                             </value>
                                          </additional>
                                       </xsl:for-each>
                                    </additionals>
                                    <offeringDetail>
                                       <xsl:if test="ns0:offeringDetail/currency">
                                          <currency>
                                             <xsl:value-of select="ns0:offeringDetail/currency"/>
                                          </currency>
                                       </xsl:if>
                                       <xsl:if test="ns0:offeringDetail/defer">
                                          <defer>
                                             <xsl:value-of select="ns0:offeringDetail/defer"/>
                                          </defer>
                                       </xsl:if>
                                       <xsl:if test="ns0:offeringDetail/expirationDate">
                                          <expirationDate>
                                             <xsl:value-of select="ns0:offeringDetail/expirationDate"/>
                                          </expirationDate>
                                       </xsl:if>
                                       <xsl:if test="ns0:offeringDetail/offerAction">
                                          <offerAction>
                                             <xsl:value-of select="ns0:offeringDetail/offerAction"/>
                                          </offerAction>
                                       </xsl:if>
                                       <xsl:if test="ns0:offeringDetail/startDate">
                                          <startDate>
                                             <xsl:value-of select="ns0:offeringDetail/startDate"/>
                                          </startDate>
                                       </xsl:if>
                                       <value>
                                          <xsl:value-of select="ns0:offeringDetail/value"/>
                                       </value>
                                    </offeringDetail>
                                    <product>
                                       <code>
                                          <xsl:value-of select="ns1:product/CODE"/>
                                       </code>
                                       <name>
                                          <xsl:value-of select="ns1:product/name"/>
                                       </name>
                                    </product>
                                 </provisioningOrder>
                              </xsl:for-each>
                           </productOffering>
                        </xsl:if>
                     </orders>
                  </xsl:for-each>
               </offer>
            </xsl:if>
         </arg0>
      </tns:determinePriorities>
   </xsl:template>
</xsl:stylesheet>
