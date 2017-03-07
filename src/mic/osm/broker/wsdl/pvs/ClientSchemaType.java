package mic.osm.broker.wsdl.pvs;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;

public class ClientSchemaType implements Serializable{

    protected String id;
    protected String idType;

    /**
     * Gets the value of the id property.
     *
     * @return
     *     possible object is
     *     {@link String }
     *
     */
    public String getId() {
        return id;
    }

    /**
     * Sets the value of the id property.
     *
     * @param value
     *     allowed object is
     *     {@link String }
     *
     */
    public void setId(String value) {
        this.id = value;
    }

    /**
     * Gets the value of the idType property.
     *
     * @return
     *     possible object is
     *     {@link String }
     *
     */
    public String getIdType() {
        return idType;
    }

    /**
     * Sets the value of the idType property.
     *
     * @param value
     *     allowed object is
     *     {@link String }
     *
     */
    public void setIdType(String value) {
        this.idType = value;
    }

}

