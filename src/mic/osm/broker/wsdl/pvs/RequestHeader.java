package mic.osm.broker.wsdl.pvs;

import java.io.Serializable;

public class RequestHeader implements Serializable{

    protected GeneralConsumerInfoType generalConsumerInformation;

    /**
     * Gets the value of the generalConsumerInformation property.
     * 
     * @return
     *     possible object is
     *     {@link GeneralConsumerInfoType }
     *     
     */
    public GeneralConsumerInfoType getGeneralConsumerInformation() {
        return generalConsumerInformation;
    }

    /**
     * Sets the value of the generalConsumerInformation property.
     * 
     * @param value
     *     allowed object is
     *     {@link GeneralConsumerInfoType }
     *     
     */
    public void setGeneralConsumerInformation(GeneralConsumerInfoType value) {
        this.generalConsumerInformation = value;
    }

}

