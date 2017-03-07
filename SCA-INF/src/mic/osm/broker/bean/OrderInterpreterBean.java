package mic.osm.broker.bean;

import java.util.ArrayDeque;
import java.util.ArrayList;

import mic.osm.broker.wsdl.pvs.ValidateRequest;
import mic.osm.broker.facade.OrderInterpreterFacade;
import mic.osm.broker.persistence.entity.TbOrderInterpreterM;
import mic.osm.broker.persistence.entity.TbOrderInterpreterMCollection;
import mic.osm.broker.wsdl.OSMOrderRequest;
import mic.osm.broker.wsdl.ProductOffering;
import mic.osm.broker.wsdl.ProductOfferingType;
import mic.osm.broker.wsdl.pvs.GeneralConsumerInfoType;
import mic.osm.broker.wsdl.pvs.RequestHeader;
import mic.osm.broker.wsdl.pvs.ValidateArrayRequest;

public class OrderInterpreterBean implements OrderInterpreterFacade {
    public OrderInterpreterBean() {
        super();
    }

    public OSMOrderRequest processOSMOrder(OSMOrderRequest order,
                                           TbOrderInterpreterMCollection collection) {      

        return this.replaceProducts(order, collection);
    }

    public ValidateArrayRequest processPVSOrder(ValidateArrayRequest order,
                                           TbOrderInterpreterMCollection collection) {       
        
        return this.replaceProcess(order, collection);
    }

    private OSMOrderRequest replaceProducts(OSMOrderRequest order,
                                 TbOrderInterpreterMCollection collection) {

        for (TbOrderInterpreterM tbOrder :
             collection.getTbOrderInterpreterMCollection()) {

            ProductOffering offer =
                order.getOffer().getOrders().get(0).getProductOffering();

            for (ProductOfferingType provisioningOrder :
                 offer.getProvisioningOrder()) {
                if (provisioningOrder.getProduct().getName().compareTo(tbOrder.getPreviousObject()) ==
                    0 &&
                    provisioningOrder.getOfferingDetail().getOfferAction().compareTo(tbOrder.getPreviousObjectAction()) ==
                    0) {
                    provisioningOrder.getProduct().setName(tbOrder.getNewObject());
                    provisioningOrder.getOfferingDetail().setOfferAction(tbOrder.getNewObjectAction());
                }
            }
        }
        
        return order;
    }

    private ValidateArrayRequest replaceProcess(ValidateArrayRequest order,
                                           TbOrderInterpreterMCollection collection) {
        
        
        for(TbOrderInterpreterM tbOrder : collection.getTbOrderInterpreterMCollection()){
            
            for(ValidateRequest validate : order.getValidateRequest()){
                if(tbOrder.getPreviousObject().compareTo(validate.getRequestBody().getProcessID()) == 0){
                    validate.getRequestBody().setProcessID(tbOrder.getNewObject());    
                }
            }
        }
        
        return order;
    }
}
