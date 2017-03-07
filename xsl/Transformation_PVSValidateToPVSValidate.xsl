<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:tns="http://xmlns.tigo.com/ProcessValidator/ProcessValidatorService" xmlns:xtcpg="http://xmlns.tigo.com/ProcessValidator/GetValidationRequest" xmlns:ns5="http://xmlns.tigo.com/ProductSchema/V1" xmlns:xtcpv1="http://xmlns.tigo.com/ProcessValidator/ValidatorFaultResponse" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns2="http://xmlns.tigo.com/ProcessValidator/StepSchema/V1" xmlns:ns10="http://xmlns.tigo.com/ProcessValidator/BillingAccountSchema/V1" xmlns:ns13="http://xmlns.tigo.com/ProcessValidator/ValidatorGeneralResponse/array" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns12="http://xmlns.tigo.com/ClientSchema/V1" xmlns:ns0="http://xmlns.tigo.com/AdditionalSchema/V1" xmlns:ns3="http://xmlns.tigo.com/ProcessValidator/ServiceAccountSchema/V1" xmlns:ns4="http://xmlns.tigo.com/ParameterType/V2" xmlns:ns15="http://tigo.com/enterprise/business/entities/order/v1/schema" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns7="http://xmlns.tigo.com/ResponseHeader/V3" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:ns8="http://xmlns.tigo.com/ProcessValidator/StatusSchema/V1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns14="http://tigo.com/enterprise/business/task/OrderBroker/v1/PVSProcess" xmlns:ns17="http://tigo.com/enterprise/resources/GeneralRequest/v1/schema" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns9="http://xmlns.tigo.com/ProcessValidator/RoleSchema/V1" xmlns:sch="http://tigo.com/enterprise/business/task/OrderBroker/v1/schema" xmlns:ns11="http:/xmlns.tigo.com/ProcessValidator/ProcessDetailsSchema/V1" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:ns6="http://xmlns.tigo.com/RequestHeader/V3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xtcpv="http://xmlns.tigo.com/ProcessValidator/ValidateRequest" xmlns:grs="http://tigo.com/enterprise/resources/GeneralResponse/v1/schema" xmlns:ns16="http://tigo.com/enterprise/resources/parameters/simple/v1/schema" xmlns:ns18="http://tigo.com/enterprise/business/entities/notificationBasic/v1/schema" xmlns:ns19="http://tigo.com/enterprise/business/entities/client/basic/v1/schema" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:xpc="http:/xmlns.tigo.com/ProcessValidator/ConfirmValidationRequest" xmlns:xtccv="http://xmlns.tigo.com/ProcessValidator/ValidatorGeneralResponse" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns20="http://tigo.com/enterprise/business/task/OrderBroker/v1/SendOrderProcess" xmlns:ns1="http://xmlns.tigo.com/ProcessValidator/RuleSchema/V1" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsl xsi tns xtcpg ns5 xtcpv1 ns2 ns10 ns13 ns12 ns0 ns3 ns4 ns15 ns7 ns8 ns14 ns17 xsd ns9 sch ns11 ns6 xtcpv grs ns16 ns18 ns19 soap12 soap wsdl mime xpc xtccv ns20 ns1 bpm ora socket mhdr dvm xdk bpws xp20 bpel oraext hwf med ids xref ldap">
   <xsl:param name="inputVariable.body"/>
   <xsl:template match="/">
      <xtcpv:ValidateRequest>
         <ns6:RequestHeader>
            <ns6:GeneralConsumerInformation>
               <xsl:if test="/xtcpv:ValidateRequest/ns6:RequestHeader/ns6:GeneralConsumerInformation/ns6:consumerID">
                  <ns6:consumerID>
                     <xsl:value-of select="/xtcpv:ValidateRequest/ns6:RequestHeader/ns6:GeneralConsumerInformation/ns6:consumerID"/>
                  </ns6:consumerID>
               </xsl:if>
               <xsl:if test="/xtcpv:ValidateRequest/ns6:RequestHeader/ns6:GeneralConsumerInformation/ns6:transactionID">
                  <ns6:transactionID>
                     <xsl:value-of select="/xtcpv:ValidateRequest/ns6:RequestHeader/ns6:GeneralConsumerInformation/ns6:transactionID"/>
                  </ns6:transactionID>
               </xsl:if>
               <xsl:if test="/xtcpv:ValidateRequest/ns6:RequestHeader/ns6:GeneralConsumerInformation/ns6:country">
                  <ns6:country>
                     <xsl:value-of select="/xtcpv:ValidateRequest/ns6:RequestHeader/ns6:GeneralConsumerInformation/ns6:country"/>
                  </ns6:country>
               </xsl:if>
               <ns6:correlationID>
                  <xsl:value-of select="$inputVariable.body/sch:SubmitOrder_Request/GeneralRequest/utiReference"/>
               </ns6:correlationID>
            </ns6:GeneralConsumerInformation>
         </ns6:RequestHeader>
         <xtcpv:requestBody>
            <xtcpv:processID>
               <xsl:value-of select="/xtcpv:ValidateRequest/xtcpv:requestBody/xtcpv:processID"/>
            </xtcpv:processID>
            <xsl:if test="/xtcpv:ValidateRequest/xtcpv:requestBody/xtcpv:token">
               <xtcpv:token>
                  <xsl:value-of select="/xtcpv:ValidateRequest/xtcpv:requestBody/xtcpv:token"/>
               </xtcpv:token>
            </xsl:if>
            <xsl:if test="/xtcpv:ValidateRequest/xtcpv:requestBody/xtcpv:requestID">
               <xtcpv:requestID>
                  <xtcpv:id>
                     <xsl:value-of select="/xtcpv:ValidateRequest/xtcpv:requestBody/xtcpv:requestID/xtcpv:id"/>
                  </xtcpv:id>
                  <xtcpv:idType>
                     <xsl:value-of select="/xtcpv:ValidateRequest/xtcpv:requestBody/xtcpv:requestID/xtcpv:idType"/>
                  </xtcpv:idType>
               </xtcpv:requestID>
            </xsl:if>
            <xtcpv:client>
               <xsl:if test="/xtcpv:ValidateRequest/xtcpv:requestBody/xtcpv:client/ns12:id">
                  <ns12:id>
                     <xsl:value-of select="/xtcpv:ValidateRequest/xtcpv:requestBody/xtcpv:client/ns12:id"/>
                  </ns12:id>
               </xsl:if>
               <xsl:if test="/xtcpv:ValidateRequest/xtcpv:requestBody/xtcpv:client/ns12:idType">
                  <ns12:idType>
                     <xsl:value-of select="/xtcpv:ValidateRequest/xtcpv:requestBody/xtcpv:client/ns12:idType"/>
                  </ns12:idType>
               </xsl:if>
            </xtcpv:client>
            <xsl:if test="/xtcpv:ValidateRequest/xtcpv:requestBody/ns5:product">
               <ns5:product>
                  <code>
                     <xsl:value-of select="/xtcpv:ValidateRequest/xtcpv:requestBody/ns5:product/code"/>
                  </code>
                  <name>
                     <xsl:value-of select="/xtcpv:ValidateRequest/xtcpv:requestBody/ns5:product/name"/>
                  </name>
               </ns5:product>
            </xsl:if>
            <xsl:if test="/xtcpv:ValidateRequest/xtcpv:requestBody/ns10:billingAccount">
               <ns10:billingAccount>
                  <ns10:billingAccountID>
                     <xsl:value-of select="/xtcpv:ValidateRequest/xtcpv:requestBody/ns10:billingAccount/ns10:billingAccountID"/>
                  </ns10:billingAccountID>
                  <ns10:legacyBillingID>
                     <xsl:value-of select="/xtcpv:ValidateRequest/xtcpv:requestBody/ns10:billingAccount/ns10:legacyBillingID"/>
                  </ns10:legacyBillingID>
               </ns10:billingAccount>
            </xsl:if>
            <xsl:if test="/xtcpv:ValidateRequest/xtcpv:requestBody/ns3:serviceAccount">
               <ns3:serviceAccount>
                  <ns3:serviceAccountID>
                     <xsl:value-of select="/xtcpv:ValidateRequest/xtcpv:requestBody/ns3:serviceAccount/ns3:serviceAccountID"/>
                  </ns3:serviceAccountID>
                  <ns3:legacyServiceID>
                     <xsl:value-of select="/xtcpv:ValidateRequest/xtcpv:requestBody/ns3:serviceAccount/ns3:legacyServiceID"/>
                  </ns3:legacyServiceID>
               </ns3:serviceAccount>
            </xsl:if>
            <xsl:if test="/xtcpv:ValidateRequest/xtcpv:requestBody/ns0:additionals">
               <ns0:additionals>
                  <xsl:for-each select="/xtcpv:ValidateRequest/xtcpv:requestBody/ns0:additionals/ns0:additional">
                     <ns0:additional>
                        <ns0:name>
                           <xsl:value-of select="ns0:name"/>
                        </ns0:name>
                        <ns0:value>
                           <xsl:value-of select="ns0:value"/>
                        </ns0:value>
                     </ns0:additional>
                  </xsl:for-each>
               </ns0:additionals>
            </xsl:if>
         </xtcpv:requestBody>
      </xtcpv:ValidateRequest>
   </xsl:template>
</xsl:stylesheet>
