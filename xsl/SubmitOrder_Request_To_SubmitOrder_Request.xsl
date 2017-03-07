<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns4="http://tigo.com/enterprise/resources/parameters/simple/v1/schema" xmlns:grs="http://tigo.com/enterprise/resources/GeneralResponse/v1/schema" xmlns:ns0="http://tigo.com/enterprise/business/entities/notificationBasic/v1/schema" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:ns1="http://tigo.com/enterprise/business/entities/client/basic/v1/schema" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:tns="http://tigo.com/enterprise/business/task/OrderBroker/v1" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns2="http://tigo.com/enterprise/business/entities/order/v1/schema" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ns3="http://tigo.com/enterprise/resources/GeneralRequest/v1/schema" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:sch="http://tigo.com/enterprise/business/task/OrderBroker/v1/schema" xmlns:ns5="http://tigo.com/enterprise/business/task/OrderBroker/v1/SendOrderProcess" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns4 grs ns0 soap ns1 wsdl tns ns2 ns3 xsd sch ns5 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:template match="/">
      <sch:SubmitOrder_Request>
         <GeneralRequest>
            <xsl:if test="/sch:SubmitOrder_Request/GeneralRequest/applicationID != &quot;&quot;">
               <applicationID>
                  <xsl:value-of select="/sch:SubmitOrder_Request/GeneralRequest/applicationID"/>
               </applicationID>
            </xsl:if>
            <xsl:if test="/sch:SubmitOrder_Request/GeneralRequest/applicationTransactionID != &quot;&quot;">
               <applicationTransactionID>
                  <xsl:value-of select="/sch:SubmitOrder_Request/GeneralRequest/applicationTransactionID"/>
               </applicationTransactionID>
            </xsl:if>
            <xsl:if test="/sch:SubmitOrder_Request/GeneralRequest/utiReference != &quot;&quot;">
               <utiReference>
                  <xsl:value-of select="/sch:SubmitOrder_Request/GeneralRequest/utiReference"/>
               </utiReference>
            </xsl:if>
            <parameters>
               <xsl:for-each select="/sch:SubmitOrder_Request/GeneralRequest/parameters/parameter">
                  <parameter>
                     <xsl:if test="name != &quot;&quot;">
                        <name>
                           <xsl:value-of select="name"/>
                        </name>
                     </xsl:if>
                     <xsl:if test="value != &quot;&quot;">
                        <value>
                           <xsl:value-of select="value"/>
                        </value>
                     </xsl:if>
                  </parameter>
               </xsl:for-each>
            </parameters>
         </GeneralRequest>
         <Order>
            <xsl:if test="/sch:SubmitOrder_Request/Order/orderID != &quot;&quot;">
               <orderID>
                  <xsl:value-of select="/sch:SubmitOrder_Request/Order/orderID"/>
               </orderID>
            </xsl:if>
            <orderStatus>
               <xsl:if test="/sch:SubmitOrder_Request/Order/orderStatus/status != &quot;&quot;">
                  <status>
                     <xsl:value-of select="/sch:SubmitOrder_Request/Order/orderStatus/status"/>
                  </status>
               </xsl:if>
               <xsl:if test="/sch:SubmitOrder_Request/Order/orderStatus/code != &quot;&quot;">
                  <code>
                     <xsl:value-of select="/sch:SubmitOrder_Request/Order/orderStatus/code"/>
                  </code>
               </xsl:if>
               <xsl:if test="/sch:SubmitOrder_Request/Order/orderStatus/codeType != &quot;&quot;">
                  <codeType>
                     <xsl:value-of select="/sch:SubmitOrder_Request/Order/orderStatus/codeType"/>
                  </codeType>
               </xsl:if>
               <parameters>
                  <xsl:for-each select="/sch:SubmitOrder_Request/Order/orderStatus/parameters/parameter">
                     <parameter>
                        <xsl:if test="name != &quot;&quot;">
                           <name>
                              <xsl:value-of select="name"/>
                           </name>
                        </xsl:if>
                        <xsl:if test="value != &quot;&quot;">
                           <value>
                              <xsl:value-of select="value"/>
                           </value>
                        </xsl:if>
                     </parameter>
                  </xsl:for-each>
               </parameters>
            </orderStatus>
            <orderSpecification>
               <xsl:if test="/sch:SubmitOrder_Request/Order/orderSpecification/orderReferenceID != &quot;&quot;">
                  <orderReferenceID>
                     <xsl:value-of select="/sch:SubmitOrder_Request/Order/orderSpecification/orderReferenceID"/>
                  </orderReferenceID>
               </xsl:if>
               <xsl:if test="/sch:SubmitOrder_Request/Order/orderSpecification/orderReferenceType != &quot;&quot;">
                  <orderReferenceType>
                     <xsl:value-of select="/sch:SubmitOrder_Request/Order/orderSpecification/orderReferenceType"/>
                  </orderReferenceType>
               </xsl:if>
               <xsl:if test="/sch:SubmitOrder_Request/Order/orderSpecification/action != &quot;&quot;">
                  <action>
                     <xsl:value-of select="/sch:SubmitOrder_Request/Order/orderSpecification/action"/>
                  </action>
               </xsl:if>
               <xsl:if test="/sch:SubmitOrder_Request/Order/orderSpecification/eventReference != &quot;&quot;">
                  <eventReference>
                     <xsl:value-of select="/sch:SubmitOrder_Request/Order/orderSpecification/eventReference"/>
                  </eventReference>
               </xsl:if>
               <xsl:if test="/sch:SubmitOrder_Request/Order/orderSpecification/serviceCode != &quot;&quot;">
                  <serviceCode>
                     <xsl:value-of select="/sch:SubmitOrder_Request/Order/orderSpecification/serviceCode"/>
                  </serviceCode>
               </xsl:if>
               <xsl:if test="/sch:SubmitOrder_Request/Order/orderSpecification/dateTimeReference != &quot;&quot;">
                  <dateTimeReference>
                     <xsl:value-of select="/sch:SubmitOrder_Request/Order/orderSpecification/dateTimeReference"/>
                  </dateTimeReference>
               </xsl:if>
               <xsl:if test="/sch:SubmitOrder_Request/Order/orderSpecification/description != &quot;&quot;">
                  <description>
                     <xsl:value-of select="/sch:SubmitOrder_Request/Order/orderSpecification/description"/>
                  </description>
               </xsl:if>
               <executionDetails>
                  <xsl:if test="/sch:SubmitOrder_Request/Order/orderSpecification/executionDetails/startCondition != &quot;&quot;">
                     <startCondition>
                        <xsl:value-of select="/sch:SubmitOrder_Request/Order/orderSpecification/executionDetails/startCondition"/>
                     </startCondition>
                  </xsl:if>
                  <xsl:if test="/sch:SubmitOrder_Request/Order/orderSpecification/executionDetails/expirationDateTime != &quot;&quot;">
                     <expirationDateTime>
                        <xsl:value-of select="/sch:SubmitOrder_Request/Order/orderSpecification/executionDetails/expirationDateTime"/>
                     </expirationDateTime>
                  </xsl:if>
                  <parameters>
                     <xsl:for-each select="/sch:SubmitOrder_Request/Order/orderSpecification/executionDetails/parameters/parameter">
                        <parameter>
                           <xsl:if test="name != &quot;&quot;">
                              <name>
                                 <xsl:value-of select="name"/>
                              </name>
                           </xsl:if>
                           <xsl:if test="value != &quot;&quot;">
                              <value>
                                 <xsl:value-of select="value"/>
                              </value>
                           </xsl:if>
                        </parameter>
                     </xsl:for-each>
                  </parameters>
               </executionDetails>
               <notification>
                  <xsl:if test="/sch:SubmitOrder_Request/Order/orderSpecification/notification/sender != &quot;&quot;">
                     <sender>
                        <xsl:value-of select="/sch:SubmitOrder_Request/Order/orderSpecification/notification/sender"/>
                     </sender>
                  </xsl:if>
                  <xsl:if test="/sch:SubmitOrder_Request/Order/orderSpecification/notification/notificationType != &quot;&quot;">
                     <notificationType>
                        <xsl:value-of select="/sch:SubmitOrder_Request/Order/orderSpecification/notification/notificationType"/>
                     </notificationType>
                  </xsl:if>
                  <xsl:if test="/sch:SubmitOrder_Request/Order/orderSpecification/notification/eventReference != &quot;&quot;">
                     <eventReference>
                        <xsl:value-of select="/sch:SubmitOrder_Request/Order/orderSpecification/notification/eventReference"/>
                     </eventReference>
                  </xsl:if>
                  <xsl:if test="/sch:SubmitOrder_Request/Order/orderSpecification/notification/serviceCode != &quot;&quot;">
                     <serviceCode>
                        <xsl:value-of select="/sch:SubmitOrder_Request/Order/orderSpecification/notification/serviceCode"/>
                     </serviceCode>
                  </xsl:if>
                  <xsl:if test="/sch:SubmitOrder_Request/Order/orderSpecification/notification/dateTimeReference != &quot;&quot;">
                     <dateTimeReference>
                        <xsl:value-of select="/sch:SubmitOrder_Request/Order/orderSpecification/notification/dateTimeReference"/>
                     </dateTimeReference>
                  </xsl:if>
                  <xsl:if test="/sch:SubmitOrder_Request/Order/orderSpecification/notification/notificationReference != &quot;&quot;">
                     <notificationReference>
                        <xsl:value-of select="/sch:SubmitOrder_Request/Order/orderSpecification/notification/notificationReference"/>
                     </notificationReference>
                  </xsl:if>
                  <xsl:if test="/sch:SubmitOrder_Request/Order/orderSpecification/notification/notificationReferenceType != &quot;&quot;">
                     <notificationReferenceType>
                        <xsl:value-of select="/sch:SubmitOrder_Request/Order/orderSpecification/notification/notificationReferenceType"/>
                     </notificationReferenceType>
                  </xsl:if>
                  <parameters>
                     <xsl:for-each select="/sch:SubmitOrder_Request/Order/orderSpecification/notification/parameters/parameter">
                        <parameter>
                           <xsl:if test="name != &quot;&quot;">
                              <name>
                                 <xsl:value-of select="name"/>
                              </name>
                           </xsl:if>
                           <xsl:if test="value != &quot;&quot;">
                              <value>
                                 <xsl:value-of select="value"/>
                              </value>
                           </xsl:if>
                        </parameter>
                     </xsl:for-each>
                  </parameters>
               </notification>
               <parameters>
                  <xsl:for-each select="/sch:SubmitOrder_Request/Order/orderSpecification/parameters/parameter">
                     <parameter>
                        <xsl:if test="name != &quot;&quot;">
                           <name>
                              <xsl:value-of select="name"/>
                           </name>
                        </xsl:if>
                        <xsl:if test="value != &quot;&quot;">
                           <value>
                              <xsl:value-of select="value"/>
                           </value>
                        </xsl:if>
                     </parameter>
                  </xsl:for-each>
               </parameters>
            </orderSpecification>
            <client>
               <xsl:if test="/sch:SubmitOrder_Request/Order/client/ID != &quot;&quot;">
                  <ID>
                     <xsl:value-of select="/sch:SubmitOrder_Request/Order/client/ID"/>
                  </ID>
               </xsl:if>
               <xsl:if test="/sch:SubmitOrder_Request/Order/client/IDType != &quot;&quot;">
                  <IDType>
                     <xsl:value-of select="/sch:SubmitOrder_Request/Order/client/IDType"/>
                  </IDType>
               </xsl:if>
               <parameters>
                  <xsl:for-each select="/sch:SubmitOrder_Request/Order/client/parameters/parameter">
                     <parameter>
                        <xsl:if test="name != &quot;&quot;">
                           <name>
                              <xsl:value-of select="name"/>
                           </name>
                        </xsl:if>
                        <xsl:if test="value != &quot;&quot;">
                           <value>
                              <xsl:value-of select="value"/>
                           </value>
                        </xsl:if>
                     </parameter>
                  </xsl:for-each>
               </parameters>
            </client>
            <OrderContent>
               <xsl:for-each select="/sch:SubmitOrder_Request/Order/OrderContent/content">
                  <content>
                     <xsl:if test="contentType != &quot;&quot;">
                        <contentType>
                           <xsl:value-of select="contentType"/>
                        </contentType>
                     </xsl:if>
                     <parameters>
                        <xsl:for-each select="parameters/parameter">
                           <parameter>
                              <xsl:if test="name != &quot;&quot;">
                                 <name>
                                    <xsl:value-of select="name"/>
                                 </name>
                              </xsl:if>
                              <xsl:if test="value != &quot;&quot;">
                                 <value>
                                    <xsl:value-of select="value"/>
                                 </value>
                              </xsl:if>
                           </parameter>
                        </xsl:for-each>
                     </parameters>
                     <xsl:copy-of select="payload"/>
                  </content>
               </xsl:for-each>
            </OrderContent>
            <items>
               <xsl:for-each select="/sch:SubmitOrder_Request/Order/items/item">
                  <item>
                     <xsl:if test="itemID != &quot;&quot;">
                        <itemID>
                           <xsl:value-of select="itemID"/>
                        </itemID>
                     </xsl:if>
                     <itemStatus>
                        <xsl:if test="itemStatus/status != &quot;&quot;">
                           <status>
                              <xsl:value-of select="itemStatus/status"/>
                           </status>
                        </xsl:if>
                        <xsl:if test="itemStatus/code != &quot;&quot;">
                           <code>
                              <xsl:value-of select="itemStatus/code"/>
                           </code>
                        </xsl:if>
                        <xsl:if test="itemStatus/codeType != &quot;&quot;">
                           <codeType>
                              <xsl:value-of select="itemStatus/codeType"/>
                           </codeType>
                        </xsl:if>
                        <parameters>
                           <xsl:for-each select="itemStatus/parameters/parameter">
                              <parameter>
                                 <xsl:if test="name != &quot;&quot;">
                                    <name>
                                       <xsl:value-of select="name"/>
                                    </name>
                                 </xsl:if>
                                 <xsl:if test="value != &quot;&quot;">
                                    <value>
                                       <xsl:value-of select="value"/>
                                    </value>
                                 </xsl:if>
                              </parameter>
                           </xsl:for-each>
                        </parameters>
                     </itemStatus>
                     <Specification>
                        <xsl:if test="Specification/orderReferenceID != &quot;&quot;">
                           <orderReferenceID>
                              <xsl:value-of select="Specification/orderReferenceID"/>
                           </orderReferenceID>
                        </xsl:if>
                        <xsl:if test="Specification/orderReferenceType != &quot;&quot;">
                           <orderReferenceType>
                              <xsl:value-of select="Specification/orderReferenceType"/>
                           </orderReferenceType>
                        </xsl:if>
                        <xsl:if test="Specification/action != &quot;&quot;">
                           <action>
                              <xsl:value-of select="Specification/action"/>
                           </action>
                        </xsl:if>
                        <xsl:if test="Specification/eventReference != &quot;&quot;">
                           <eventReference>
                              <xsl:value-of select="Specification/eventReference"/>
                           </eventReference>
                        </xsl:if>
                        <xsl:if test="Specification/serviceCode != &quot;&quot;">
                           <serviceCode>
                              <xsl:value-of select="Specification/serviceCode"/>
                           </serviceCode>
                        </xsl:if>
                        <xsl:if test="Specification/dateTimeReference != &quot;&quot;">
                           <dateTimeReference>
                              <xsl:value-of select="Specification/dateTimeReference"/>
                           </dateTimeReference>
                        </xsl:if>
                        <xsl:if test="Specification/description != &quot;&quot;">
                           <description>
                              <xsl:value-of select="Specification/description"/>
                           </description>
                        </xsl:if>
                        <executionDetails>
                           <xsl:if test="Specification/executionDetails/startCondition != &quot;&quot;">
                              <startCondition>
                                 <xsl:value-of select="Specification/executionDetails/startCondition"/>
                              </startCondition>
                           </xsl:if>
                           <xsl:if test="Specification/executionDetails/expirationDateTime != &quot;&quot;">
                              <expirationDateTime>
                                 <xsl:value-of select="Specification/executionDetails/expirationDateTime"/>
                              </expirationDateTime>
                           </xsl:if>
                           <parameters>
                              <xsl:for-each select="Specification/executionDetails/parameters/parameter">
                                 <parameter>
                                    <xsl:if test="name != &quot;&quot;">
                                       <name>
                                          <xsl:value-of select="name"/>
                                       </name>
                                    </xsl:if>
                                    <xsl:if test="value != &quot;&quot;">
                                       <value>
                                          <xsl:value-of select="value"/>
                                       </value>
                                    </xsl:if>
                                 </parameter>
                              </xsl:for-each>
                           </parameters>
                        </executionDetails>
                        <notification>
                           <xsl:if test="Specification/notification/sender != &quot;&quot;">
                              <sender>
                                 <xsl:value-of select="Specification/notification/sender"/>
                              </sender>
                           </xsl:if>
                           <xsl:if test="Specification/notification/notificationType != &quot;&quot;">
                              <notificationType>
                                 <xsl:value-of select="Specification/notification/notificationType"/>
                              </notificationType>
                           </xsl:if>
                           <xsl:if test="Specification/notification/eventReference != &quot;&quot;">
                              <eventReference>
                                 <xsl:value-of select="Specification/notification/eventReference"/>
                              </eventReference>
                           </xsl:if>
                           <xsl:if test="Specification/notification/serviceCode != &quot;&quot;">
                              <serviceCode>
                                 <xsl:value-of select="Specification/notification/serviceCode"/>
                              </serviceCode>
                           </xsl:if>
                           <xsl:if test="Specification/notification/dateTimeReference != &quot;&quot;">
                              <dateTimeReference>
                                 <xsl:value-of select="Specification/notification/dateTimeReference"/>
                              </dateTimeReference>
                           </xsl:if>
                           <xsl:if test="Specification/notification/notificationReference != &quot;&quot;">
                              <notificationReference>
                                 <xsl:value-of select="Specification/notification/notificationReference"/>
                              </notificationReference>
                           </xsl:if>
                           <xsl:if test="Specification/notification/notificationReferenceType != &quot;&quot;">
                              <notificationReferenceType>
                                 <xsl:value-of select="Specification/notification/notificationReferenceType"/>
                              </notificationReferenceType>
                           </xsl:if>
                           <parameters>
                              <xsl:for-each select="Specification/notification/parameters/parameter">
                                 <parameter>
                                    <xsl:if test="name != &quot;&quot;">
                                       <name>
                                          <xsl:value-of select="name"/>
                                       </name>
                                    </xsl:if>
                                    <xsl:if test="value != &quot;&quot;">
                                       <value>
                                          <xsl:value-of select="value"/>
                                       </value>
                                    </xsl:if>
                                 </parameter>
                              </xsl:for-each>
                           </parameters>
                        </notification>
                        <parameters>
                           <xsl:for-each select="Specification/parameters/parameter">
                              <parameter>
                                 <xsl:if test="name != &quot;&quot;">
                                    <name>
                                       <xsl:value-of select="name"/>
                                    </name>
                                 </xsl:if>
                                 <xsl:if test="value != &quot;&quot;">
                                    <value>
                                       <xsl:value-of select="value"/>
                                    </value>
                                 </xsl:if>
                              </parameter>
                           </xsl:for-each>
                        </parameters>
                     </Specification>
                     <client>
                        <xsl:if test="client/ID != &quot;&quot;">
                           <ID>
                              <xsl:value-of select="client/ID"/>
                           </ID>
                        </xsl:if>
                        <xsl:if test="client/IDType != &quot;&quot;">
                           <IDType>
                              <xsl:value-of select="client/IDType"/>
                           </IDType>
                        </xsl:if>
                        <parameters>
                           <xsl:for-each select="client/parameters/parameter">
                              <parameter>
                                 <xsl:if test="name != &quot;&quot;">
                                    <name>
                                       <xsl:value-of select="name"/>
                                    </name>
                                 </xsl:if>
                                 <xsl:if test="value != &quot;&quot;">
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
                              <xsl:if test="contentType != &quot;&quot;">
                                 <contentType>
                                    <xsl:value-of select="contentType"/>
                                 </contentType>
                              </xsl:if>
                              <parameters>
                                 <xsl:for-each select="parameters/parameter">
                                    <parameter>
                                       <xsl:if test="name != &quot;&quot;">
                                          <name>
                                             <xsl:value-of select="name"/>
                                          </name>
                                       </xsl:if>
                                       <xsl:if test="value != &quot;&quot;">
                                          <value>
                                             <xsl:value-of select="value"/>
                                          </value>
                                       </xsl:if>
                                    </parameter>
                                 </xsl:for-each>
                              </parameters>
                              <xsl:copy-of select="payload"/>
                           </content>
                        </xsl:for-each>
                     </itemContent>
                  </item>
               </xsl:for-each>
            </items>
         </Order>
      </sch:SubmitOrder_Request>
   </xsl:template>
</xsl:stylesheet>
