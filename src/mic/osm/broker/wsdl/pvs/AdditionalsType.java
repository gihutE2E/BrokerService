package mic.osm.broker.wsdl.pvs;

import java.io.Serializable;

import java.util.ArrayList;
import java.util.List;
import mic.osm.broker.wsdl.*;


public class AdditionalsType implements Serializable{

      protected List<?> additional;
    public List<?> getAdditional() {
        if (additional == null) {
            additional = new ArrayList<?>();
        }
        return this.additional;
    }

}

