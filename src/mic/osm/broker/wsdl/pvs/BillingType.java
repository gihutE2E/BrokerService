package mic.osm.broker.wsdl.pvs;

import java.io.Serializable;

public class BillingType implements Serializable{

    protected String billingAccountID;
    protected String legacyBillingID;

    /**
     * Gets the value of the billingAccountID property.
     *
     * @return
     *     possible object is
     *     {@link String }
     *
     */
    public String getBillingAccountID() {
        return billingAccountID;
    }

    /**
     * Sets the value of the billingAccountID property.
     *
     * @param value
     *     allowed object is
     *     {@link String }
     *
     */
    public void setBillingAccountID(String value) {
        this.billingAccountID = value;
    }

    /**
     * Gets the value of the legacyBillingID property.
     *
     * @return
     *     possible object is
     *     {@link String }
     *
     */
    public String getLegacyBillingID() {
        return legacyBillingID;
    }

    /**
     * Sets the value of the legacyBillingID property.
     *
     * @param value
     *     allowed object is
     *     {@link String }
     *
     */
    public void setLegacyBillingID(String value) {
        this.legacyBillingID = value;
    }

}

