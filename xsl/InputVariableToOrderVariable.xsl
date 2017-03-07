<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:ns0="http://tigo.com/enterprise/serviceEntity/provisioning/dataChangeRequest/v1/schema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:chr="http://tigo.com/enterprise/businessEntity/charge/v1/schema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns6="http://tigo.com/commons/resources/additional/v1/schema" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:cmn="http://tigo.com/commons/generalResponse/v1/schema" xmlns:ns7="http://tigo.com/enterprise/serviceEntity/provisioning/orderRequest/v1/schema" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns4="http://tigo.com/enterprise/businessEntity/product/basic/v1/schema" xmlns:fsr="http://tigo.com/enterprise/serviceEntity/provisioning/fieldService/v1/schema" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns1="http://tigo.com/serviceEntity/provisioning/offeringDetail/v1/schema" xmlns:ns2="http://tigo.com/enterprise/businessEntity/client/basic/v1/schema" xmlns:tns="http://tigo.com/enterprise/serviceEntity/provisioning/provideProcess" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns3="http://tigo.com/commons/basicRequest/v1/schema" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:sch="http://tigo.com/enterprise/taskService/provisioning/v1/schema" xmlns:ns5="http://tigo.com/enterprise/serviceEntity/provisioning/order/v1/schema" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns0 ns6 soap cmn wsdl ns4 ns1 ns2 tns ns3 xsd sch ns5 chr ns7 fsr xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:template match="/">
      <ns5:order>
         <ns4:product>
            <CODE>
               <xsl:value-of select="/sch:BasicProvisioningRequest/productOffering/ns5:order/ns4:product/CODE"/>
            </CODE>
            <name>
               <xsl:value-of select="/sch:BasicProvisioningRequest/productOffering/ns5:order/ns4:product/name"/>
            </name>
         </ns4:product>
         <ns1:offeringDetail>
            <value>
               <xsl:value-of select="/sch:BasicProvisioningRequest/productOffering/ns5:order/ns1:offeringDetail/value"/>
            </value>
            <currency>
               <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="/sch:BasicProvisioningRequest/productOffering/ns5:order/ns1:offeringDetail/currency/@xsi:nil"/>
               </xsl:attribute>
               <xsl:value-of select="/sch:BasicProvisioningRequest/productOffering/ns5:order/ns1:offeringDetail/currency"/>
            </currency>
            <expirationDate>
               <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="/sch:BasicProvisioningRequest/productOffering/ns5:order/ns1:offeringDetail/expirationDate/@xsi:nil"/>
               </xsl:attribute>
               <xsl:value-of select="/sch:BasicProvisioningRequest/productOffering/ns5:order/ns1:offeringDetail/expirationDate"/>
            </expirationDate>
            <startDate>
               <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="/sch:BasicProvisioningRequest/productOffering/ns5:order/ns1:offeringDetail/startDate/@xsi:nil"/>
               </xsl:attribute>
               <xsl:value-of select="/sch:BasicProvisioningRequest/productOffering/ns5:order/ns1:offeringDetail/startDate"/>
            </startDate>
            <defer>
               <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="/sch:BasicProvisioningRequest/productOffering/ns5:order/ns1:offeringDetail/defer/@xsi:nil"/>
               </xsl:attribute>
               <xsl:value-of select="/sch:BasicProvisioningRequest/productOffering/ns5:order/ns1:offeringDetail/defer"/>
            </defer>
            <offerAction>
               <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="/sch:BasicProvisioningRequest/productOffering/ns5:order/ns1:offeringDetail/offerAction/@xsi:nil"/>
               </xsl:attribute>
               <xsl:value-of select="/sch:BasicProvisioningRequest/productOffering/ns5:order/ns1:offeringDetail/offerAction"/>
            </offerAction>
         </ns1:offeringDetail>
         <ns6:additionals>
            <xsl:attribute name="xsi:nil">
               <xsl:value-of select="/sch:BasicProvisioningRequest/productOffering/ns5:order/ns6:additionals/@xsi:nil"/>
            </xsl:attribute>
            <xsl:for-each select="/sch:BasicProvisioningRequest/productOffering/ns5:order/ns6:additionals/additional">
               <additional>
                  <name>
                     <xsl:value-of select="name"/>
                  </name>
                  <value>
                     <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="value/@xsi:nil"/>
                     </xsl:attribute>
                     <xsl:value-of select="value"/>
                  </value>
               </additional>
            </xsl:for-each>
         </ns6:additionals>
      </ns5:order>
   </xsl:template>
</xsl:stylesheet>
