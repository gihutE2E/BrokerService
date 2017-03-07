package mic.osm.broker.wsdl;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;

public class Product implements Serializable {
    private String name;
    private String code;
    
    public Product() {
        super();
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getCode() {
        return code;
    }


    @Override
    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (!(object instanceof Product)) {
            return false;
        }
        final Product other = (Product)object;
        if (!(name == null ? other.name == null : name.equals(other.name))) {
            return false;
        }
        if (!(code == null ? other.code == null : code.equals(other.code))) {
            return false;
        }
        return true;
    }
}
