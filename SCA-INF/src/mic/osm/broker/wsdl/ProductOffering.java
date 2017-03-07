package mic.osm.broker.wsdl;

import java.io.Serializable;

import java.util.ArrayList;

public class ProductOffering implements Serializable {
    private ArrayList<ProductOfferingType> provisioningOrder;
    
    public ProductOffering() {
        super();
    }

    public void setProvisioningOrder(ArrayList<ProductOfferingType> provisioningOrder) {
        this.provisioningOrder = provisioningOrder;
    }

    public ArrayList<ProductOfferingType> getProvisioningOrder() {
        return provisioningOrder;
    }
}
