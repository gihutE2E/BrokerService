package mic.osm.broker.wsdl;

import java.io.Serializable;

import java.util.ArrayList;

public class ChargeOrder implements Serializable {
    private ArrayList<Charge> charges;
    
    public ChargeOrder() {
        super();
    }

    public void setCharges(ArrayList<Charge> charges) {
        this.charges = charges;
    }

    public ArrayList<Charge> getCharges() {
        return charges;
    }
}
