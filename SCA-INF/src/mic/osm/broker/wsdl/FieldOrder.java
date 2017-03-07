package mic.osm.broker.wsdl;

import java.io.Serializable;

import java.util.ArrayList;

public class FieldOrder implements Serializable {
    private ArrayList<FieldOrderType> fieldOrders; 
    
    public FieldOrder() {
        super();
    }

    public void setFieldOrders(ArrayList<FieldOrderType> fieldOrders) {
        this.fieldOrders = fieldOrders;
    }

    public ArrayList<FieldOrderType> getFieldOrders() {
        return fieldOrders;
    }
}
