<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:ns0="http://tigo.com/enterprise/serviceEntity/provisioning/dataChangeRequest/v1/schema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:tns="http://tigo.com/enterprise/taskService/provisioning/v1" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns6="http://tigo.com/commons/resources/additional/v1/schema" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:cmn="http://tigo.com/commons/generalResponse/v1/schema" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns4="http://tigo.com/enterprise/businessEntity/product/basic/v1/schema" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns1="http://tigo.com/serviceEntity/provisioning/offeringDetail/v1/schema" xmlns:ns2="http://tigo.com/enterprise/businessEntity/client/basic/v1/schema" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns3="http://tigo.com/commons/basicRequest/v1/schema" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:sch="http://tigo.com/enterprise/taskService/provisioning/v1/schema" xmlns:ns5="http://tigo.com/enterprise/serviceEntity/provisioning/order/v1/schema" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns0 tns ns6 soap cmn wsdl ns4 ns1 ns2 ns3 xsd sch ns5 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:template match="/">
      <sch:BasicReverseRequest>
         <ns3:basicRequest>
            <xsl:if test="concat(/sch:BasicReverseRequest/ns3:basicRequest/externalApplicationID,'')!=''">
               <externalApplicationID>
                  <xsl:value-of select="/sch:BasicReverseRequest/ns3:basicRequest/externalApplicationID"/>
               </externalApplicationID>
            </xsl:if>
            <xsl:if test="concat(/sch:BasicReverseRequest/ns3:basicRequest/externalTransactionID,'')!=''">
               <externalTransactionID>
                  <xsl:value-of select="/sch:BasicReverseRequest/ns3:basicRequest/externalTransactionID"/>
               </externalTransactionID>
            </xsl:if>
            <utiReference>
               <xsl:value-of select="/sch:BasicReverseRequest/ns3:basicRequest/utiReference"/>
            </utiReference>
         </ns3:basicRequest>
      </sch:BasicReverseRequest>
   </xsl:template>
</xsl:stylesheet>
