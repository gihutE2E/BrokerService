<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:ns0="http://tigo.com/enterprise/serviceEntity/provisioning/dataChangeRequest/v1/schema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:ns1="http://tigo.com/enterprise/businessEntity/charge/v1/schema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns5="http://tigo.com/commons/resources/additional/v1/schema" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:ns10="http://tigo.com/enterprise/businessEntity/orderScheduler/orderSchedulerUtility/v1/schema" xmlns:cmn="http://tigo.com/commons/generalResponse/v1/schema" xmlns:sch="http://tigo.com/enterprise/serviceEntity/provisioning/orderRequest/v1/schema" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns6="http://tigo.com/enterprise/businessEntity/product/basic/v1/schema" xmlns:ns8="http://tigo.com/enterprise/serviceEntity/provisioning/fieldService/v1/schema" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns2="http://tigo.com/serviceEntity/provisioning/offeringDetail/v1/schema" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns3="http://tigo.com/enterprise/businessEntity/client/basic/v1/schema" xmlns:tns="http://tigo.com/enterprise/serviceEntity/provisioning/orderProcess" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns4="http://tigo.com/commons/basicRequest/v1/schema" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns9="http://tigo.com/enterprise/businessEntity/orderScheduler/orderSchedulerUtility/v1" xmlns:ns7="http://tigo.com/enterprise/serviceEntity/provisioning/order/v1/schema" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns0 ns1 ns5 soap cmn sch wsdl ns6 ns8 ns2 ns3 tns ns4 xsd ns7 ns10 ns9 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:template match="/">
      <ns10:BasicOrderSchedulerUtilityRequest>
         <ns4:basicRequest>
            <externalApplicationID>
               <xsl:value-of select="/sch:BasicOrderRequest/ns4:basicRequest/externalApplicationID"/>
            </externalApplicationID>
            <externalTransactionID>
               <xsl:value-of select="/sch:BasicOrderRequest/ns4:basicRequest/externalTransactionID"/>
            </externalTransactionID>
            <utiReference>
               <xsl:value-of select="/sch:BasicOrderRequest/ns4:basicRequest/utiReference"/>
            </utiReference>
         </ns4:basicRequest>
         <ServiceOffer>
            <xsl:for-each select="/sch:BasicOrderRequest/ServiceOffer/order">
               <order>
                  <ns3:client>
                     <ID>
                        <xsl:value-of select="ns3:client/ID"/>
                     </ID>
                     <idType>
                        <xsl:value-of select="ns3:client/idType"/>
                     </idType>
                  </ns3:client>
                  <xsl:if test="concat(charge_orders/ns1:charge/value,&quot;&quot;) != &quot;&quot;">
                     <charge_orders>
                        <xsl:for-each select="charge_orders/ns1:charge">
                           <ns1:charge>
                              <value>
                                 <xsl:value-of select="value"/>
                              </value>
                              <wallet>
                                 <xsl:value-of select="wallet"/>
                              </wallet>
                              <walletID>
                                 <xsl:value-of select="walletID"/>
                              </walletID>
                              <chargeReference>
                                 <xsl:value-of select="chargeReference"/>
                              </chargeReference>
                              <xsl:if test="concat(ns5:additionals/additional/name,'')!=''">
                                 <ns5:additionals>
                                    <xsl:for-each select="ns5:additionals/additional">
                                       <additional>
                                          <name>
                                             <xsl:value-of select="name"/>
                                          </name>
                                          <value>
                                             <xsl:value-of select="value"/>
                                          </value>
                                       </additional>
                                    </xsl:for-each>
                                 </ns5:additionals>
                              </xsl:if>
                           </ns1:charge>
                        </xsl:for-each>
                     </charge_orders>
                  </xsl:if>
                  <xsl:if test="concat(productOffering/ns7:order/ns6:product/CODE,&quot;&quot;) != &quot;&quot;">
                     <productOffering>
                        <xsl:for-each select="productOffering/ns7:order">
                           <ns7:order>
                              <ns6:product>
                                 <CODE>
                                    <xsl:value-of select="ns6:product/CODE"/>
                                 </CODE>
                                 <name>
                                    <xsl:value-of select="ns6:product/name"/>
                                 </name>
                              </ns6:product>
                              <ns2:offeringDetail>
                                 <value>
                                    <xsl:value-of select="ns2:offeringDetail/value"/>
                                 </value>
                                 <xsl:if test="concat(ns2:offeringDetail/currency,&quot;&quot;) != &quot;&quot;">
                                    <currency>
                                       <xsl:value-of select="ns2:offeringDetail/currency"/>
                                    </currency>
                                 </xsl:if>
                                 <xsl:if test="concat(ns2:offeringDetail/expirationDate,&quot;&quot;) != &quot;&quot;">
                                    <expirationDate>
                                       <xsl:value-of select="ns2:offeringDetail/expirationDate"/>
                                    </expirationDate>
                                 </xsl:if>
                                 <xsl:if test="concat(ns2:offeringDetail/startDate,&quot;&quot;) != &quot;&quot;">
                                    <startDate>
                                       <xsl:value-of select="ns2:offeringDetail/startDate"/>
                                    </startDate>
                                 </xsl:if>
                                 <xsl:if test="concat(ns2:offeringDetail/defer,&quot;&quot;) != &quot;&quot;">
                                    <defer>
                                       <xsl:value-of select="ns2:offeringDetail/defer"/>
                                    </defer>
                                 </xsl:if>
                                 <xsl:if test="concat(ns2:offeringDetail/offerAction,&quot;&quot;) != &quot;&quot;">
                                    <offerAction>
                                       <xsl:text disable-output-escaping="no">EMPTY</xsl:text>
                                    </offerAction>
                                 </xsl:if>
                              </ns2:offeringDetail>
                              <xsl:if test="concat(ns5:additionals/additional/name,&quot;&quot;) != &quot;&quot;">
                                 <ns5:additionals>
                                    <xsl:for-each select="ns5:additionals/additional">
                                       <additional>
                                          <name>
                                             <xsl:value-of select="name"/>
                                          </name>
                                          <value>
                                             <xsl:value-of select="value"/>
                                          </value>
                                       </additional>
                                    </xsl:for-each>
                                 </ns5:additionals>
                              </xsl:if>
                           </ns7:order>
                        </xsl:for-each>
                     </productOffering>
                  </xsl:if>
                  <xsl:if test="concat(dataChangeRequest_orders/ns0:dataChangeRequest/dataReference,&quot;&quot;) != &quot;&quot;">
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
                  <xsl:if test="concat(field_orders/ns8:fieldService/FIELDSERVICECODE,&quot;&quot;) != &quot;&quot;">
                     <field_orders>
                        <xsl:for-each select="field_orders/ns8:fieldService">
                           <ns8:fieldService>
                              <FIELDSERVICECODE>
                                 <xsl:value-of select="FIELDSERVICECODE"/>
                              </FIELDSERVICECODE>
                              <executionDate>
                                 <xsl:value-of select="executionDate"/>
                              </executionDate>
                              <priority>
                                 <xsl:value-of select="priority"/>
                              </priority>
                              <ns5:additionals>
                                 <xsl:for-each select="ns5:additionals/additional">
                                    <additional>
                                       <name>
                                          <xsl:value-of select="name"/>
                                       </name>
                                       <value>
                                          <xsl:value-of select="value"/>
                                       </value>
                                    </additional>
                                 </xsl:for-each>
                              </ns5:additionals>
                           </ns8:fieldService>
                        </xsl:for-each>
                     </field_orders>
                  </xsl:if>
               </order>
            </xsl:for-each>
         </ServiceOffer>
      </ns10:BasicOrderSchedulerUtilityRequest>
   </xsl:template>
</xsl:stylesheet>
