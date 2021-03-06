<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns4="http://tigo.com/enterprise/resources/parameters/simple/v1/schema" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:grs="http://tigo.com/enterprise/resources/GeneralResponse/v1/schema" xmlns:ns0="http://tigo.com/enterprise/business/entities/notificationBasic/v1/schema" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:ns1="http://tigo.com/enterprise/business/entities/client/basic/v1/schema" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ns5="http://tigo.com/enterprise/business/task/OrderBroker/v1" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns2="http://tigo.com/enterprise/business/entities/order/v1/schema" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ns3="http://tigo.com/enterprise/resources/GeneralRequest/v1/schema" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:sch="http://tigo.com/enterprise/business/task/OrderBroker/v1/schema" xmlns:tns="http://tigo.com/enterprise/business/task/OrderBroker/v1/SendOrderProcess" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns4 grs ns0 soap ns1 wsdl ns2 ns3 xsd sch tns ns5 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:template match="/">
      <grs:GeneralResponse>
         <xsl:if test="/grs:GeneralResponse/uti">
            <uti>
               <xsl:value-of select="/grs:GeneralResponse/uti"/>
            </uti>
         </xsl:if>
         <xsl:if test="/grs:GeneralResponse/status">
            <status>
               <xsl:value-of select="/grs:GeneralResponse/status"/>
            </status>
         </xsl:if>
         <xsl:if test="/grs:GeneralResponse/code">
            <code>
               <xsl:value-of select="/grs:GeneralResponse/code"/>
            </code>
         </xsl:if>
         <xsl:if test="/grs:GeneralResponse/codeType">
            <codeType>
               <xsl:value-of select="/grs:GeneralResponse/codeType"/>
            </codeType>
         </xsl:if>
         <xsl:if test="/grs:GeneralResponse/message">
            <message>
               <xsl:value-of select="/grs:GeneralResponse/message"/>
            </message>
         </xsl:if>
      </grs:GeneralResponse>
   </xsl:template>
</xsl:stylesheet>
