<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ns6="http://tigo.com/enterprise/business/task/ServiceRequestTrace/v1" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns4="http://tigo.com/enterprise/resources/parameters/simple/v1/schema" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:grs="http://tigo.com/enterprise/resources/GeneralResponse/v1/schema" xmlns:ns0="http://tigo.com/enterprise/business/entities/notificationBasic/v1/schema" xmlns:ns2="http://tigo.com/enterprise/business/entities/client/basic/v1/schema" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:ns5="http://tigo.com/enterprise/business/task/ServiceRequestTrace/v1/schema" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns1="http://tigo.com/enterprise/business/entities/order/v1/schema" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ns3="http://tigo.com/enterprise/resources/GeneralRequest/v1/schema" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:sch="http://tigo.com/enterprise/business/task/OrderBroker/v1/schema" xmlns:tns="http://tigo.com/enterprise/business/task/OrderBroker/v1/SendOrderProcess" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns4 grs ns0 ns2 soap wsdl ns1 ns3 xsd sch tns ns6 ns5 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:template match="/">
      <ns5:Set_Request>
         <GeneralRequest>
            <xsl:if test="/sch:SubmitOrder_Request/GeneralRequest/applicationID">
               <applicationID>
                  <xsl:value-of select="/sch:SubmitOrder_Request/GeneralRequest/applicationID"/>
               </applicationID>
            </xsl:if>
            <xsl:if test="/sch:SubmitOrder_Request/GeneralRequest/applicationTransactionID">
               <applicationTransactionID>
                  <xsl:value-of select="/sch:SubmitOrder_Request/GeneralRequest/applicationTransactionID"/>
               </applicationTransactionID>
            </xsl:if>
            <xsl:if test="/sch:SubmitOrder_Request/GeneralRequest/utiReference">
               <utiReference>
                  <xsl:value-of select="/sch:SubmitOrder_Request/GeneralRequest/utiReference"/>
               </utiReference>
            </xsl:if>
            <parameters>
               <xsl:for-each select="/sch:SubmitOrder_Request/GeneralRequest/parameters/parameter">
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
               <xsl:value-of select="/sch:SubmitOrder_Request/Order/orderSpecification/orderReferenceID"/>
            </orderID>
            <xsl:if test="/sch:SubmitOrder_Request/Order/orderStatus">
               <orderStatus>
                  <xsl:if test="/sch:SubmitOrder_Request/Order/orderStatus/status">
                     <status>
                        <xsl:value-of select="/sch:SubmitOrder_Request/Order/orderStatus/status"/>
                     </status>
                  </xsl:if>
                  <xsl:if test="/sch:SubmitOrder_Request/Order/orderStatus/code">
                     <code>
                        <xsl:value-of select="/sch:SubmitOrder_Request/Order/orderStatus/code"/>
                     </code>
                  </xsl:if>
                  <xsl:if test="/sch:SubmitOrder_Request/Order/orderStatus/codeType">
                     <codeType>
                        <xsl:value-of select="/sch:SubmitOrder_Request/Order/orderStatus/codeType"/>
                     </codeType>
                  </xsl:if>
                  <parameters>
                     <xsl:for-each select="/sch:SubmitOrder_Request/Order/orderStatus/parameters/parameter">
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
               <orderReferenceID>
                  <xsl:value-of select="/sch:SubmitOrder_Request/Order/orderSpecification/orderReferenceID"/>
               </orderReferenceID>
            </orderSpecification>
            <xsl:if test="/sch:SubmitOrder_Request/Order/client">
               <client>
                  <xsl:if test="/sch:SubmitOrder_Request/Order/client/ID">
                     <ID>
                        <xsl:value-of select="/sch:SubmitOrder_Request/Order/client/ID"/>
                     </ID>
                  </xsl:if>
                  <xsl:if test="/sch:SubmitOrder_Request/Order/client/IDType">
                     <IDType>
                        <xsl:value-of select="/sch:SubmitOrder_Request/Order/client/IDType"/>
                     </IDType>
                  </xsl:if>
                  <parameters>
                     <xsl:for-each select="/sch:SubmitOrder_Request/Order/client/parameters/parameter">
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
            <xsl:if test="/sch:SubmitOrder_Request/Order/OrderContent">
               <OrderContent>
                  <xsl:for-each select="/sch:SubmitOrder_Request/Order/OrderContent/content">
                     <content>
                        <xsl:if test="contentType">
                           <contentType>
                              <xsl:value-of select="contentType"/>
                           </contentType>
                        </xsl:if>
                        <parameters>
                           <xsl:for-each select="parameters/parameter">
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
                     </content>
                  </xsl:for-each>
               </OrderContent>
            </xsl:if>
            <xsl:if test="/sch:SubmitOrder_Request/Order/items">
               <items>
                  <xsl:for-each select="/sch:SubmitOrder_Request/Order/items/item">
                     <item>
                        <itemID>
                           <xsl:value-of select="/sch:SubmitOrder_Request/Order/orderID"/>
                        </itemID>
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
                              <parameters>
                                 <xsl:for-each select="Specification/executionDetails/parameters/parameter">
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
                              <parameters>
                                 <xsl:for-each select="Specification/notification/parameters/parameter">
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
                                 <parameters>
                                    <xsl:for-each select="parameters/parameter">
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
                              </content>
                           </xsl:for-each>
                        </itemContent>
                     </item>
                  </xsl:for-each>
               </items>
            </xsl:if>
         </Order>
      </ns5:Set_Request>
   </xsl:template>
</xsl:stylesheet>
