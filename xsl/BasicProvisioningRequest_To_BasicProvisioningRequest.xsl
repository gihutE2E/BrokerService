<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:ns0="http://tigo.com/enterprise/serviceEntity/provisioning/dataChangeRequest/v1/schema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:tns="http://tigo.com/enterprise/taskService/provisioning/v1" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns7="http://tigo.com/commons/resources/additional/v1/schema" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:cmn="http://tigo.com/commons/generalResponse/v1/schema" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns5="http://tigo.com/enterprise/businessEntity/product/basic/v1/schema" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns2="http://tigo.com/serviceEntity/provisioning/offeringDetail/v1/schema" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns3="http://tigo.com/enterprise/businessEntity/client/basic/v1/schema" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns4="http://tigo.com/commons/basicRequest/v1/schema" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ns1="http://tigo.com/enterprise/taskService/provisioning/reverseProvisioningProcess" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:sch="http://tigo.com/enterprise/taskService/provisioning/v1/schema" xmlns:soap-env="http://www.w3.org/2003/05/soap-envelope" xmlns:ns6="http://tigo.com/enterprise/serviceEntity/provisioning/order/v1/schema" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns0 tns ns7 soap cmn wsdl ns5 ns2 ns3 ns4 ns1 xsd sch soap-env ns6 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:template match="/">
      <sch:BasicProvisioningRequest>
         <ns4:basicRequest>
            <xsl:if test="concat(/sch:BasicProvisioningRequest/ns4:basicRequest/externalApplicationID,'')!=''">
               <externalApplicationID>
                  <xsl:value-of select="/sch:BasicProvisioningRequest/ns4:basicRequest/externalApplicationID"/>
               </externalApplicationID>
            </xsl:if>
            <xsl:if test="concat(/sch:BasicProvisioningRequest/ns4:basicRequest/externalTransactionID,'')!=''">
               <externalTransactionID>
                  <xsl:value-of select="/sch:BasicProvisioningRequest/ns4:basicRequest/externalTransactionID"/>
               </externalTransactionID>
            </xsl:if>
            <utiReference>
               <xsl:value-of select="/sch:BasicProvisioningRequest/ns4:basicRequest/utiReference"/>
            </utiReference>
         </ns4:basicRequest>
         <ns3:client>
            <ID>
               <xsl:value-of select="/sch:BasicProvisioningRequest/ns3:client/ID"/>
            </ID>
            <idType>
               <xsl:value-of select="/sch:BasicProvisioningRequest/ns3:client/idType"/>
            </idType>
         </ns3:client>
         <productOffering>
            <xsl:for-each select="/sch:BasicProvisioningRequest/productOffering/ns6:order">
               <ns6:order>
                  <ns5:product>
                     <CODE>
                        <xsl:value-of select="ns5:product/CODE"/>
                     </CODE>
                     <name>
                        <xsl:value-of select="ns5:product/name"/>
                     </name>
                  </ns5:product>
                  <ns2:offeringDetail>
                     <value>
                        <xsl:value-of select="ns2:offeringDetail/value"/>
                     </value>
                     <xsl:if test="concat(ns2:offeringDetail/currency,'')!=''">
                        <currency>
                           <xsl:value-of select="ns2:offeringDetail/currency"/>
                        </currency>
                     </xsl:if>
                     <xsl:if test="concat(ns2:offeringDetail/expirationDate,'')!=''">
                        <expirationDate>
                           <xsl:value-of select="ns2:offeringDetail/expirationDate"/>
                        </expirationDate>
                     </xsl:if>
                     <xsl:if test="concat(ns2:offeringDetail/startDate,'')!=''">
                        <startDate>
                           <xsl:value-of select="ns2:offeringDetail/startDate"/>
                        </startDate>
                     </xsl:if>
                     <xsl:if test="concat(ns2:offeringDetail/defer,'')!=''">
                        <defer>
                           <xsl:value-of select="ns2:offeringDetail/defer"/>
                        </defer>
                     </xsl:if>
                     <xsl:if test="concat(ns2:offeringDetail/offerAction,'')!=''">
                        <offerAction>
                           <xsl:value-of select="ns2:offeringDetail/offerAction"/>
                        </offerAction>
                     </xsl:if>
                  </ns2:offeringDetail>
                  <xsl:if test="concat(ns7:additionals/additional/name,'')!=''">
                     <ns7:additionals>
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="ns7:additionals/@xsi:nil"/>
                        </xsl:attribute>
                        <xsl:for-each select="ns7:additionals/additional">
                           <additional>
                              <name>
                                 <xsl:value-of select="name"/>
                              </name>
                              <value>
                                 <xsl:value-of select="value"/>
                              </value>
                           </additional>
                        </xsl:for-each>
                     </ns7:additionals>
                  </xsl:if>
               </ns6:order>
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
