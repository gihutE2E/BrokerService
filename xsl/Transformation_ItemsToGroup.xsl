<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:dcr="http://tigo.com/enterprise/serviceEntity/provisioning/dataChangeRequest/v1/schema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:ns6="http://tigo.com/enterprise/business/util/itemsGroup/v1/schema" xmlns:chr="http://tigo.com/enterprise/businessEntity/charge/v1/schema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns10="http://tigo.com/enterprise/business/task/O2Broker/v1/OrderItemGroupProcess" xmlns:grp="http://tigo.com/enterprise/business/util/itemGroup/v1/schema" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns12="http://tigo.com/enterprise/resources/parameters/simple/v1/schema" xmlns:grs="http://tigo.com/enterprise/resources/GeneralResponse/v1/schema" xmlns:ns3="http://tigo.com/commons/resources/additional/v1/schema" xmlns:ns7="http://tigo.com/enterprise/business/entities/notificationBasic/v1/schema" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:ns8="http://tigo.com/enterprise/business/entities/client/basic/v1/schema" xmlns:cmn="http://tigo.com/commons/generalResponse/v1/schema" xmlns:sch="http://tigo.com/enterprise/serviceEntity/provisioning/orderRequest/v1/schema" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns2="http://tigo.com/enterprise/businessEntity/product/basic/v1/schema" xmlns:fsr="http://tigo.com/enterprise/serviceEntity/provisioning/fieldService/v1/schema" xmlns:tns="http://tigo.com/enterprise/business/task/OrderBroker/v1/O2ItemGroupProcess" xmlns:ns9="http://tigo.com/enterprise/business/entities/order/v1/schema" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/top/TB_BROKER_ITEM_GROUP_CONF_SELECT" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns1="http://tigo.com/serviceEntity/provisioning/offeringDetail/v1/schema" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:clt="http://tigo.com/enterprise/businessEntity/client/basic/v1/schema" xmlns:ns5="http://tigo.com/enterprise/serviceEntity/provisioning/orderRequest/priority/v1/schema" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:bsc="http://tigo.com/commons/basicRequest/v1/schema" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ns11="http://tigo.com/enterprise/resources/GeneralRequest/v1/schema" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns4="http://tigo.com/enterprise/business/task/OrderBroker/v1/schema" xmlns:ord="http://tigo.com/enterprise/serviceEntity/provisioning/order/v1/schema" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl dcr chr ns3 cmn sch ns2 fsr ns0 ns1 clt bsc xsd ord ns6 ns10 grp ns12 grs ns7 soap ns8 wsdl tns ns9 ns5 ns11 ns4 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:param name="o2Request"/>
   <xsl:template match="/">
      <grp:data>
         <grp:items>
            <xsl:for-each select="$o2Request/sch:BasicOrderRequest/ServiceOffer/order/productOffering/ord:order">
               <item>
                  <rootId>
                     <xsl:value-of select="ns3:additionals/additional[name = &quot;ROOT&quot;]/value"/>
                  </rootId>
               </item>
            </xsl:for-each>
         </grp:items>
         <grp:itemsGroup>
            <xsl:for-each select="/ns0:TbBrokerItemGroupConfCollection/ns0:TbBrokerItemGroupConf">
               <itemGroup>
                  <groupId>
                     <xsl:value-of select="ns0:groupId"/>
                  </groupId>
                  <item>
                     <xsl:value-of select="ns0:itemId"/>
                  </item>
                  <action>
                     <xsl:value-of select="ns0:itemAction"/>
                  </action>
                  <type>
                     <xsl:value-of select="ns0:itemType"/>
                  </type>
               </itemGroup>
            </xsl:for-each>
         </grp:itemsGroup>
      </grp:data>
   </xsl:template>
</xsl:stylesheet>
