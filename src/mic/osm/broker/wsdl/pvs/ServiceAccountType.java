package mic.osm.broker.wsdl.pvs;

import java.io.Serializable;

public class ServiceAccountType implements Serializable{

    protected String serviceAccountID;
    protected String legacyServiceID;

    /**
     * Gets the value of the serviceAccountID property.
     *
     * @return
     *     possible object is
     *     {@link String }
     *
     */
    public String getServiceAccountID() {
        return serviceAccountID;
    }

    /**
     * Sets the value of the serviceAccountID property.
     *
     * @param value
     *     allowed object is
     *     {@link String }
     *
     */
    public void setServiceAccountID(String value) {
        this.serviceAccountID = value;
    }

    /**
     * Gets the value of the legacyServiceID property.
     *
     * @return
     *     possible object is
     *     {@link String }
     *
     */
    public String getLegacyServiceID() {
        return legacyServiceID;
    }

    /**
     * Sets the value of the legacyServiceID property.
     *
     * @param value
     *     allowed object is
     *     {@link String }
     *
     */
    public void setLegacyServiceID(String value) {
        this.legacyServiceID = value;
    }

}
