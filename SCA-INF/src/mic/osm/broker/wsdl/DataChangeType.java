package mic.osm.broker.wsdl;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;

public class DataChangeType implements Serializable {
    private String dataReference;
    private String dataValue;
    
    public DataChangeType() {
        super();
    }

    public void setDataReference(String dataReference) {
        this.dataReference = dataReference;
    }

    public String getDataReference() {
        return dataReference;
    }

    public void setDataValue(String dataValue) {
        this.dataValue = dataValue;
    }

    public String getDataValue() {
        return dataValue;
    }
}
