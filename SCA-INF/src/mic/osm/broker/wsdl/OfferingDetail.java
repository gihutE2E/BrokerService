package mic.osm.broker.wsdl;

import java.io.Serializable;

import java.util.Date;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;

public class OfferingDetail implements Serializable {
    private double value;
    private String currency;
    private Date expirationDate;
    private Date startDate;
    private String defer;
    private String offerAction;

    public OfferingDetail() {
        super();
    }

    public void setValue(double value) {
        this.value = value;
    }

    public double getValue() {
        return value;
    }

    public void setCurrency(String currency) {
        this.currency = currency;
    }

    public String getCurrency() {
        return currency;
    }

    public void setExpirationDate(Date expirationDate) {
        this.expirationDate = expirationDate;
    }

    public Date getExpirationDate() {
        return expirationDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setDefer(String defer) {
        this.defer = defer;
    }

    public String getDefer() {
        return defer;
    }

    public void setOfferAction(String offerAction) {
        this.offerAction = offerAction;
    }

    public String getOfferAction() {
        return offerAction;
    }
}
