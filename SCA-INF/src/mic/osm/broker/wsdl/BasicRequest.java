package mic.osm.broker.wsdl;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


public class BasicRequest implements Serializable {
    private String uti;
    private String externalApplicationId;
    private String externalTransactionId;

    public BasicRequest() {
        super();
    }

    public void setUti(String uti) {
        this.uti = uti;
    }

    public String getUti() {
        return uti;
    }

    public void setExternalApplicationId(String externalApplicationId) {
        this.externalApplicationId = externalApplicationId;
    }

    public String getExternalApplicationId() {
        return externalApplicationId;
    }

    public void setExternalTransactionId(String externalTransactionId) {
        this.externalTransactionId = externalTransactionId;
    }

    public String getExternalTransactionId() {
        return externalTransactionId;
    }
}
