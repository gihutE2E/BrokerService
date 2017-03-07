package mic.osm.broker.bean;

import java.util.ArrayList;

import java.util.Collections;

import mic.osm.broker.wsdl.OSMOrderRequest;
import mic.osm.broker.facade.PriorityOrderFacade;
import mic.osm.broker.persistence.dao.TbBrokerPriorityConfigDAO;
import mic.osm.broker.persistence.entity.TbBrokerPriorityConfig;
import mic.osm.broker.wsdl.AdditionalType;
import mic.osm.broker.wsdl.ProductOfferingType;

public class PriorityOrderBean implements PriorityOrderFacade {
    private TbBrokerPriorityConfigDAO tbBrokerPriorityConfigDAO;

    public PriorityOrderBean() {
        super();
    }

    public OSMOrderRequest determinePriorities(OSMOrderRequest request) {
        try {
            ArrayList<ProductOfferingType> provisioningOrders =
                request.getOffer().getOrders().get(0).getProductOffering().getProvisioningOrder();

            ArrayList<TbBrokerPriorityConfig> entities =
                tbBrokerPriorityConfigDAO.findByProductOrderByPriority(provisioningOrders);

            if (null != entities || !entities.isEmpty()) {
                provisioningOrders =
                        this.setProductPriority(entities, provisioningOrders);

                provisioningOrders =
                        this.sortOrderByPriority(provisioningOrders);

                request.getOffer().getOrders().get(0).getProductOffering().setProvisioningOrder(provisioningOrders);
                
                request.getBasicRequest().setExternalApplicationId("SORT");
                
                return request;
            } else {
                return request;
            }
        } catch (Exception e) {
            return request;
        }
    }

    public void setTbBrokerPriorityConfigDAO(TbBrokerPriorityConfigDAO tbBrokerPriorityConfigDAO) {
        this.tbBrokerPriorityConfigDAO = tbBrokerPriorityConfigDAO;
    }

    public TbBrokerPriorityConfigDAO getTbBrokerPriorityConfigDAO() {
        return tbBrokerPriorityConfigDAO;
    }

    private ArrayList<ProductOfferingType> setProductPriority(ArrayList<TbBrokerPriorityConfig> entities,
                                                              ArrayList<ProductOfferingType> provisioningOrders) {
        for (ProductOfferingType product : provisioningOrders) {
            for (TbBrokerPriorityConfig config : entities) {
                if (product.getProduct().getCode().compareTo(config.getProduct()) ==
                    0) {
                    AdditionalType additional =
                        new AdditionalType("PRIORITY", String.valueOf(config.getPriority()));
                    product.getAdditionals().getAdditional().add(additional);
                }
            }
        }
        return provisioningOrders;
    }

    private ArrayList<ProductOfferingType> sortOrderByPriority(ArrayList<ProductOfferingType> provisioningOrders) {
        Collections.sort(provisioningOrders);

        return provisioningOrders;
    }
}
