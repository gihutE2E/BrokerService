package mic.osm.broker.wsdl;

import java.io.Serializable;

import java.util.Date;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;

public class FieldOrderType implements Serializable {
    private String fieldServiceCode;
    private Date executionDate;
    private String priority;
    private Additional additionals;

    public FieldOrderType() {
        super();
    }

    public void setFieldServiceCode(String fieldServiceCode) {
        this.fieldServiceCode = fieldServiceCode;
    }

    public String getFieldServiceCode() {
        return fieldServiceCode;
    }

    public void setExecutionDate(Date executionDate) {
        this.executionDate = executionDate;
    }

    public Date getExecutionDate() {
        return executionDate;
    }

    public void setPriority(String priority) {
        this.priority = priority;
    }

    public String getPriority() {
        return priority;
    }

    public void setAdditionals(Additional additionals) {
        this.additionals = additionals;
    }

    public Additional getAdditionals() {
        return additionals;
    }
}
