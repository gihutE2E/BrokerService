<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:dcr="http://tigo.com/enterprise/serviceEntity/provisioning/dataChangeRequest/v1/schema" xmlns:ns15="http://tigo.com/enterprise/business/task/ServiceRequestTrace/v1" xmlns:chr="http://tigo.com/enterprise/businessEntity/charge/v1/schema" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:ns14="http://tigo.com/enterprise/business/task/ServiceRequestTrace/v1/schema" xmlns:ns11="http://tigo.com/enterprise/serviceEntity/WorkingMemory/v1" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns1="http://tigo.com/enterprise/business/entities/order/v1/schema" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns13="http://tigo.com/enterprise/serviceEntity/DataTransformation/v1" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:bsc="http://tigo.com/commons/basicRequest/v1/schema" xmlns:ns3="http://tigo.com/enterprise/resources/GeneralRequest/v1/schema" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/TB_BROKERSERVICE_MAPPING" xmlns:sch="http://tigo.com/enterprise/business/task/OrderBroker/v1/schema" xmlns:ns12="http://tigo.com/enterprise/serviceEntity/DataTransformation/v1/schema" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:ns16="http://xmlns.oracle.com/AuditoryBroker" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:grs="http://tigo.com/enterprise/resources/GeneralResponse/v1/schema" xmlns:ns4="http://tigo.com/enterprise/resources/parameters/simple/v1/schema" xmlns:ns8="http://tigo.com/commons/resources/additional/v1/schema" xmlns:ns0="http://tigo.com/enterprise/business/entities/notificationBasic/v1/schema" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:ns2="http://tigo.com/enterprise/business/entities/client/basic/v1/schema" xmlns:cmn="http://tigo.com/commons/generalResponse/v1/schema" xmlns:ns17="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ns5="http://tigo.com/enterprise/serviceEntity/provisioning/orderRequest/v1/schema" xmlns:ns10="http://tigo.com/enterprise/serviceEntity/WorkingMemory/v1/schema" xmlns:ns7="http://tigo.com/enterprise/businessEntity/product/basic/v1/schema" xmlns:fsr="http://tigo.com/enterprise/serviceEntity/provisioning/fieldService/v1/schema" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns6="http://tigo.com/serviceEntity/provisioning/offeringDetail/v1/schema" xmlns:clt="http://tigo.com/enterprise/businessEntity/client/basic/v1/schema" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:client="http://xmlns.oracle.com/Auditory/AuditoryBroker/BPELProcess" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns9="http://xmlns.oracle.com/pcbpel/adapter/db/Broker/BrokerService/TB_BROKERSERVICE_MAPPING" xmlns:tns="http://tigo.com/enterprise/business/task/OrderBroker/v1/SendOrderProcess" xmlns:ord="http://tigo.com/enterprise/serviceEntity/provisioning/order/v1/schema" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" xmlns:data="http://siebel.com/OrderManagement/Order/Data" xmlns:asi="http://siebel.com/asi" exclude-result-prefixes="xsl xsi dcr ns15 chr plt ns14 ns11 ns1 ns13 bsc ns3 xsd top sch ns12 grs ns4 ns8 ns0 soap ns2 cmn wsdl ns5 ns10 ns7 fsr ns6 clt ns9 tns ord plnk ns16 ns17 client bpm ora socket mhdr dvm xdk bpws xp20 bpel oraext hwf med ids xref ldap">
   <xsl:param name="InvokeO2ServiceInput.body"/>
   <xsl:param name="InvokeTBBrokerMappingSelectInput.TB_BROKERSERVICE_MAPPINGSelect_inputParameters"/>
   <xsl:param name="InvokeWorkingMemorySetInput.body"/>
   <xsl:param name="InvokeBrokerMappingMediatorSubmitOrderInput.body"/>
   <xsl:param name="InvokeDataTransformationTransformInput.body"/>
   <xsl:param name="InvokeServiceRequestTraceSetInput.body"/>
   <xsl:template match="/">
      <ns16:AuditoryBrokerRequest>
         <ns16:apptransactionid>
            <xsl:value-of select="$InvokeWorkingMemorySetInput.body/ns10:BasicSetRequest/GeneralRequest/applicationTransactionID"/>
         </ns16:apptransactionid>
         <ns16:action>
            <xsl:value-of select="/sch:SubmitOrder_Request/Order/orderSpecification/action"/>
         </ns16:action>
         <ns16:key>
            <xsl:value-of select="$InvokeDataTransformationTransformInput.body/ns12:BasicTransformRequest/key"/>
         </ns16:key>
         <ns16:account>
            <xsl:value-of select="/sch:SubmitOrder_Request/Order/OrderContent/content/payload/asi:process_Input/data:ListOfSWIOrderIO/data:SWIOrder/data:Account"/>
         </ns16:account>
         <ns16:accounttype>
            <xsl:value-of select="/sch:SubmitOrder_Request/Order/OrderContent/content/payload/asi:process_Input/data:ListOfSWIOrderIO/data:SWIOrder/data:AccountType"/>
         </ns16:accounttype>
         <ns16:updatedbylogin>
            <xsl:value-of select="/sch:SubmitOrder_Request/Order/OrderContent/content/payload/asi:process_Input/data:ListOfSWIOrderIO/data:SWIOrder/data:UpdatedByLogin"/>
         </ns16:updatedbylogin>
         <ns16:createdbyname>
            <xsl:value-of select="/sch:SubmitOrder_Request/Order/OrderContent/content/payload/asi:process_Input/data:ListOfSWIOrderIO/data:SWIOrder/data:CreatedByName"/>
         </ns16:createdbyname>
         <ns16:tgpositionname>
            <xsl:value-of select="/sch:SubmitOrder_Request/Order/OrderContent/content/payload/asi:process_Input/data:ListOfSWIOrderIO/data:SWIOrder/data:TGPositionName"/>
         </ns16:tgpositionname>
         <ns16:tgdivisionname>
            <xsl:value-of select="/sch:SubmitOrder_Request/Order/OrderContent/content/payload/asi:process_Input/data:ListOfSWIOrderIO/data:SWIOrder/data:TGDivisionName"/>
         </ns16:tgdivisionname>
         <ns16:target>
            <xsl:value-of select="$InvokeDataTransformationTransformInput.body/ns12:BasicTransformRequest/target"/>
         </ns16:target>
         <ns16:processid>
            <xsl:value-of select="/sch:SubmitOrder_Request/Order/orderID"/>
         </ns16:processid>
         <ns16:serviceid>
            <xsl:value-of select="/sch:SubmitOrder_Request/Order/OrderContent/content/payload/asi:process_Input/data:ListOfSWIOrderIO/data:SWIOrder/data:ListOfSWIOrderItem/data:SWIOrderItem/data:ServiceId"/>
         </ns16:serviceid>
         <ns16:rootassetintegrationid>
            <xsl:value-of select="/sch:SubmitOrder_Request/Order/OrderContent/content/payload/asi:process_Input/data:ListOfSWIOrderIO/data:SWIOrder/data:ListOfSWIOrderItem/data:SWIOrderItem/data:RootAssetIntegrationId"/>
         </ns16:rootassetintegrationid>
      </ns16:AuditoryBrokerRequest>
   </xsl:template>
</xsl:stylesheet>
