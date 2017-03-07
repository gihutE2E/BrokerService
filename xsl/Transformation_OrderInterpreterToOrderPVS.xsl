<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:product="http://xmlns.tigo.com/ProductSchema/V1" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:requestHeader="http://xmlns.tigo.com/RequestHeader/V3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:sch="http://xmlns.tigo.com/ProcessValidator/ValidateRequest" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:tns="http://facade.broker.osm.mic/" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:bill="http://xmlns.tigo.com/ProcessValidator/BillingAccountSchema/V1" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:client="http://xmlns.tigo.com/ClientSchema/V1" xmlns:additionals="http://xmlns.tigo.com/AdditionalSchema/V1" xmlns:serv="http://xmlns.tigo.com/ProcessValidator/ServiceAccountSchema/V1" xmlns:parameters="http://xmlns.tigo.com/ParameterType/V2" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns0="http://facade.broker.osm.mic/types" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl tns soap12 soap wsdl mime ns0 xsd product requestHeader sch bill client additionals serv parameters xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:template match="/">
      <sch:validateArrayRequest>
         <xsl:for-each select="/tns:processPVSOrderResponse/return/validateRequest">
            <sch:ValidateRequest>
               <requestHeader:RequestHeader>
                  <requestHeader:GeneralConsumerInformation>
                     <xsl:if test="requestHeader/generalConsumerInformation/consumerID">
                        <requestHeader:consumerID>
                           <xsl:value-of select="requestHeader/generalConsumerInformation/consumerID"/>
                        </requestHeader:consumerID>
                     </xsl:if>
                     <xsl:if test="requestHeader/generalConsumerInformation/transactionID">
                        <requestHeader:transactionID>
                           <xsl:value-of select="requestHeader/generalConsumerInformation/transactionID"/>
                        </requestHeader:transactionID>
                     </xsl:if>
                     <xsl:if test="requestHeader/generalConsumerInformation/country">
                        <requestHeader:country>
                           <xsl:value-of select="requestHeader/generalConsumerInformation/country"/>
                        </requestHeader:country>
                     </xsl:if>
                     <requestHeader:correlationID>
                        <xsl:value-of select="requestHeader/generalConsumerInformation/correlationID"/>
                     </requestHeader:correlationID>
                  </requestHeader:GeneralConsumerInformation>
               </requestHeader:RequestHeader>
               <sch:requestBody>
                  <sch:processID>
                     <xsl:value-of select="requestBody/processID"/>
                  </sch:processID>
                  <xsl:if test="requestBody/token">
                     <sch:token>
                        <xsl:value-of select="requestBody/token"/>
                     </sch:token>
                  </xsl:if>
                  <xsl:if test="requestBody/requestID">
                     <sch:requestID>
                        <sch:id>
                           <xsl:value-of select="requestBody/requestID/id"/>
                        </sch:id>
                        <sch:idType>
                           <xsl:value-of select="requestBody/requestID/idType"/>
                        </sch:idType>
                     </sch:requestID>
                  </xsl:if>
                  <sch:client>
                     <xsl:if test="requestBody/client/id">
                        <client:id>
                           <xsl:value-of select="requestBody/client/id"/>
                        </client:id>
                     </xsl:if>
                     <xsl:if test="requestBody/client/idType">
                        <client:idType>
                           <xsl:value-of select="requestBody/client/idType"/>
                        </client:idType>
                     </xsl:if>
                  </sch:client>
                  <xsl:if test="requestBody/product">
                     <product:product>
                        <code>
                           <xsl:value-of select="requestBody/product/code"/>
                        </code>
                        <name>
                           <xsl:value-of select="requestBody/product/name"/>
                        </name>
                     </product:product>
                  </xsl:if>
                  <xsl:if test="requestBody/billingAccount">
                     <bill:billingAccount>
                        <bill:billingAccountID>
                           <xsl:value-of select="requestBody/billingAccount/billingAccountID"/>
                        </bill:billingAccountID>
                        <bill:legacyBillingID>
                           <xsl:value-of select="requestBody/billingAccount/legacyBillingID"/>
                        </bill:legacyBillingID>
                     </bill:billingAccount>
                  </xsl:if>
                  <xsl:if test="requestBody/serviceAccount">
                     <serv:serviceAccount>
                        <serv:serviceAccountID>
                           <xsl:value-of select="requestBody/serviceAccount/serviceAccountID"/>
                        </serv:serviceAccountID>
                        <serv:legacyServiceID>
                           <xsl:value-of select="requestBody/serviceAccount/legacyServiceID"/>
                        </serv:legacyServiceID>
                     </serv:serviceAccount>
                  </xsl:if>
                  <xsl:if test="requestBody/additionals">
                     <additionals:additionals>
                        <xsl:for-each select="requestBody/additionals/additional">
                           <additionals:additional>
                              <additionals:name>
                                 <xsl:value-of select="name"/>
                              </additionals:name>
                              <additionals:value>
                                 <xsl:value-of select="value"/>
                              </additionals:value>
                           </additionals:additional>
                        </xsl:for-each>
                     </additionals:additionals>
                  </xsl:if>
               </sch:requestBody>
            </sch:ValidateRequest>
         </xsl:for-each>
      </sch:validateArrayRequest>
   </xsl:template>
</xsl:stylesheet>
