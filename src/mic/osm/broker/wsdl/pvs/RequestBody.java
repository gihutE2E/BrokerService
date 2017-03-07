package mic.osm.broker.wsdl.pvs;

import java.io.Serializable;

public class RequestBody implements Serializable{

    protected String processID;
    protected String condition;
    protected String token;
    protected RequestID requestID;
    protected ClientSchemaType client;
    protected ProductType product;
    protected BillingType billingAccount;
    protected ServiceAccountType serviceAccount;
    protected AdditionalsType additionals;

    /**
     * Gets the value of the processID property.
     *
     * @return
     *     possible object is
     *     {@link String }
     *
     */
    public String getProcessID() {
        return processID;
    }

    /**
     * Sets the value of the processID property.
     *
     * @param value
     *     allowed object is
     *     {@link String }
     *
     */
    public void setProcessID(String value) {
        this.processID = value;
    }

    /**
     * Gets the value of the condition property.
     *
     * @return
     *     possible object is
     *     {@link String }
     *
     */
    public String getCondition() {
        return condition;
    }

    /**
     * Sets the value of the condition property.
     *
     * @param value
     *     allowed object is
     *     {@link String }
     *
     */
    public void setCondition(String value) {
        this.condition = value;
    }

    /**
     * Gets the value of the token property.
     *
     * @return
     *     possible object is
     *     {@link String }
     *
     */
    public String getToken() {
        return token;
    }

    /**
     * Sets the value of the token property.
     *
     * @param value
     *     allowed object is
     *     {@link String }
     *
     */
    public void setToken(String value) {
        this.token = value;
    }

    /**
     * Gets the value of the requestID property.
     *
     * @return
     *     possible object is
     *     {@link ValidateRequest.RequestBody.RequestID }
     *
     */
    public RequestID getRequestID() {
        return requestID;
    }

    /**
     * Sets the value of the requestID property.
     *
     * @param value
     *     allowed object is
     *     {@link ValidateRequest.RequestBody.RequestID }
     *
     */
    public void setRequestID(RequestID value) {
        this.requestID = value;
    }

    /**
     * Gets the value of the client property.
     *
     * @return
     *     possible object is
     *     {@link ClientSchemaType }
     *
     */
    public ClientSchemaType getClient() {
        return client;
    }

    /**
     * Sets the value of the client property.
     *
     * @param value
     *     allowed object is
     *     {@link ClientSchemaType }
     *
     */
    public void setClient(ClientSchemaType value) {
        this.client = value;
    }

    /**
     * Gets the value of the product property.
     *
     * @return
     *     possible object is
     *     {@link ProductType }
     *
     */
    public ProductType getProduct() {
        return product;
    }

    /**
     * Sets the value of the product property.
     *
     * @param value
     *     allowed object is
     *     {@link ProductType }
     *
     */
    public void setProduct(ProductType value) {
        this.product = value;
    }

    /**
     * Gets the value of the billingAccount property.
     *
     * @return
     *     possible object is
     *     {@link BillingType }
     *
     */
    public BillingType getBillingAccount() {
        return billingAccount;
    }

    /**
     * Sets the value of the billingAccount property.
     *
     * @param value
     *     allowed object is
     *     {@link BillingType }
     *
     */
    public void setBillingAccount(BillingType value) {
        this.billingAccount = value;
    }

    /**
     * Gets the value of the serviceAccount property.
     *
     * @return
     *     possible object is
     *     {@link ServiceAccountType }
     *
     */
    public ServiceAccountType getServiceAccount() {
        return serviceAccount;
    }

    /**
     * Sets the value of the serviceAccount property.
     *
     * @param value
     *     allowed object is
     *     {@link ServiceAccountType }
     *
     */
    public void setServiceAccount(ServiceAccountType value) {
        this.serviceAccount = value;
    }

    /**
     * Gets the value of the additionals property.
     *
     * @return
     *     possible object is
     *     {@link AdditionalsType }
     *
     */
    public AdditionalsType getAdditionals() {
        return additionals;
    }

    /**
     * Sets the value of the additionals property.
     *
     * @param value
     *     allowed object is
     *     {@link AdditionalsType }
     *
     */
    public void setAdditionals(AdditionalsType value) {
        this.additionals = value;
    }
    

}

