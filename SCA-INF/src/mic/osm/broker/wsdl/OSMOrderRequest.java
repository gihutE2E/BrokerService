package mic.osm.broker.wsdl;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

public class OSMOrderRequest implements Serializable {
    private BasicRequest basicRequest;
    private Offer offer;
    
    public OSMOrderRequest() {
        super();
    }

    public void setBasicRequest(BasicRequest basicRequest) {
        this.basicRequest = basicRequest;
    }

    public BasicRequest getBasicRequest() {
        return basicRequest;
    }

    public void setOffer(Offer offer) {
        this.offer = offer;
    }

    public Offer getOffer() {
        return offer;
    }
}
