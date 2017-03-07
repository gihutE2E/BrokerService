package mic.osm.broker.wsdl;

import java.io.Serializable;

import java.util.ArrayList;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;

public class Offer implements Serializable {
    private ArrayList<Order> orders;
    
    public Offer() {
        super();
    }

    public void setOrders(ArrayList<Order> orders) {
        this.orders = orders;
    }

    public ArrayList<Order> getOrders() {
        return orders;
    }
}
