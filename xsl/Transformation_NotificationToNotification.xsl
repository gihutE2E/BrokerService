<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:dcr="http://tigo.com/enterprise/serviceEntity/provisioning/dataChangeRequest/v1/schema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:chr="http://tigo.com/enterprise/businessEntity/charge/v1/schema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns2="http://tigo.com/commons/resources/additional/v1/schema" xmlns:cmn="http://tigo.com/commons/generalResponse/v1/schema" xmlns:sch="http://tigo.com/enterprise/serviceEntity/provisioning/orderRequest/v1/schema" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns1="http://tigo.com/enterprise/businessEntity/product/basic/v1/schema" xmlns:fsr="http://tigo.com/enterprise/serviceEntity/provisioning/fieldService/v1/schema" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns0="http://tigo.com/serviceEntity/provisioning/offeringDetail/v1/schema" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:clt="http://tigo.com/enterprise/businessEntity/client/basic/v1/schema" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:bsc="http://tigo.com/commons/basicRequest/v1/schema" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ord="http://tigo.com/enterprise/serviceEntity/provisioning/order/v1/schema" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl dcr chr ns2 cmn sch ns1 fsr ns0 clt bsc xsd ord xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:template match="/">
      <sch:BasicOrderRequest>
         <bsc:basicRequest>
            <xsl:if test="concat(/sch:BasicOrderRequest/bsc:basicRequest/externalApplicationID,'')!=''">
               <externalApplicationID>
                  <xsl:value-of select="/sch:BasicOrderRequest/bsc:basicRequest/externalApplicationID"/>
               </externalApplicationID>
            </xsl:if>
            <xsl:if test="concat(/sch:BasicOrderRequest/bsc:basicRequest/externalTransactionID,'')!=''">
               <externalTransactionID>
                  <xsl:value-of select="/sch:BasicOrderRequest/bsc:basicRequest/externalTransactionID"/>
               </externalTransactionID>
            </xsl:if>
            <xsl:if test="concat(/sch:BasicOrderRequest/bsc:basicRequest/utiReference,'')!=''">
               <utiReference>
                  <xsl:value-of select="/sch:BasicOrderRequest/bsc:basicRequest/utiReference"/>
               </utiReference>
            </xsl:if>
         </bsc:basicRequest>
         <ServiceOffer>
            <order>
               <clt:client>
                  <ID>
                     <xsl:value-of select="/sch:BasicOrderRequest/ServiceOffer/order/clt:client/ID"/>
                  </ID>
                  <idType>
                     <xsl:value-of select="/sch:BasicOrderRequest/ServiceOffer/order/clt:client/idType"/>
                  </idType>
               </clt:client>
               <xsl:if test="concat(/sch:BasicOrderRequest/ServiceOffer/order/charge_orders/chr:charge/value,'')!=''">
                  <charge_orders>
                     <xsl:for-each select="/sch:BasicOrderRequest/ServiceOffer/order/charge_orders/chr:charge">
                        <chr:charge>
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
                           <xsl:if test="concat(ns2:additionals/additional/name,'')!=''">
                              <ns2:additionals>
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
                              </ns2:additionals>
                           </xsl:if>
                        </chr:charge>
                     </xsl:for-each>
                  </charge_orders>
               </xsl:if>
               <xsl:if test="concat(/sch:BasicOrderRequest/ServiceOffer/order/productOffering/ord:order/ns1:product/CODE,'')!=''">
                  <productOffering>
                     <xsl:for-each select="/sch:BasicOrderRequest/ServiceOffer/order/productOffering/ord:order">
                        <ord:order>
                           <ns1:product>
                              <CODE>
                                 <xsl:value-of select="ns1:product/CODE"/>
                              </CODE>
                              <name>
                                 <xsl:value-of select="ns1:product/name"/>
                              </name>
                           </ns1:product>
                           <ns0:offeringDetail>
                              <value>
                                 <xsl:value-of select="ns0:offeringDetail/value"/>
                              </value>
                              <xsl:if test="concat(ns0:offeringDetail/currency,'')!=''">
                                 <currency>
                                    <xsl:value-of select="ns0:offeringDetail/currency"/>
                                 </currency>
                              </xsl:if>
                              <xsl:if test="concat(ns0:offeringDetail/expirationDate,'')!=''">
                                 <expirationDate>
                                    <xsl:value-of select="ns0:offeringDetail/expirationDate"/>
                                 </expirationDate>
                              </xsl:if>
                              <xsl:if test="concat(ns0:offeringDetail/startDate,'')!=''">
                                 <startDate>
                                    <xsl:value-of select="ns0:offeringDetail/startDate"/>
                                 </startDate>
                              </xsl:if>
                              <xsl:if test="concat(ns0:offeringDetail/defer,'')!=''">
                                 <defer>
                                    <xsl:value-of select="ns0:offeringDetail/defer"/>
                                 </defer>
                              </xsl:if>
                              <xsl:if test="concat(ns0:offeringDetail/offerAction,'')!=''">
                                 <offerAction>
                                    <xsl:value-of select="ns0:offeringDetail/offerAction"/>
                                 </offerAction>
                              </xsl:if>
                           </ns0:offeringDetail>
                           <xsl:if test="concat(ns2:additionals/additional/name,'')!=''">
                              <ns2:additionals>
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
                              </ns2:additionals>
                           </xsl:if>
                        </ord:order>
                     </xsl:for-each>
                  </productOffering>
               </xsl:if>
            </order>
         </ServiceOffer>
      </sch:BasicOrderRequest>
   </xsl:template>
</xsl:stylesheet>
