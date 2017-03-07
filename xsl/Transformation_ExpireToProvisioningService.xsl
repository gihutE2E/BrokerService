<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:ns0="http://tigo.com/enterprise/serviceEntity/provisioning/dataChangeRequest/v1/schema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns6="http://tigo.com/commons/resources/additional/v1/schema" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:cmn="http://tigo.com/commons/generalResponse/v1/schema" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns4="http://tigo.com/enterprise/businessEntity/product/basic/v1/schema" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns1="http://tigo.com/serviceEntity/provisioning/offeringDetail/v1/schema" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns2="http://tigo.com/enterprise/businessEntity/client/basic/v1/schema" xmlns:tns="http://tigo.com/enterprise/serviceEntity/provisioning/provideProcess" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns3="http://tigo.com/commons/basicRequest/v1/schema" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:sch="http://tigo.com/enterprise/taskService/provisioning/v1/schema" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns5="http://tigo.com/enterprise/serviceEntity/provisioning/order/v1/schema" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns0 ns6 soap cmn wsdl ns4 ns1 ns2 tns ns3 sch xsd ns5 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:template match="/">
      <sch:BasicProvisioningRequest>
         <ns3:basicRequest>
            <xsl:if test="concat(/sch:BasicProvisioningRequest/ns3:basicRequest/externalApplicationID,'')!=''">
               <externalApplicationID>
                  <xsl:value-of select="/sch:BasicProvisioningRequest/ns3:basicRequest/externalApplicationID"/>
               </externalApplicationID>
            </xsl:if>
            <xsl:if test="concat(/sch:BasicProvisioningRequest/ns3:basicRequest/externalTransactionID,'')!=''">
               <externalTransactionID>
                  <xsl:value-of select="/sch:BasicProvisioningRequest/ns3:basicRequest/externalTransactionID"/>
               </externalTransactionID>
            </xsl:if>
            <xsl:if test="concat(/sch:BasicProvisioningRequest/ns3:basicRequest/utiReference,'')!=''">
               <utiReference>
                  <xsl:value-of select="/sch:BasicProvisioningRequest/ns3:basicRequest/utiReference"/>
               </utiReference>
            </xsl:if>
         </ns3:basicRequest>
         <ns2:client>
            <ID>
               <xsl:value-of select="/sch:BasicProvisioningRequest/ns2:client/ID"/>
            </ID>
            <idType>
               <xsl:value-of select="/sch:BasicProvisioningRequest/ns2:client/idType"/>
            </idType>
         </ns2:client>
         <productOffering>
            <xsl:for-each select="/sch:BasicProvisioningRequest/productOffering/ns5:order">
               <ns5:order>
                  <ns4:product>
                     <CODE>
                        <xsl:value-of select="ns4:product/CODE"/>
                     </CODE>
                     <name>
                        <xsl:value-of select="ns4:product/name"/>
                     </name>
                  </ns4:product>
                  <ns1:offeringDetail>
                     <value>
                        <xsl:value-of select="ns1:offeringDetail/value"/>
                     </value>
                     <xsl:if test="concat(ns1:offeringDetail/currency,'')!=''">
                        <currency>
                           <xsl:value-of select="ns1:offeringDetail/currency"/>
                        </currency>
                     </xsl:if>
                     <xsl:if test="concat(ns1:offeringDetail/expirationDate,'')!=''">
                        <expirationDate>
                           <xsl:value-of select="ns1:offeringDetail/expirationDate"/>
                        </expirationDate>
                     </xsl:if>
                     <xsl:if test="concat(ns1:offeringDetail/startDate,'')!=''">
                        <startDate>
                           <xsl:value-of select="ns1:offeringDetail/startDate"/>
                        </startDate>
                     </xsl:if>
                     <xsl:if test="concat(ns1:offeringDetail/defer,'')!=''">
                        <defer>
                           <xsl:value-of select="ns1:offeringDetail/defer"/>
                        </defer>
                     </xsl:if>
                     <xsl:if test="concat(ns1:offeringDetail/offerAction,'')!=''">
                        <offerAction>
                           <xsl:value-of select="ns1:offeringDetail/offerAction"/>
                        </offerAction>
                     </xsl:if>
                  </ns1:offeringDetail>
                  <xsl:if test="concat(ns6:additionals/additional/name,'')!=''">
                     <ns6:additionals>
                        <xsl:for-each select="ns6:additionals/additional">
                           <additional>
                              <name>
                                 <xsl:value-of select="name"/>
                              </name>
                              <value>
                                 <xsl:value-of select="value"/>
                              </value>
                           </additional>
                        </xsl:for-each>
                     </ns6:additionals>
                  </xsl:if>
               </ns5:order>
            </xsl:for-each>
         </productOffering>
         <xsl:if test="concat(/sch:BasicProvisioningRequest/dataChangeRequest_orders/ns0:dataChangeRequest/dataReference,'')!=''">
            <dataChangeRequest_orders>
               <xsl:for-each select="/sch:BasicProvisioningRequest/dataChangeRequest_orders/ns0:dataChangeRequest">
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
      </sch:BasicProvisioningRequest>
   </xsl:template>
</xsl:stylesheet>
