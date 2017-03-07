<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:ns0="http://tigo.com/resources/util/javaUtil/v1/schema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:tns="http://tigo.com/resources/util/javaUtil/v1" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:sch="http://tigo.com/resources/util/productItem/v1/schema" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns5="http://tigo.com/enterprise/resources/parameters/simple/v1/schema" xmlns:grs="http://tigo.com/enterprise/resources/GeneralResponse/v1/schema" xmlns:ns1="http://tigo.com/enterprise/business/entities/notificationBasic/v1/schema" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:ns2="http://tigo.com/enterprise/business/entities/client/basic/v1/schema" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns3="http://tigo.com/enterprise/business/entities/order/v1/schema" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ns4="http://tigo.com/enterprise/resources/GeneralRequest/v1/schema" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl sch xsd ns0 tns ns5 grs ns1 soap ns2 wsdl ns3 ns4 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:param name="itemGroups"/>
   <xsl:template match="/">
      <ns0:executeRequest>
         <items>
            <xsl:for-each select="$itemGroups/sch:productItemList">
               <item>
                  <itemContent>
                     <content>
                        <contentType>
                           <xsl:text disable-output-escaping="no">COMPARE</xsl:text>
                        </contentType>
                        <payload>
                           <xsl:copy-of select="concat(&quot;&lt;![CDATA[&quot;,oraext:get-content-as-string(.),&quot;]]>&quot;)"/>
                        </payload>
                     </content>
                  </itemContent>
               </item>
            </xsl:for-each>
            <xsl:for-each select="/sch:productItemList">
               <item>
                  <itemContent>
                     <content>
                        <contentType>
                           <xsl:text disable-output-escaping="no">INPUT</xsl:text>
                        </contentType>
                        <payload>
                           <xsl:copy-of select="concat(&quot;&lt;![CDATA[&quot;,oraext:get-content-as-string(.),&quot;]]>&quot;)"/>
                        </payload>
                     </content>
                  </itemContent>
               </item>
            </xsl:for-each>
         </items>
      </ns0:executeRequest>
   </xsl:template>
</xsl:stylesheet>
