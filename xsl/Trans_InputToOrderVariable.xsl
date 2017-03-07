<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:dcr="http://tigo.com/enterprise/serviceEntity/provisioning/dataChangeRequest/v1/schema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:chr="http://tigo.com/enterprise/businessEntity/charge/v1/schema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns2="http://tigo.com/commons/resources/additional/v1/schema" xmlns:cmn="http://tigo.com/commons/generalResponse/v1/schema" xmlns:sch="http://tigo.com/enterprise/serviceEntity/provisioning/orderRequest/v1/schema" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns1="http://tigo.com/enterprise/businessEntity/product/basic/v1/schema" xmlns:fsr="http://tigo.com/enterprise/serviceEntity/provisioning/fieldService/v1/schema" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns0="http://tigo.com/serviceEntity/provisioning/offeringDetail/v1/schema" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:clt="http://tigo.com/enterprise/businessEntity/client/basic/v1/schema" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:bsc="http://tigo.com/commons/basicRequest/v1/schema" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ord="http://tigo.com/enterprise/serviceEntity/provisioning/order/v1/schema" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl dcr chr ns2 cmn sch ns1 fsr ns0 clt bsc xsd ord xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:template match="/">
      <ord:order>
         <ns1:product>
            <CODE>
               <xsl:value-of select="/ord:order/ns1:product/CODE"/>
            </CODE>
            <name>
               <xsl:value-of select="/ord:order/ns1:product/name"/>
            </name>
         </ns1:product>
         <ns0:offeringDetail>
            <value>
               <xsl:value-of select="/ord:order/ns0:offeringDetail/value"/>
            </value>
            <xsl:if test="/ord:order/ns0:offeringDetail/currency != ''">
               <currency>
                  <xsl:value-of select="/ord:order/ns0:offeringDetail/currency"/>
               </currency>
            </xsl:if>
            <xsl:if test="/ord:order/ns0:offeringDetail/expirationDate != ''">
               <expirationDate>
                  <xsl:value-of select="/ord:order/ns0:offeringDetail/expirationDate"/>
               </expirationDate>
            </xsl:if>
            <xsl:if test="/ord:order/ns0:offeringDetail/startDate != ''">
               <startDate>
                  <xsl:value-of select="/ord:order/ns0:offeringDetail/startDate"/>
               </startDate>
            </xsl:if>
            <xsl:if test="/ord:order/ns0:offeringDetail/defer != ''">
               <defer>
                  <xsl:value-of select="/ord:order/ns0:offeringDetail/defer"/>
               </defer>
            </xsl:if>
            <xsl:if test="/ord:order/ns0:offeringDetail/offerAction != ''">
               <offerAction>
                  <xsl:value-of select="/ord:order/ns0:offeringDetail/offerAction"/>
               </offerAction>
            </xsl:if>
         </ns0:offeringDetail>
         <xsl:if test="/ord:order/ns2:additionals/additional/name != ''">
            <ns2:additionals>
               <xsl:for-each select="/ord:order/ns2:additionals/additional">
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
         </xsl:if>
      </ord:order>
   </xsl:template>
</xsl:stylesheet>
