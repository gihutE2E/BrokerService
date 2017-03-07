<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:product="http://xmlns.tigo.com/ProductSchema/V1" xmlns:requestHeader="http://xmlns.tigo.com/RequestHeader/V3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:sch="http://xmlns.tigo.com/ProcessValidator/ValidateRequest" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:ns1="http://facade.broker.osm.mic/" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:bill="http://xmlns.tigo.com/ProcessValidator/BillingAccountSchema/V1" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:client="http://xmlns.tigo.com/ClientSchema/V1" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/BrokerRegional/Broker/TB_ORDER_INTERPRETER" xmlns:additionals="http://xmlns.tigo.com/AdditionalSchema/V1" xmlns:serv="http://xmlns.tigo.com/ProcessValidator/ServiceAccountSchema/V1" xmlns:parameters="http://xmlns.tigo.com/ParameterType/V2" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/TB_ORDER_INTERPRETER" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns0="http://facade.broker.osm.mic/types" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl product requestHeader sch plt bill wsdl client tns additionals serv parameters top xsd soap12 ns1 soap mime ns0 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:param name="InvokeTbOrderInterpreterOutput.TbOrderInterpreterMCollection"/>
   <xsl:template match="/">
      <ns1:processPVSOrder>
         <validateArrayRequest>
            <xsl:for-each select="/sch:validateArrayRequest/sch:ValidateRequest">
               <validateRequest>
                  <requestBody>
                     <additionals>
                        <xsl:for-each select="sch:requestBody/additionals:additionals/additionals:additional">
                           <additional>
                              <name>
                                 <xsl:value-of select="additionals:name"/>
                              </name>
                              <value>
                                 <xsl:value-of select="additionals:value"/>
                              </value>
                           </additional>
                        </xsl:for-each>
                     </additionals>
                     <billingAccount>
                        <billingAccountID>
                           <xsl:value-of select="sch:requestBody/bill:billingAccount/bill:billingAccountID"/>
                        </billingAccountID>
                        <legacyBillingID>
                           <xsl:value-of select="sch:requestBody/bill:billingAccount/bill:legacyBillingID"/>
                        </legacyBillingID>
                     </billingAccount>
                     <client>
                        <xsl:if test="sch:requestBody/sch:client/client:id">
                           <id>
                              <xsl:value-of select="sch:requestBody/sch:client/client:id"/>
                           </id>
                        </xsl:if>
                        <xsl:if test="sch:requestBody/sch:client/client:idType">
                           <idType>
                              <xsl:value-of select="sch:requestBody/sch:client/client:idType"/>
                           </idType>
                        </xsl:if>
                     </client>
                     <processID>
                        <xsl:value-of select="sch:requestBody/sch:processID"/>
                     </processID>
                     <product>
                        <code>
                           <xsl:value-of select="sch:requestBody/product:product/code"/>
                        </code>
                        <name>
                           <xsl:value-of select="sch:requestBody/product:product/name"/>
                        </name>
                     </product>
                     <requestID>
                        <id>
                           <xsl:value-of select="sch:requestBody/sch:requestID/sch:id"/>
                        </id>
                        <idType>
                           <xsl:value-of select="sch:requestBody/sch:requestID/sch:idType"/>
                        </idType>
                     </requestID>
                     <serviceAccount>
                        <legacyServiceID>
                           <xsl:value-of select="sch:requestBody/serv:serviceAccount/serv:legacyServiceID"/>
                        </legacyServiceID>
                        <serviceAccountID>
                           <xsl:value-of select="sch:requestBody/serv:serviceAccount/serv:serviceAccountID"/>
                        </serviceAccountID>
                     </serviceAccount>
                     <xsl:if test="sch:requestBody/sch:token">
                        <token>
                           <xsl:value-of select="sch:requestBody/sch:token"/>
                        </token>
                     </xsl:if>
                  </requestBody>
                  <requestHeader>
                     <generalConsumerInformation>
                        <xsl:if test="requestHeader:RequestHeader/requestHeader:GeneralConsumerInformation/requestHeader:consumerID">
                           <consumerID>
                              <xsl:value-of select="requestHeader:RequestHeader/requestHeader:GeneralConsumerInformation/requestHeader:consumerID"/>
                           </consumerID>
                        </xsl:if>
                        <correlationID>
                           <xsl:value-of select="requestHeader:RequestHeader/requestHeader:GeneralConsumerInformation/requestHeader:correlationID"/>
                        </correlationID>
                        <xsl:if test="requestHeader:RequestHeader/requestHeader:GeneralConsumerInformation/requestHeader:country">
                           <country>
                              <xsl:value-of select="requestHeader:RequestHeader/requestHeader:GeneralConsumerInformation/requestHeader:country"/>
                           </country>
                        </xsl:if>
                        <xsl:if test="requestHeader:RequestHeader/requestHeader:GeneralConsumerInformation/requestHeader:transactionID">
                           <transactionID>
                              <xsl:value-of select="requestHeader:RequestHeader/requestHeader:GeneralConsumerInformation/requestHeader:transactionID"/>
                           </transactionID>
                        </xsl:if>
                     </generalConsumerInformation>
                  </requestHeader>
               </validateRequest>
            </xsl:for-each>
         </validateArrayRequest>
         <tbOrderInterpreterMCollection>
            <xsl:for-each select="$InvokeTbOrderInterpreterOutput.TbOrderInterpreterMCollection/top:TbOrderInterpreterMCollection/top:TbOrderInterpreterM">
               <tbOrderInterpreterMCollection>
                  <xsl:if test="top:description">
                     <description>
                        <xsl:value-of select="top:description"/>
                     </description>
                  </xsl:if>
                  <id>
                     <xsl:value-of select="top:id"/>
                  </id>
                  <xsl:if test="top:newObject">
                     <newObject>
                        <xsl:value-of select="top:newObject"/>
                     </newObject>
                  </xsl:if>
                  <xsl:if test="top:newObjectAction">
                     <newObjectAction>
                        <xsl:value-of select="top:newObjectAction"/>
                     </newObjectAction>
                  </xsl:if>
                  <xsl:if test="top:orderAction">
                     <orderAction>
                        <xsl:value-of select="top:orderAction"/>
                     </orderAction>
                  </xsl:if>
                  <xsl:if test="top:previousObject">
                     <previousObject>
                        <xsl:value-of select="top:previousObject"/>
                     </previousObject>
                  </xsl:if>
                  <xsl:if test="top:previousObjectAction">
                     <previousObjectAction>
                        <xsl:value-of select="top:previousObjectAction"/>
                     </previousObjectAction>
                  </xsl:if>
                  <xsl:if test="top:serviceCode">
                     <serviceCode>
                        <xsl:value-of select="top:serviceCode"/>
                     </serviceCode>
                  </xsl:if>
                  <xsl:if test="top:serviceOwner">
                     <serviceOwner>
                        <xsl:value-of select="top:serviceOwner"/>
                     </serviceOwner>
                  </xsl:if>
               </tbOrderInterpreterMCollection>
            </xsl:for-each>
         </tbOrderInterpreterMCollection>
      </ns1:processPVSOrder>
   </xsl:template>
</xsl:stylesheet>
