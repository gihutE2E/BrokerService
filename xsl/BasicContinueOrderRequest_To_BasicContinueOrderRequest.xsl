<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns0="http://tigo.com/enterprise/basicOrderState/v1/schema" xmlns:sch="http://tigo.com/enterprise/serviceEntity/provisioning/orderContinueRequest/v1/schema" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns2="http://tigo.com/commons/resources/additional/v1/schema" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:cmn="http://tigo.com/commons/generalResponse/v1/schema" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:tns="http://tigo.com/enterprise/serviceEntity/provisioning/continueOrder/v1" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns1="http://tigo.com/commons/basicRequest/v1/schema" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:bpmn="http://schemas.oracle.com/bpm/xpath" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns0 sch ns2 soap cmn wsdl tns ns1 xsd xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref bpmn ldap">
   <xsl:template match="/">
      <sch:BasicContinueOrderRequest>
         <ns1:basicRequest>
            <externalApplicationID>
               <xsl:value-of select="/sch:BasicContinueOrderRequest/ns1:basicRequest/externalApplicationID"/>
            </externalApplicationID>
            <externalTransactionID>
               <xsl:value-of select="/sch:BasicContinueOrderRequest/ns1:basicRequest/externalTransactionID"/>
            </externalTransactionID>
            <utiReference>
               <xsl:value-of select="/sch:BasicContinueOrderRequest/ns1:basicRequest/utiReference"/>
            </utiReference>
         </ns1:basicRequest>
         <ns0:orderState>
            <status>
               <xsl:value-of select="/sch:BasicContinueOrderRequest/ns0:orderState/status"/>
            </status>
            <description>
               <xsl:value-of select="/sch:BasicContinueOrderRequest/ns0:orderState/description"/>
            </description>
            <action>
               <xsl:value-of select="/sch:BasicContinueOrderRequest/ns0:orderState/action"/>
            </action>
            <ns2:additionals>
               <xsl:for-each select="/sch:BasicContinueOrderRequest/ns0:orderState/ns2:additionals/additional">
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
         </ns0:orderState>
      </sch:BasicContinueOrderRequest>
   </xsl:template>
</xsl:stylesheet>
