<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:ns0="http://tigo.com/enterprise/serviceEntity/provisioning/dataChangeRequest/v1/schema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns14="http://tigo.com/resources/util/productItem/v1/schema" xmlns:ns8="http://tigo.com/enterprise/resources/GeneralResponse/v1/schema" xmlns:ns6="http://tigo.com/enterprise/resources/parameters/simple/v1/schema" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns9="http://tigo.com/commons/resources/additional/v1/schema" xmlns:ns10="http://tigo.com/enterprise/business/entities/notificationBasic/v1/schema" xmlns:ns11="http://tigo.com/enterprise/business/entities/client/basic/v1/schema" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:cmn="http://tigo.com/commons/generalResponse/v1/schema" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:sch="http://tigo.com/enterprise/taskService/provideProcess/schema" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:nflt="http://tigo.com/commons/generalResponse/notify/v1/schema" xmlns:ns12="http://tigo.com/enterprise/businessEntity/product/basic/v1/schema" xmlns:ns1="http://tigo.com/enterprise/business/entities/order/v1/schema" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns2="http://tigo.com/serviceEntity/provisioning/offeringDetail/v1/schema" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns3="http://tigo.com/enterprise/businessEntity/client/basic/v1/schema" xmlns:tns="http://tigo.com/enterprise/serviceEntity/provisioning/provideProcess" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:ns4="http://tigo.com/enterprise/business/task/Notification/v1/schema" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns5="http://tigo.com/commons/basicRequest/v1/schema" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ns7="http://tigo.com/enterprise/resources/GeneralRequest/v1/schema" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns13="http://tigo.com/enterprise/serviceEntity/provisioning/order/v1/schema" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns0 ns8 ns6 ns9 ns10 ns11 soap cmn wsdl sch nflt ns12 ns1 ns2 ns3 tns ns4 ns5 ns7 xsd ns13 ns14 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:template match="/">
      <ns14:productItemList>
         <xsl:for-each select="/sch:BasicProvisioningRequest/productOffering/ns13:order">
            <productItem>
               <xsl:if test="ns9:additionals/additional/name = &quot;CRM_Level_Item&quot;">
                  <idRoot>
                     <xsl:value-of select="ns9:additionals/additional[name = &quot;CRM_Level_Item&quot;]/value"/>
                  </idRoot>
               </xsl:if>
               <idItem>
                  <xsl:value-of select="ns12:product/CODE"/>
               </idItem>
               <action>
                  <xsl:value-of select="ns2:offeringDetail/offerAction"/>
               </action>
               <type>
                  <xsl:text disable-output-escaping="no">IN</xsl:text>
               </type>
            </productItem>
         </xsl:for-each>
      </ns14:productItemList>
   </xsl:template>
</xsl:stylesheet>
