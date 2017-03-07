package mic.osm.broker.wsdl;

import java.io.Serializable;

public class AdditionalType implements Serializable{

    protected String name;
    protected String value;

    public AdditionalType() {
        super();
    }

    public AdditionalType(String name, String value) {
        super();

        this.name = name;
        this.value = value;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public String getValue() {
        return value;
    }

    @Override
    public boolean equals(Object object) {
        if (!(object instanceof AdditionalType)) {
            return false;
        }
        final AdditionalType other = (AdditionalType)object;
        if (!(name == null ? other.name == null : name.equals(other.name))) {
            return false;
        }

        return true;
    }
}
