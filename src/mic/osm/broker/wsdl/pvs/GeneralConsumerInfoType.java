package mic.osm.broker.wsdl.pvs;


import java.io.Serializable;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementRef;
import javax.xml.bind.annotation.XmlType;

public class GeneralConsumerInfoType implements Serializable{

    protected String consumerID;
    protected String transactionID;
    protected String country;
    protected String correlationID;

    
    /**
     * Gets the value of the correlationID property.
     *
     * @return
     *     possible object is
     *     {@link String }
     *
     */
    public String getCorrelationID() {
        return correlationID;
    }

    /**
     * Sets the value of the correlationID property.
     *
     * @param value
     *     allowed object is
     *     {@link String }
     *
     */
    public void setCorrelationID(String value) {
        this.correlationID = value;
    }

    public void setConsumerID(String consumerID) {
        this.consumerID = consumerID;
    }

    public String getConsumerID() {
        return consumerID;
    }

    public void setTransactionID(String transactionID) {
        this.transactionID = transactionID;
    }

    public String getTransactionID() {
        return transactionID;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getCountry() {
        return country;
    }
}

