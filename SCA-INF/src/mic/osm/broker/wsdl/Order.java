package mic.osm.broker.wsdl;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;

public class Order implements Serializable {
    private Client client;
    private ChargeOrder chargeOrder;
    private ProductOffering productOffering;
    private DataChange dataChange;
    private FieldOrder fieldOrder;  
    
    
    public Order() {
        super();
    }

    public void setClient(Client client) {
        this.client = client;
    }

    public Client getClient() {
        return client;
    }

    public void setChargeOrder(ChargeOrder chargeOrder) {
        this.chargeOrder = chargeOrder;
    }

    public ChargeOrder getChargeOrder() {
        return chargeOrder;
    }

    public void setProductOffering(ProductOffering productOffering) {
        this.productOffering = productOffering;
    }

    public ProductOffering getProductOffering() {
        return productOffering;
    }

    public void setDataChange(DataChange dataChange) {
        this.dataChange = dataChange;
    }

    public DataChange getDataChange() {
        return dataChange;
    }

    public void setFieldOrder(FieldOrder fieldOrder) {
        this.fieldOrder = fieldOrder;
    }

    public FieldOrder getFieldOrder() {
        return fieldOrder;
    }
}
