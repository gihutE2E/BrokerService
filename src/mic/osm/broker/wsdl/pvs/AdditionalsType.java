package mic.osm.broker.wsdl.pvs;

import java.io.Serializable;

import java.util.ArrayList;
import java.util.List;

import mic.osm.broker.wsdl.AdditionalType;


public class AdditionalsType implements Serializable{

    protected List<AdditionalType> additional;
    public List<AdditionalType> getAdditional() {
        if (additional == null) {
            additional = new ArrayList<AdditionalType>();
        }
        return this.additional;
    }

}

