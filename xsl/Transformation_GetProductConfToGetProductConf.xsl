<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:ns0="http://tigo.com/enterprise/serviceEntity/provisioning/dataChangeRequest/v1/schema" xmlns:sch2="http://www.tigo.com/platform/productConfigurationO2Service/getConfigurationBaseProduct/v1/schema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:sch6="http://www.tigo.com/platform/productConfigurationO2Service/getProductByConditions/v1/schema" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns4="http://tigo.com/commons/resources/additional/v1/schema" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:cmn="http://tigo.com/commons/generalResponse/v1/schema" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:sch3="http://www.tigo.com/platform/productConfigurationO2Service/getConditionsBaseProduct/v1/schema" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns5="http://tigo.com/enterprise/businessEntity/product/basic/v1/schema" xmlns:ns7="http://tigo.com/enterprise/serviceEntity/provisioning/fieldService/v1/schema" xmlns:sch4="http://www.tigo.com/platform/productConfigurationO2Service/getConfigurationBaseFromPlatformProduct/v1/schema" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns1="http://tigo.com/serviceEntity/provisioning/offeringDetail/v1/schema" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns2="http://tigo.com/enterprise/businessEntity/client/basic/v1/schema" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns3="http://tigo.com/commons/basicRequest/v1/schema" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:sch5="http://www.tigo.com/enterprise/productConfigurationO2Service/getconfigurationplatformproductbyconditions/v1/schema" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:sch1="http://www.tigo.com/platform/productConfigurationO2Service/getConfigurationPlatformProduct/v1/schema" xmlns:ns6="http://tigo.com/enterprise/serviceEntity/provisioning/order/v1/schema" xmlns:tns="http://www.tigo.com/enterprise/productConfigurationO2Service/productConfigurationO2/v1" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns0 sch2 sch6 ns4 soap cmn wsdl sch3 ns5 ns7 sch4 ns1 ns2 ns3 sch5 xsd sch1 ns6 tns xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:template match="/">
      <sch2:GetConfigurationBaseProductRequest>
         <ns3:basicRequest>
            <xsl:if test="concat(/sch2:GetConfigurationBaseProductRequest/ns3:basicRequest/externalApplicationID,'')!=''">
               <externalApplicationID>
                  <xsl:value-of select="/sch2:GetConfigurationBaseProductRequest/ns3:basicRequest/externalApplicationID"/>
               </externalApplicationID>
            </xsl:if>
            <xsl:if test="concat(/sch2:GetConfigurationBaseProductRequest/ns3:basicRequest/externalTransactionID,'')!=''">
               <externalTransactionID>
                  <xsl:value-of select="/sch2:GetConfigurationBaseProductRequest/ns3:basicRequest/externalTransactionID"/>
               </externalTransactionID>
            </xsl:if>
            <xsl:if test="concat(/sch2:GetConfigurationBaseProductRequest/ns3:basicRequest/utiReference,'')!=''">
               <utiReference>
                  <xsl:value-of select="/sch2:GetConfigurationBaseProductRequest/ns3:basicRequest/utiReference"/>
               </utiReference>
            </xsl:if>
         </ns3:basicRequest>
         <ns5:product>
            <CODE>
               <xsl:value-of select="/sch2:GetConfigurationBaseProductRequest/ns5:product/CODE"/>
            </CODE>
            <name>
               <xsl:value-of select="/sch2:GetConfigurationBaseProductRequest/ns5:product/name"/>
            </name>
         </ns5:product>
         <xsl:if test="concat(/sch2:GetConfigurationBaseProductRequest/ns4:additionals/additional/name,'')!=''">
            <ns4:additionals>
               <xsl:for-each select="/sch2:GetConfigurationBaseProductRequest/ns4:additionals/additional">
                  <additional>
                     <name>
                        <xsl:value-of select="name"/>
                     </name>
                     <value>
                        <xsl:value-of select="value"/>
                     </value>
                  </additional>
               </xsl:for-each>
            </ns4:additionals>
         </xsl:if>
      </sch2:GetConfigurationBaseProductRequest>
   </xsl:template>
</xsl:stylesheet>
