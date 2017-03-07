<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:ns0="http://tigo.com/enterprise/serviceEntity/provisioning/dataChangeRequest/v1/schema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:ns1="http://tigo.com/enterprise/businessEntity/charge/v1/schema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns5="http://tigo.com/commons/resources/additional/v1/schema" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:sch="http://tigo.com/enterprise/taskService/payment/v1/schema" xmlns:cmn="http://tigo.com/commons/generalResponse/v1/schema" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:tns="http://tigo.com/enterprise/serviceEntity/payment/paymentProcess" xmlns:ns4="http://tigo.com/enterprise/serviceEntity/provisioning/fieldService/v1/schema" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns2="http://tigo.com/enterprise/businessEntity/client/basic/v1/schema" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns3="http://tigo.com/commons/basicRequest/v1/schema" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns0 ns1 ns5 soap sch cmn wsdl tns ns4 ns2 ns3 xsd xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:template match="/">
      <sch:BasicPaymentRequest>
         <ns3:basicRequest>
            <externalApplicationID>
               <xsl:value-of select="/sch:BasicPaymentRequest/ns3:basicRequest/externalApplicationID"/>
            </externalApplicationID>
            <externalTransactionID>
               <xsl:value-of select="/sch:BasicPaymentRequest/ns3:basicRequest/externalTransactionID"/>
            </externalTransactionID>
            <utiReference>
               <xsl:value-of select="/sch:BasicPaymentRequest/ns3:basicRequest/utiReference"/>
            </utiReference>
         </ns3:basicRequest>
         <ns2:client>
            <ID>
               <xsl:value-of select="/sch:BasicPaymentRequest/ns2:client/ID"/>
            </ID>
            <idType>
               <xsl:value-of select="/sch:BasicPaymentRequest/ns2:client/idType"/>
            </idType>
         </ns2:client>
         <charges>
            <xsl:for-each select="/sch:BasicPaymentRequest/charges/ns1:charge">
               <ns1:charge>
                  <value>
                     <xsl:value-of select="value"/>
                  </value>
                  <wallet>
                     <xsl:value-of select="wallet"/>
                  </wallet>
                  <xsl:if test="walletID">
                     <walletID>
                        <xsl:value-of select="walletID"/>
                     </walletID>
                  </xsl:if>
                  <chargeReference>
                     <xsl:value-of select="chargeReference"/>
                  </chargeReference>
                  <xsl:if test="ns5:additionals/additional/name">
                     <ns5:additionals>
                        <xsl:for-each select="ns5:additionals/additional">
                           <additional>
                              <name>
                                 <xsl:value-of select="name"/>
                              </name>
                              <value>
                                 <xsl:value-of select="value"/>
                              </value>
                           </additional>
                        </xsl:for-each>
                     </ns5:additionals>
                  </xsl:if>
               </ns1:charge>
            </xsl:for-each>
         </charges>
         <xsl:if test="/sch:BasicPaymentRequest/dataChangeRequest_orders/ns0:dataChangeRequest/dataReference">
            <dataChangeRequest_orders>
               <xsl:for-each select="/sch:BasicPaymentRequest/dataChangeRequest_orders/ns0:dataChangeRequest">
                  <ns0:dataChangeRequest>
                     <dataReference>
                        <xsl:value-of select="dataReference"/>
                     </dataReference>
                     <dataValue>
                        <xsl:value-of select="dataValue"/>
                     </dataValue>
                  </ns0:dataChangeRequest>
               </xsl:for-each>
            </dataChangeRequest_orders>
         </xsl:if>
         <xsl:if test="/sch:BasicPaymentRequest/field_orders/ns4:fieldService/FIELDSERVICECODE">
            <field_orders>
               <xsl:for-each select="/sch:BasicPaymentRequest/field_orders/ns4:fieldService">
                  <ns4:fieldService>
                     <FIELDSERVICECODE>
                        <xsl:value-of select="FIELDSERVICECODE"/>
                     </FIELDSERVICECODE>
                     <executionDate>
                        <xsl:value-of select="executionDate"/>
                     </executionDate>
                     <priority>
                        <xsl:value-of select="priority"/>
                     </priority>
                     <xsl:if test="ns5:additionals/additional/name">
                        <ns5:additionals>
                           <xsl:for-each select="ns5:additionals/additional">
                              <additional>
                                 <name>
                                    <xsl:value-of select="name"/>
                                 </name>
                                 <value>
                                    <xsl:value-of select="value"/>
                                 </value>
                              </additional>
                           </xsl:for-each>
                        </ns5:additionals>
                     </xsl:if>
                  </ns4:fieldService>
               </xsl:for-each>
            </field_orders>
         </xsl:if>
      </sch:BasicPaymentRequest>
   </xsl:template>
</xsl:stylesheet>
