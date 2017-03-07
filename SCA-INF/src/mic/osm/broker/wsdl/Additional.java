package mic.osm.broker.wsdl;

import java.io.Serializable;

import java.util.ArrayList;

public class Additional implements Serializable {
    private ArrayList<AdditionalType> additional;
    
    public Additional() {
        super();
    }

    public void setAdditional(ArrayList<AdditionalType> additional) {
        this.additional = additional;
    }

    public ArrayList<AdditionalType> getAdditional() {
        return additional;
    }
}
