<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:ns0="http://tigo.com/enterprise/serviceEntity/provisioning/dataChangeRequest/v1/schema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:ns17="http://tigo.com/enterprise/taskService/provisioning/v1" xmlns:ns1="http://tigo.com/enterprise/businessEntity/charge/v1/schema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns5="http://tigo.com/commons/resources/additional/v1/schema" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:ns11="http://tigo.com/enterprise/taskService/paymentService/v1" xmlns:cmn="http://tigo.com/commons/generalResponse/v1/schema" xmlns:ns13="http://xmlns.oracle.com/pcbpel/adapter/db/OrchestratorOrders/Orchestrator/LOG_ORCHESTRATOR_PRODUCT_UPDATE" xmlns:ns10="http://tigo.com/enterprise/serviceEntity/provisioning/reverseProvideProcess" xmlns:sch="http://tigo.com/enterprise/serviceEntity/provisioning/orderRequest/v1/schema" xmlns:ns9="http://tigo.com/enterprise/serviceEntity/provisioning/orderRequest/v1" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns6="http://tigo.com/enterprise/businessEntity/product/basic/v1/schema" xmlns:ns16="http://tigo.com/enterprise/serviceEntity/provisioning/reverseProcess" xmlns:ns8="http://tigo.com/enterprise/serviceEntity/provisioning/fieldService/v1/schema" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns2="http://tigo.com/serviceEntity/provisioning/offeringDetail/v1/schema" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns3="http://tigo.com/enterprise/businessEntity/client/basic/v1/schema" xmlns:ns15="http://tigo.com/enterprise/serviceEntity/provisioning/provideProcess" xmlns:tns="http://tigo.com/enterprise/serviceEntity/provisioning/orderProcess" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns4="http://tigo.com/commons/basicRequest/v1/schema" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns14="http://tigo.com/enterprise/taskService/provisioning/v1/schema" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns12="http://tigo.com/enterprise/serviceEntity/provisioning/reversePayProcess" xmlns:ns7="http://tigo.com/enterprise/serviceEntity/provisioning/order/v1/schema" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns0 ns1 ns5 soap cmn sch wsdl ns6 ns8 ns2 ns3 tns ns4 xsd ns7 ns17 ns11 ns13 ns10 ns9 ns16 ns15 ns14 ns12 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:template match="/">
      <sch:BasicOrderResponse>
         <generalResponse>
            <uti>
               <xsl:value-of select="/sch:BasicOrderResponse/generalResponse/uti"/>
            </uti>
            <status>
               <xsl:value-of select="/sch:BasicOrderResponse/generalResponse/status"/>
            </status>
            <code>
               <xsl:value-of select="/sch:BasicOrderResponse/generalResponse/code"/>
            </code>
            <message>
               <xsl:value-of select="/sch:BasicOrderResponse/generalResponse/message"/>
            </message>
         </generalResponse>
      </sch:BasicOrderResponse>
   </xsl:template>
</xsl:stylesheet>
