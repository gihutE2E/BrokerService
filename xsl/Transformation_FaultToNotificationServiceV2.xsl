<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:ns0="http://tigo.com/enterprise/serviceEntity/provisioning/dataChangeRequest/v1/schema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:ns1="http://tigo.com/enterprise/businessEntity/charge/v1/schema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns15="http://tigo.com/enterprise/resources/GeneralResponse/v1/schema" xmlns:ns13="http://tigo.com/enterprise/resources/parameters/simple/v1/schema" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns5="http://tigo.com/commons/resources/additional/v1/schema" xmlns:ns16="http://tigo.com/enterprise/business/entities/notificationBasic/v1/schema" xmlns:ns17="http://tigo.com/enterprise/business/entities/client/basic/v1/schema" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:cmn="http://tigo.com/commons/generalResponse/v1/schema" xmlns:sch="http://tigo.com/enterprise/serviceEntity/provisioning/orderRequest/v1/schema" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ns10="http://tigo.com/enterprise/taskService/provideProcess/schema" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:nflt="http://tigo.com/commons/generalResponse/notify/v1/schema" xmlns:ns6="http://tigo.com/enterprise/businessEntity/product/basic/v1/schema" xmlns:ns8="http://tigo.com/enterprise/serviceEntity/provisioning/fieldService/v1/schema" xmlns:ns11="http://tigo.com/enterprise/business/entities/order/v1/schema" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns2="http://tigo.com/serviceEntity/provisioning/offeringDetail/v1/schema" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns3="http://tigo.com/enterprise/businessEntity/client/basic/v1/schema" xmlns:ns9="http://tigo.com/enterprise/serviceEntity/provisioning/provideProcess" xmlns:tns="http://tigo.com/enterprise/serviceEntity/provisioning/orderProcess" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:ns12="http://tigo.com/enterprise/business/task/Notification/v1/schema" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns18="http://tigo.com/enterprise/business/task/Notification/v1" xmlns:ns4="http://tigo.com/commons/basicRequest/v1/schema" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ns14="http://tigo.com/enterprise/resources/GeneralRequest/v1/schema" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns7="http://tigo.com/enterprise/serviceEntity/provisioning/order/v1/schema" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns0 ns1 ns15 ns13 ns5 ns16 ns17 soap cmn sch wsdl ns10 nflt ns6 ns8 ns11 ns2 ns3 ns9 tns ns12 ns4 ns14 xsd ns7 ns18 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:param name="notifyGeneralResponse"/>
   <xsl:template match="/">
      <ns12:Notify_Request>
         <GeneralRequest>
            <xsl:if test="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/GeneralRequest/applicationID">
               <applicationID>
                  <xsl:value-of select="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/GeneralRequest/applicationID"/>
               </applicationID>
            </xsl:if>
            <xsl:if test="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/GeneralRequest/applicationTransactionID">
               <applicationTransactionID>
                  <xsl:value-of select="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/GeneralRequest/applicationTransactionID"/>
               </applicationTransactionID>
            </xsl:if>
            <xsl:if test="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/GeneralRequest/utiReference">
               <utiReference>
                  <xsl:value-of select="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/GeneralRequest/utiReference"/>
               </utiReference>
            </xsl:if>
            <parameters>
               <xsl:for-each select="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/GeneralRequest/parameters/parameter">
                  <parameter>
                     <xsl:if test="name">
                        <name>
                           <xsl:value-of select="name"/>
                        </name>
                     </xsl:if>
                     <xsl:if test="value">
                        <value>
                           <xsl:value-of select="value"/>
                        </value>
                     </xsl:if>
                  </parameter>
               </xsl:for-each>
            </parameters>
         </GeneralRequest>
         <Order>
            <orderID>
               <xsl:value-of select="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/Order/orderID"/>
            </orderID>
            <xsl:if test="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/Order/orderStatus">
               <orderStatus>
                  <xsl:if test="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/Order/orderStatus/status">
                     <status>
                        <xsl:value-of select="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/Order/orderStatus/status"/>
                     </status>
                  </xsl:if>
                  <xsl:if test="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/Order/orderStatus/code">
                     <code>
                        <xsl:value-of select="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/Order/orderStatus/code"/>
                     </code>
                  </xsl:if>
                  <xsl:if test="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/Order/orderStatus/codeType">
                     <codeType>
                        <xsl:value-of select="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/Order/orderStatus/codeType"/>
                     </codeType>
                  </xsl:if>
                  <parameters>
                     <xsl:for-each select="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/Order/orderStatus/parameters/parameter">
                        <parameter>
                           <xsl:if test="name">
                              <name>
                                 <xsl:value-of select="name"/>
                              </name>
                           </xsl:if>
                           <xsl:if test="value">
                              <value>
                                 <xsl:value-of select="value"/>
                              </value>
                           </xsl:if>
                        </parameter>
                     </xsl:for-each>
                  </parameters>
               </orderStatus>
            </xsl:if>
            <orderSpecification>
               <xsl:if test="/sch:BasicOrderRequest/ServiceOffer/order/productOffering/ns7:order/ns5:additionals/additional/name = &quot;ORDER_REFERENCE_ID&quot;">
                  <orderReferenceID>
                     <xsl:value-of select="/sch:BasicOrderRequest/ServiceOffer/order/productOffering/ns7:order/ns5:additionals/additional[name = &quot;ORDER_REFERENCE_ID&quot;]/value"/>
                  </orderReferenceID>
               </xsl:if>
               <xsl:if test="/sch:BasicOrderRequest/ServiceOffer/order/productOffering/ns7:order/ns5:additionals/additional/name = &quot;ORDER_REFERENCE_TYPE&quot;">
                  <orderReferenceType>
                     <xsl:value-of select="/sch:BasicOrderRequest/ServiceOffer/order/productOffering/ns7:order/ns5:additionals/additional[name = &quot;ORDER_REFERENCE_TYPE&quot;]/value"/>
                  </orderReferenceType>
               </xsl:if>
               <xsl:if test="/sch:BasicOrderRequest/ServiceOffer/order/productOffering/ns7:order/ns5:additionals/additional/name = &quot;ACTION&quot;">
                  <action>
                     <xsl:value-of select="/sch:BasicOrderRequest/ServiceOffer/order/productOffering/ns7:order/ns5:additionals/additional[name = &quot;ACTION&quot;]/value"/>
                  </action>
               </xsl:if>
               <xsl:if test="/sch:BasicOrderRequest/ServiceOffer/order/productOffering/ns7:order/ns5:additionals/additional/name = &quot;EVENT_REFERENCE&quot;">
                  <eventReference>
                     <xsl:value-of select="/sch:BasicOrderRequest/ServiceOffer/order/productOffering/ns7:order/ns5:additionals/additional[name = &quot;EVENT_REFERENCE&quot;]/value"/>
                  </eventReference>
               </xsl:if>
               <xsl:if test="/sch:BasicOrderRequest/ServiceOffer/order/productOffering/ns7:order/ns5:additionals/additional/name = &quot;SERVICE_CODE&quot;">
                  <serviceCode>
                     <xsl:value-of select="/sch:BasicOrderRequest/ServiceOffer/order/productOffering/ns7:order/ns5:additionals/additional[name = &quot;SERVICE_CODE&quot;]/value"/>
                  </serviceCode>
               </xsl:if>
               <dateTimeReference>
                  <xsl:value-of select="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/Order/orderSpecification/dateTimeReference"/>
               </dateTimeReference>
               <description>
                  <xsl:value-of select="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/Order/orderSpecification/description"/>
               </description>
               <xsl:if test="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/Order/orderSpecification/executionDetails">
                  <executionDetails>
                     <xsl:if test="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/Order/orderSpecification/executionDetails/startCondition">
                        <startCondition>
                           <xsl:value-of select="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/Order/orderSpecification/executionDetails/startCondition"/>
                        </startCondition>
                     </xsl:if>
                     <xsl:if test="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/Order/orderSpecification/executionDetails/expirationDateTime">
                        <expirationDateTime>
                           <xsl:value-of select="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/Order/orderSpecification/executionDetails/expirationDateTime"/>
                        </expirationDateTime>
                     </xsl:if>
                     <parameters>
                        <xsl:for-each select="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/Order/orderSpecification/executionDetails/parameters/parameter">
                           <parameter>
                              <xsl:if test="name">
                                 <name>
                                    <xsl:value-of select="name"/>
                                 </name>
                              </xsl:if>
                              <xsl:if test="value">
                                 <value>
                                    <xsl:value-of select="value"/>
                                 </value>
                              </xsl:if>
                           </parameter>
                        </xsl:for-each>
                     </parameters>
                  </executionDetails>
               </xsl:if>
               <xsl:if test="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/Order/orderSpecification/notification">
                  <notification>
                     <xsl:if test="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/Order/orderSpecification/notification/sender">
                        <sender>
                           <xsl:value-of select="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/Order/orderSpecification/notification/sender"/>
                        </sender>
                     </xsl:if>
                     <xsl:if test="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/Order/orderSpecification/notification/notificationType">
                        <notificationType>
                           <xsl:value-of select="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/Order/orderSpecification/notification/notificationType"/>
                        </notificationType>
                     </xsl:if>
                     <xsl:if test="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/Order/orderSpecification/notification/eventReference">
                        <eventReference>
                           <xsl:value-of select="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/Order/orderSpecification/notification/eventReference"/>
                        </eventReference>
                     </xsl:if>
                     <xsl:if test="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/Order/orderSpecification/notification/serviceCode">
                        <serviceCode>
                           <xsl:value-of select="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/Order/orderSpecification/notification/serviceCode"/>
                        </serviceCode>
                     </xsl:if>
                     <xsl:if test="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/Order/orderSpecification/notification/dateTimeReference">
                        <dateTimeReference>
                           <xsl:value-of select="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/Order/orderSpecification/notification/dateTimeReference"/>
                        </dateTimeReference>
                     </xsl:if>
                     <xsl:if test="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/Order/orderSpecification/notification/notificationReference">
                        <notificationReference>
                           <xsl:value-of select="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/Order/orderSpecification/notification/notificationReference"/>
                        </notificationReference>
                     </xsl:if>
                     <xsl:if test="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/Order/orderSpecification/notification/notificationReferenceType">
                        <notificationReferenceType>
                           <xsl:value-of select="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/Order/orderSpecification/notification/notificationReferenceType"/>
                        </notificationReferenceType>
                     </xsl:if>
                     <parameters>
                        <xsl:for-each select="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/Order/orderSpecification/notification/parameters/parameter">
                           <parameter>
                              <xsl:if test="name">
                                 <name>
                                    <xsl:value-of select="name"/>
                                 </name>
                              </xsl:if>
                              <xsl:if test="value">
                                 <value>
                                    <xsl:value-of select="value"/>
                                 </value>
                              </xsl:if>
                           </parameter>
                        </xsl:for-each>
                     </parameters>
                  </notification>
               </xsl:if>
               <xsl:if test="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/Order/orderSpecification/parameters">
                  <parameters>
                     <xsl:for-each select="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/Order/orderSpecification/parameters/parameter">
                        <parameter>
                           <xsl:if test="name">
                              <name>
                                 <xsl:value-of select="name"/>
                              </name>
                           </xsl:if>
                           <xsl:if test="value">
                              <value>
                                 <xsl:value-of select="value"/>
                              </value>
                           </xsl:if>
                        </parameter>
                     </xsl:for-each>
                  </parameters>
               </xsl:if>
            </orderSpecification>
            <xsl:if test="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/Order/client">
               <client>
                  <xsl:if test="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/Order/client/ID">
                     <ID>
                        <xsl:value-of select="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/Order/client/ID"/>
                     </ID>
                  </xsl:if>
                  <xsl:if test="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/Order/client/IDType">
                     <IDType>
                        <xsl:value-of select="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/Order/client/IDType"/>
                     </IDType>
                  </xsl:if>
                  <parameters>
                     <xsl:for-each select="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/Order/client/parameters/parameter">
                        <parameter>
                           <xsl:if test="name">
                              <name>
                                 <xsl:value-of select="name"/>
                              </name>
                           </xsl:if>
                           <xsl:if test="value">
                              <value>
                                 <xsl:value-of select="value"/>
                              </value>
                           </xsl:if>
                        </parameter>
                     </xsl:for-each>
                  </parameters>
               </client>
            </xsl:if>
            <OrderContent>
               <content>
                  <xsl:if test="/sch:BasicOrderRequest/ServiceOffer/order/productOffering/ns7:order/ns5:additionals/additional/name = 'CONTENT_TYPE'">
                     <contentType>
                        <xsl:value-of select="/sch:BasicOrderRequest/ServiceOffer/order/productOffering/ns7:order/ns5:additionals/additional[name='CONTENT_TYPE']/value"/>
                     </contentType>
                  </xsl:if>
                  <xsl:if test="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/Order/OrderContent/content/parameters">
                     <parameters>
                        <xsl:for-each select="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/Order/OrderContent/content/parameters/parameter">
                           <parameter>
                              <xsl:if test="name">
                                 <name>
                                    <xsl:value-of select="name"/>
                                 </name>
                              </xsl:if>
                              <xsl:if test="value">
                                 <value>
                                    <xsl:value-of select="value"/>
                                 </value>
                              </xsl:if>
                           </parameter>
                        </xsl:for-each>
                     </parameters>
                  </xsl:if>
               </content>
            </OrderContent>
            <xsl:if test="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/Order/items">
               <items>
                  <xsl:for-each select="$notifyGeneralResponse/nflt:GeneralResponse/ns12:Notify_Request/Order/items/item">
                     <item>
                        <xsl:if test="itemID">
                           <itemID>
                              <xsl:value-of select="itemID"/>
                           </itemID>
                        </xsl:if>
                        <itemStatus>
                           <xsl:if test="itemStatus/status">
                              <status>
                                 <xsl:value-of select="itemStatus/status"/>
                              </status>
                           </xsl:if>
                           <xsl:if test="itemStatus/code">
                              <code>
                                 <xsl:value-of select="itemStatus/code"/>
                              </code>
                           </xsl:if>
                           <xsl:if test="itemStatus/codeType">
                              <codeType>
                                 <xsl:value-of select="itemStatus/codeType"/>
                              </codeType>
                           </xsl:if>
                           <parameters>
                              <xsl:for-each select="itemStatus/parameters/parameter">
                                 <parameter>
                                    <xsl:if test="name">
                                       <name>
                                          <xsl:value-of select="name"/>
                                       </name>
                                    </xsl:if>
                                    <xsl:if test="value">
                                       <value>
                                          <xsl:value-of select="value"/>
                                       </value>
                                    </xsl:if>
                                 </parameter>
                              </xsl:for-each>
                           </parameters>
                        </itemStatus>
                        <Specification>
                           <xsl:if test="Specification/orderReferenceID">
                              <orderReferenceID>
                                 <xsl:value-of select="Specification/orderReferenceID"/>
                              </orderReferenceID>
                           </xsl:if>
                           <xsl:if test="Specification/orderReferenceType">
                              <orderReferenceType>
                                 <xsl:value-of select="Specification/orderReferenceType"/>
                              </orderReferenceType>
                           </xsl:if>
                           <xsl:if test="Specification/action">
                              <action>
                                 <xsl:value-of select="Specification/action"/>
                              </action>
                           </xsl:if>
                           <xsl:if test="Specification/eventReference">
                              <eventReference>
                                 <xsl:value-of select="Specification/eventReference"/>
                              </eventReference>
                           </xsl:if>
                           <xsl:if test="Specification/serviceCode">
                              <serviceCode>
                                 <xsl:value-of select="Specification/serviceCode"/>
                              </serviceCode>
                           </xsl:if>
                           <xsl:if test="Specification/dateTimeReference">
                              <dateTimeReference>
                                 <xsl:value-of select="Specification/dateTimeReference"/>
                              </dateTimeReference>
                           </xsl:if>
                           <xsl:if test="Specification/description">
                              <description>
                                 <xsl:value-of select="Specification/description"/>
                              </description>
                           </xsl:if>
                           <executionDetails>
                              <xsl:if test="Specification/executionDetails/startCondition">
                                 <startCondition>
                                    <xsl:value-of select="Specification/executionDetails/startCondition"/>
                                 </startCondition>
                              </xsl:if>
                              <xsl:if test="Specification/executionDetails/expirationDateTime">
                                 <expirationDateTime>
                                    <xsl:value-of select="Specification/executionDetails/expirationDateTime"/>
                                 </expirationDateTime>
                              </xsl:if>
                           </executionDetails>
                           <notification>
                              <xsl:if test="Specification/notification/sender">
                                 <sender>
                                    <xsl:value-of select="Specification/notification/sender"/>
                                 </sender>
                              </xsl:if>
                              <xsl:if test="Specification/notification/notificationType">
                                 <notificationType>
                                    <xsl:value-of select="Specification/notification/notificationType"/>
                                 </notificationType>
                              </xsl:if>
                              <xsl:if test="Specification/notification/eventReference">
                                 <eventReference>
                                    <xsl:value-of select="Specification/notification/eventReference"/>
                                 </eventReference>
                              </xsl:if>
                              <xsl:if test="Specification/notification/serviceCode">
                                 <serviceCode>
                                    <xsl:value-of select="Specification/notification/serviceCode"/>
                                 </serviceCode>
                              </xsl:if>
                              <xsl:if test="Specification/notification/dateTimeReference">
                                 <dateTimeReference>
                                    <xsl:value-of select="Specification/notification/dateTimeReference"/>
                                 </dateTimeReference>
                              </xsl:if>
                              <xsl:if test="Specification/notification/notificationReference">
                                 <notificationReference>
                                    <xsl:value-of select="Specification/notification/notificationReference"/>
                                 </notificationReference>
                              </xsl:if>
                              <xsl:if test="Specification/notification/notificationReferenceType">
                                 <notificationReferenceType>
                                    <xsl:value-of select="Specification/notification/notificationReferenceType"/>
                                 </notificationReferenceType>
                              </xsl:if>
                           </notification>
                           <parameters>
                              <xsl:for-each select="Specification/parameters/parameter">
                                 <parameter>
                                    <xsl:if test="name">
                                       <name>
                                          <xsl:value-of select="name"/>
                                       </name>
                                    </xsl:if>
                                    <xsl:if test="value">
                                       <value>
                                          <xsl:value-of select="value"/>
                                       </value>
                                    </xsl:if>
                                 </parameter>
                              </xsl:for-each>
                           </parameters>
                        </Specification>
                        <client>
                           <xsl:if test="client/ID">
                              <ID>
                                 <xsl:value-of select="client/ID"/>
                              </ID>
                           </xsl:if>
                           <xsl:if test="client/IDType">
                              <IDType>
                                 <xsl:value-of select="client/IDType"/>
                              </IDType>
                           </xsl:if>
                           <parameters>
                              <xsl:for-each select="client/parameters/parameter">
                                 <parameter>
                                    <xsl:if test="name">
                                       <name>
                                          <xsl:value-of select="name"/>
                                       </name>
                                    </xsl:if>
                                    <xsl:if test="value">
                                       <value>
                                          <xsl:value-of select="value"/>
                                       </value>
                                    </xsl:if>
                                 </parameter>
                              </xsl:for-each>
                           </parameters>
                        </client>
                        <itemContent>
                           <xsl:for-each select="itemContent/content">
                              <content>
                                 <xsl:if test="contentType">
                                    <contentType>
                                       <xsl:value-of select="contentType"/>
                                    </contentType>
                                 </xsl:if>
                              </content>
                           </xsl:for-each>
                        </itemContent>
                     </item>
                  </xsl:for-each>
               </items>
            </xsl:if>
         </Order>
      </ns12:Notify_Request>
   </xsl:template>
</xsl:stylesheet>
