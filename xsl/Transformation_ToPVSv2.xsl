<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:ns1="http://xmlns.tigo.com/ProcessValidator/ProcessValidatorService" xmlns:xtcpg="http://xmlns.tigo.com/ProcessValidator/GetValidationRequest" xmlns:ns18="http://xmlns.tigo.com/ProductSchema/V1" xmlns:xtcpv1="http://xmlns.tigo.com/ProcessValidator/ValidatorFaultResponse" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns9="http://xmlns.tigo.com/ProcessValidator/StepSchema/V1" xmlns:ns20="http://xmlns.tigo.com/ProcessValidator/BillingAccountSchema/V1" xmlns:ns2="http://xmlns.tigo.com/ProcessValidator/ValidatorGeneralResponse/array" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns21="http://xmlns.tigo.com/ClientSchema/V1" xmlns:ns0="http://xmlns.tigo.com/AdditionalSchema/V1" xmlns:ns17="http://xmlns.tigo.com/ProcessValidator/ServiceAccountSchema/V1" xmlns:ns3="http://xmlns.tigo.com/ParameterType/V2" xmlns:ns4="http://tigo.com/enterprise/business/entities/order/v1/schema" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns5="http://xmlns.tigo.com/ResponseHeader/V3" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:ns6="http://xmlns.tigo.com/ProcessValidator/StatusSchema/V1" xmlns:tns="http://tigo.com/enterprise/business/task/OrderBroker/v1/PVSProcess" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns8="http://tigo.com/enterprise/resources/GeneralRequest/v1/schema" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns12="http://xmlns.tigo.com/ProcessValidator/RoleSchema/V1" xmlns:sch="http://tigo.com/enterprise/business/task/OrderBroker/v1/schema" xmlns:ns14="http:/xmlns.tigo.com/ProcessValidator/ProcessDetailsSchema/V1" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:ns19="http://xmlns.tigo.com/RequestHeader/V3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xtcpv="http://xmlns.tigo.com/ProcessValidator/ValidateRequest" xmlns:grs="http://tigo.com/enterprise/resources/GeneralResponse/v1/schema" xmlns:ns7="http://tigo.com/enterprise/resources/parameters/simple/v1/schema" xmlns:ns10="http://tigo.com/enterprise/business/entities/notificationBasic/v1/schema" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:ns11="http://tigo.com/enterprise/business/entities/client/basic/v1/schema" xmlns:ns16="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:xpc="http:/xmlns.tigo.com/ProcessValidator/ConfirmValidationRequest" xmlns:xtccv="http://xmlns.tigo.com/ProcessValidator/ValidatorGeneralResponse" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns13="http://tigo.com/enterprise/business/task/OrderBroker/v1/SendOrderProcess" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" xmlns:ns15="http://xmlns.tigo.com/ProcessValidator/RuleSchema/V1" exclude-result-prefixes="xsl xsi ns1 xtcpg ns18 xtcpv1 ns9 ns20 ns2 ns21 ns0 ns17 ns3 ns4 ns5 ns6 tns ns8 xsd ns12 sch ns14 ns19 xtcpv grs ns7 ns10 soap ns11 ns16 wsdl mime xpc xtccv ns13 ns15 bpm ora socket mhdr dvm xdk bpws xp20 bpel oraext hwf med ids xref ldap">
   <xsl:param name="InvokePVSValidateInput.part"/>
   <xsl:template match="/">
      <xtcpv:ValidateRequest>
         <ns19:RequestHeader>
            <ns19:GeneralConsumerInformation>
               <xsl:if test="$InvokePVSValidateInput.part/xtcpv:ValidateRequest/ns19:RequestHeader/ns19:GeneralConsumerInformation/ns19:consumerID">
                  <ns19:consumerID>
                     <xsl:value-of select="$InvokePVSValidateInput.part/xtcpv:ValidateRequest/ns19:RequestHeader/ns19:GeneralConsumerInformation/ns19:consumerID"/>
                  </ns19:consumerID>
               </xsl:if>
               <xsl:if test="$InvokePVSValidateInput.part/xtcpv:ValidateRequest/ns19:RequestHeader/ns19:GeneralConsumerInformation/ns19:transactionID">
                  <ns19:transactionID>
                     <xsl:value-of select="$InvokePVSValidateInput.part/xtcpv:ValidateRequest/ns19:RequestHeader/ns19:GeneralConsumerInformation/ns19:transactionID"/>
                  </ns19:transactionID>
               </xsl:if>
               <xsl:if test="$InvokePVSValidateInput.part/xtcpv:ValidateRequest/ns19:RequestHeader/ns19:GeneralConsumerInformation/ns19:country">
                  <ns19:country>
                     <xsl:value-of select="$InvokePVSValidateInput.part/xtcpv:ValidateRequest/ns19:RequestHeader/ns19:GeneralConsumerInformation/ns19:country"/>
                  </ns19:country>
               </xsl:if>
               <ns19:correlationID>
                  <xsl:value-of select="/sch:SubmitOrder_Request/GeneralRequest/utiReference"/>
               </ns19:correlationID>
            </ns19:GeneralConsumerInformation>
         </ns19:RequestHeader>
         <xtcpv:requestBody>
            <xtcpv:processID>
               <xsl:value-of select="$InvokePVSValidateInput.part/xtcpv:ValidateRequest/xtcpv:requestBody/xtcpv:processID"/>
            </xtcpv:processID>
            <xsl:if test="$InvokePVSValidateInput.part/xtcpv:ValidateRequest/xtcpv:requestBody/xtcpv:token">
               <xtcpv:token>
                  <xsl:value-of select="$InvokePVSValidateInput.part/xtcpv:ValidateRequest/xtcpv:requestBody/xtcpv:token"/>
               </xtcpv:token>
            </xsl:if>
            <xsl:if test="$InvokePVSValidateInput.part/xtcpv:ValidateRequest/xtcpv:requestBody/xtcpv:requestID">
               <xtcpv:requestID>
                  <xtcpv:id>
                     <xsl:value-of select="$InvokePVSValidateInput.part/xtcpv:ValidateRequest/xtcpv:requestBody/xtcpv:requestID/xtcpv:id"/>
                  </xtcpv:id>
                  <xtcpv:idType>
                     <xsl:value-of select="$InvokePVSValidateInput.part/xtcpv:ValidateRequest/xtcpv:requestBody/xtcpv:requestID/xtcpv:idType"/>
                  </xtcpv:idType>
               </xtcpv:requestID>
            </xsl:if>
            <xtcpv:client>
               <xsl:if test="$InvokePVSValidateInput.part/xtcpv:ValidateRequest/xtcpv:requestBody/xtcpv:client/ns21:id">
                  <ns21:id>
                     <xsl:value-of select="$InvokePVSValidateInput.part/xtcpv:ValidateRequest/xtcpv:requestBody/xtcpv:client/ns21:id"/>
                  </ns21:id>
               </xsl:if>
               <xsl:if test="$InvokePVSValidateInput.part/xtcpv:ValidateRequest/xtcpv:requestBody/xtcpv:client/ns21:idType">
                  <ns21:idType>
                     <xsl:value-of select="$InvokePVSValidateInput.part/xtcpv:ValidateRequest/xtcpv:requestBody/xtcpv:client/ns21:idType"/>
                  </ns21:idType>
               </xsl:if>
            </xtcpv:client>
            <xsl:if test="$InvokePVSValidateInput.part/xtcpv:ValidateRequest/xtcpv:requestBody/ns18:product">
               <ns18:product>
                  <code>
                     <xsl:value-of select="$InvokePVSValidateInput.part/xtcpv:ValidateRequest/xtcpv:requestBody/ns18:product/code"/>
                  </code>
                  <name>
                     <xsl:value-of select="$InvokePVSValidateInput.part/xtcpv:ValidateRequest/xtcpv:requestBody/ns18:product/name"/>
                  </name>
               </ns18:product>
            </xsl:if>
            <xsl:if test="$InvokePVSValidateInput.part/xtcpv:ValidateRequest/xtcpv:requestBody/ns20:billingAccount">
               <ns20:billingAccount>
                  <ns20:billingAccountID>
                     <xsl:value-of select="$InvokePVSValidateInput.part/xtcpv:ValidateRequest/xtcpv:requestBody/ns20:billingAccount/ns20:billingAccountID"/>
                  </ns20:billingAccountID>
                  <ns20:legacyBillingID>
                     <xsl:value-of select="$InvokePVSValidateInput.part/xtcpv:ValidateRequest/xtcpv:requestBody/ns20:billingAccount/ns20:legacyBillingID"/>
                  </ns20:legacyBillingID>
               </ns20:billingAccount>
            </xsl:if>
            <xsl:if test="$InvokePVSValidateInput.part/xtcpv:ValidateRequest/xtcpv:requestBody/ns17:serviceAccount">
               <ns17:serviceAccount>
                  <ns17:serviceAccountID>
                     <xsl:value-of select="$InvokePVSValidateInput.part/xtcpv:ValidateRequest/xtcpv:requestBody/ns17:serviceAccount/ns17:serviceAccountID"/>
                  </ns17:serviceAccountID>
                  <ns17:legacyServiceID>
                     <xsl:value-of select="$InvokePVSValidateInput.part/xtcpv:ValidateRequest/xtcpv:requestBody/ns17:serviceAccount/ns17:legacyServiceID"/>
                  </ns17:legacyServiceID>
               </ns17:serviceAccount>
            </xsl:if>
            <xsl:if test="$InvokePVSValidateInput.part/xtcpv:ValidateRequest/xtcpv:requestBody/ns0:additionals">
               <ns0:additionals>
                  <xsl:for-each select="$InvokePVSValidateInput.part/xtcpv:ValidateRequest/xtcpv:requestBody/ns0:additionals/ns0:additional">
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
