<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns4="http://tigo.com/enterprise/resources/parameters/simple/v1/schema" xmlns:grs="http://tigo.com/enterprise/resources/GeneralResponse/v1/schema" xmlns:ns0="http://tigo.com/enterprise/business/entities/notificationBasic/v1/schema" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:ns1="http://tigo.com/enterprise/business/entities/client/basic/v1/schema" xmlns:ns6="http://tigo.com/enterprise/serviceEntity/WorkingMemory/v1" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns5="http://tigo.com/enterprise/serviceEntity/WorkingMemory/v1/schema" xmlns:ns2="http://tigo.com/enterprise/business/entities/order/v1/schema" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ns3="http://tigo.com/enterprise/resources/GeneralRequest/v1/schema" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:sch="http://tigo.com/enterprise/business/task/OrderBroker/v1/schema" xmlns:tns="http://tigo.com/enterprise/business/task/OrderBroker/v1/SendOrderProcess" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns4 grs ns0 soap ns1 wsdl ns2 ns3 xsd sch tns ns6 ns5 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:template match="/">
      <ns5:BasicSetRequest>
         <GeneralRequest>
            <xsl:if test="/sch:SubmitOrder_Request/GeneralRequest/applicationID">
               <applicationID>
                  <xsl:value-of select="/sch:SubmitOrder_Request/GeneralRequest/applicationID"/>
               </applicationID>
            </xsl:if>
            <xsl:if test="/sch:SubmitOrder_Request/GeneralRequest/applicationTransactionID">
               <applicationTransactionID>
                  <xsl:value-of select="/sch:SubmitOrder_Request/GeneralRequest/applicationTransactionID"/>
               </applicationTransactionID>
            </xsl:if>
            <xsl:if test="/sch:SubmitOrder_Request/GeneralRequest/utiReference">
               <utiReference>
                  <xsl:value-of select="/sch:SubmitOrder_Request/GeneralRequest/utiReference"/>
               </utiReference>
            </xsl:if>
            <parameters>
               <xsl:for-each select="/sch:SubmitOrder_Request/GeneralRequest/parameters/parameter">
                  <parameter>
                     <xsl:if test="name">
                        <name>
                           <xsl:value-of select="name"/>
                        </name>
                     </xsl:if>
                     <xsl:if test="value">
                        <value>
                           <xsl:value-of select="value"/>
                        </value>
                     </xsl:if>
                  </parameter>
               </xsl:for-each>
            </parameters>
         </GeneralRequest>
         <key>
            <xsl:value-of select="/sch:SubmitOrder_Request/GeneralRequest/utiReference"/>
         </key>
         <code>
            <xsl:value-of select="/sch:SubmitOrder_Request/Order/orderID"/>
         </code>
         <data>
            <xsl:copy-of select="concat(/sch:SubmitOrder_Request/Order/OrderContent/payload,&quot;&quot;)"/>
         </data>
      </ns5:BasicSetRequest>
   </xsl:template>
</xsl:stylesheet>
