<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns4="http://tigo.com/enterprise/resources/parameters/simple/v1/schema" xmlns:grs="http://tigo.com/enterprise/resources/GeneralResponse/v1/schema" xmlns:ns0="http://tigo.com/enterprise/business/entities/notificationBasic/v1/schema" xmlns:ns2="http://tigo.com/enterprise/business/entities/client/basic/v1/schema" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ns5="http://tigo.com/enterprise/business/task/OrderBroker/v1" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns1="http://tigo.com/enterprise/business/entities/order/v1/schema" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ns3="http://tigo.com/enterprise/resources/GeneralRequest/v1/schema" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:sch="http://tigo.com/enterprise/business/task/OrderBroker/v1/schema" xmlns:tns="http://tigo.com/enterprise/business/task/OrderBroker/v1/SendOrderProcess" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns4 grs ns0 ns2 soap wsdl ns1 ns3 xsd sch tns ns5 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:template match="/">
      <sch:SubmitOrder_Response>
         <GeneralResponse>
            <xsl:if test="/sch:SubmitOrder_Response/GeneralResponse/uti != &quot;&quot;">
               <uti>
                  <xsl:value-of select="/sch:SubmitOrder_Response/GeneralResponse/uti"/>
               </uti>
            </xsl:if>
            <xsl:if test="/sch:SubmitOrder_Response/GeneralResponse/status != &quot;&quot;">
               <status>
                  <xsl:value-of select="/sch:SubmitOrder_Response/GeneralResponse/status"/>
               </status>
            </xsl:if>
            <xsl:if test="/sch:SubmitOrder_Response/GeneralResponse/code != &quot;&quot;">
               <code>
                  <xsl:value-of select="/sch:SubmitOrder_Response/GeneralResponse/code"/>
               </code>
            </xsl:if>
            <xsl:if test="/sch:SubmitOrder_Response/GeneralResponse/codeType != &quot;&quot;">
               <codeType>
                  <xsl:value-of select="/sch:SubmitOrder_Response/GeneralResponse/codeType"/>
               </codeType>
            </xsl:if>
            <xsl:if test="/sch:SubmitOrder_Response/GeneralResponse/message != &quot;&quot;">
               <message>
                  <xsl:value-of select="/sch:SubmitOrder_Response/GeneralResponse/message"/>
               </message>
            </xsl:if>
         </GeneralResponse>
         <Order>
            <xsl:if test="/sch:SubmitOrder_Response/Order/orderID != &quot;&quot;">
               <orderID>
                  <xsl:value-of select="/sch:SubmitOrder_Response/Order/orderID"/>
               </orderID>
            </xsl:if>
            <xsl:if test="/sch:SubmitOrder_Response/Order/orderStatus/status">
               <orderStatus>
                  <xsl:if test="/sch:SubmitOrder_Response/Order/orderStatus/status != &quot;&quot;">
                     <status>
                        <xsl:value-of select="/sch:SubmitOrder_Response/Order/orderStatus/status"/>
                     </status>
                  </xsl:if>
                  <xsl:if test="/sch:SubmitOrder_Response/Order/orderStatus/code != &quot;&quot;">
                     <code>
                        <xsl:value-of select="/sch:SubmitOrder_Response/Order/orderStatus/code"/>
                     </code>
                  </xsl:if>
                  <xsl:if test="/sch:SubmitOrder_Response/Order/orderStatus/codeType != &quot;&quot;">
                     <codeType>
                        <xsl:value-of select="/sch:SubmitOrder_Response/Order/orderStatus/codeType"/>
                     </codeType>
                  </xsl:if>
                  <xsl:if test="/sch:SubmitOrder_Response/Order/orderStatus/parameters/parameter/name">
                     <parameters>
                        <xsl:for-each select="/sch:SubmitOrder_Response/Order/orderStatus/parameters/parameter">
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
                  </xsl:if>
               </orderStatus>
            </xsl:if>
            <xsl:if test="/sch:SubmitOrder_Response/Order/orderSpecification/orderReferenceID">
               <orderSpecification>
                  <xsl:if test="/sch:SubmitOrder_Response/Order/orderSpecification/orderReferenceID != &quot;&quot;">
                     <orderReferenceID>
                        <xsl:value-of select="/sch:SubmitOrder_Response/Order/orderSpecification/orderReferenceID"/>
                     </orderReferenceID>
                  </xsl:if>
                  <xsl:if test="/sch:SubmitOrder_Response/Order/orderSpecification/orderReferenceType != &quot;&quot;">
                     <orderReferenceType>
                        <xsl:value-of select="/sch:SubmitOrder_Response/Order/orderSpecification/orderReferenceType"/>
                     </orderReferenceType>
                  </xsl:if>
                  <xsl:if test="/sch:SubmitOrder_Response/Order/orderSpecification/action != &quot;&quot;">
                     <action>
                        <xsl:value-of select="/sch:SubmitOrder_Response/Order/orderSpecification/action"/>
                     </action>
                  </xsl:if>
                  <xsl:if test="/sch:SubmitOrder_Response/Order/orderSpecification/eventReference != &quot;&quot;">
                     <eventReference>
                        <xsl:value-of select="/sch:SubmitOrder_Response/Order/orderSpecification/eventReference"/>
                     </eventReference>
                  </xsl:if>
                  <xsl:if test="/sch:SubmitOrder_Response/Order/orderSpecification/serviceCode != &quot;&quot;">
                     <serviceCode>
                        <xsl:value-of select="/sch:SubmitOrder_Response/Order/orderSpecification/serviceCode"/>
                     </serviceCode>
                  </xsl:if>
                  <xsl:if test="/sch:SubmitOrder_Response/Order/orderSpecification/dateTimeReference != &quot;&quot;">
                     <dateTimeReference>
                        <xsl:value-of select="/sch:SubmitOrder_Response/Order/orderSpecification/dateTimeReference"/>
                     </dateTimeReference>
                  </xsl:if>
                  <xsl:if test="/sch:SubmitOrder_Response/Order/orderSpecification/description != &quot;&quot;">
                     <description>
                        <xsl:value-of select="/sch:SubmitOrder_Response/Order/orderSpecification/description"/>
                     </description>
                  </xsl:if>
                  <executionDetails>
                     <xsl:if test="/sch:SubmitOrder_Response/Order/orderSpecification/executionDetails/startCondition != &quot;&quot;">
                        <startCondition>
                           <xsl:value-of select="/sch:SubmitOrder_Response/Order/orderSpecification/executionDetails/startCondition"/>
                        </startCondition>
                     </xsl:if>
                     <xsl:if test="/sch:SubmitOrder_Response/Order/orderSpecification/executionDetails/expirationDateTime != &quot;&quot;">
                        <expirationDateTime>
                           <xsl:value-of select="/sch:SubmitOrder_Response/Order/orderSpecification/executionDetails/expirationDateTime"/>
                        </expirationDateTime>
                     </xsl:if>
                     <xsl:if test="/sch:SubmitOrder_Response/Order/orderSpecification/executionDetails/parameters/parameter/name">
                        <parameters>
                           <xsl:for-each select="/sch:SubmitOrder_Response/Order/orderSpecification/executionDetails/parameters/parameter">
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
                     </xsl:if>
                  </executionDetails>
                  <notification>
                     <xsl:if test="/sch:SubmitOrder_Response/Order/orderSpecification/notification/sender != &quot;&quot;">
                        <sender>
                           <xsl:value-of select="/sch:SubmitOrder_Response/Order/orderSpecification/notification/sender"/>
                        </sender>
                     </xsl:if>
                     <xsl:if test="/sch:SubmitOrder_Response/Order/orderSpecification/notification/notificationType != &quot;&quot;">
                        <notificationType>
                           <xsl:value-of select="/sch:SubmitOrder_Response/Order/orderSpecification/notification/notificationType"/>
                        </notificationType>
                     </xsl:if>
                     <xsl:if test="/sch:SubmitOrder_Response/Order/orderSpecification/notification/eventReference != &quot;&quot;">
                        <eventReference>
                           <xsl:value-of select="/sch:SubmitOrder_Response/Order/orderSpecification/notification/eventReference"/>
                        </eventReference>
                     </xsl:if>
                     <xsl:if test="/sch:SubmitOrder_Response/Order/orderSpecification/notification/serviceCode != &quot;&quot;">
                        <serviceCode>
                           <xsl:value-of select="/sch:SubmitOrder_Response/Order/orderSpecification/notification/serviceCode"/>
                        </serviceCode>
                     </xsl:if>
                     <xsl:if test="/sch:SubmitOrder_Response/Order/orderSpecification/notification/dateTimeReference != &quot;&quot;">
                        <dateTimeReference>
                           <xsl:value-of select="/sch:SubmitOrder_Response/Order/orderSpecification/notification/dateTimeReference"/>
                        </dateTimeReference>
                     </xsl:if>
                     <xsl:if test="/sch:SubmitOrder_Response/Order/orderSpecification/notification/notificationReference != &quot;&quot;">
                        <notificationReference>
                           <xsl:value-of select="/sch:SubmitOrder_Response/Order/orderSpecification/notification/notificationReference"/>
                        </notificationReference>
                     </xsl:if>
                     <xsl:if test="/sch:SubmitOrder_Response/Order/orderSpecification/notification/notificationReferenceType != &quot;&quot;">
                        <notificationReferenceType>
                           <xsl:value-of select="/sch:SubmitOrder_Response/Order/orderSpecification/notification/notificationReferenceType"/>
                        </notificationReferenceType>
                     </xsl:if>
                     <xsl:if test="/sch:SubmitOrder_Response/Order/orderSpecification/notification/parameters/parameter/name">
                        <parameters>
                           <xsl:for-each select="/sch:SubmitOrder_Response/Order/orderSpecification/notification/parameters/parameter">
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
                     </xsl:if>
                     <xsl:copy-of select="/sch:SubmitOrder_Response/Order/orderSpecification/notification/data"/>
                  </notification>
                  <xsl:if test="/sch:SubmitOrder_Response/Order/orderSpecification/parameters/parameter/name">
                     <parameters>
                        <xsl:for-each select="/sch:SubmitOrder_Response/Order/orderSpecification/parameters/parameter">
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
                  </xsl:if>
               </orderSpecification>
            </xsl:if>
            <xsl:if test="/sch:SubmitOrder_Response/Order/client/ID">
               <client>
                  <xsl:if test="/sch:SubmitOrder_Response/Order/client/ID != &quot;&quot;">
                     <ID>
                        <xsl:value-of select="/sch:SubmitOrder_Response/Order/client/ID"/>
                     </ID>
                  </xsl:if>
                  <xsl:if test="/sch:SubmitOrder_Response/Order/client/IDType != &quot;&quot;">
                     <IDType>
                        <xsl:value-of select="/sch:SubmitOrder_Response/Order/client/IDType"/>
                     </IDType>
                  </xsl:if>
                  <xsl:if test="/sch:SubmitOrder_Response/Order/client/parameters/parameter/name">
                     <parameters>
                        <xsl:for-each select="/sch:SubmitOrder_Response/Order/client/parameters/parameter">
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
                  </xsl:if>
               </client>
            </xsl:if>
            <xsl:if test="/sch:SubmitOrder_Response/Order/OrderContent/content">
               <OrderContent>
                  <xsl:for-each select="/sch:SubmitOrder_Response/Order/OrderContent/content">
                     <content>
                        <xsl:if test="contentType != &quot;&quot;">
                           <contentType>
                              <xsl:value-of select="contentType"/>
                           </contentType>
                        </xsl:if>
                        <xsl:if test="parameters/parameter/name">
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
                        </xsl:if>
                        <xsl:copy-of select="payload"/>
                     </content>
                  </xsl:for-each>
               </OrderContent>
            </xsl:if>
            <xsl:if test="/sch:SubmitOrder_Response/Order/items/item">
               <items>
                  <xsl:for-each select="/sch:SubmitOrder_Response/Order/items/item">
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
                           <xsl:if test="itemStatus/parameters/parameter/name">
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
                           </xsl:if>
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
                              <xsl:if test="Specification/executionDetails/parameters/parameter/name">
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
                              </xsl:if>
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
                              <xsl:if test="Specification/notification/parameters/parameter/name">
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
                              </xsl:if>
                              <xsl:copy-of select="Specification/notification/data"/>
                           </notification>
                           <xsl:if test="Specification/parameters/parameter/name">
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
                           </xsl:if>
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
                           <xsl:if test="client/parameters/parameter/name">
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
                           </xsl:if>
                        </client>
                        <itemContent>
                           <xsl:for-each select="itemContent/content">
                              <content>
                                 <xsl:if test="contentType != &quot;&quot;">
                                    <contentType>
                                       <xsl:value-of select="contentType"/>
                                    </contentType>
                                 </xsl:if>
                                 <xsl:if test="parameters/parameter/name">
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
                                 </xsl:if>
                                 <xsl:copy-of select="payload"/>
                              </content>
                           </xsl:for-each>
                        </itemContent>
                     </item>
                  </xsl:for-each>
               </items>
            </xsl:if>
         </Order>
      </sch:SubmitOrder_Response>
   </xsl:template>
</xsl:stylesheet>
