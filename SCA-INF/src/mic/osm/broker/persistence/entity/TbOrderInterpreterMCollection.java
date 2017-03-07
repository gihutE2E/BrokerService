package mic.osm.broker.persistence.entity;

import java.io.Serializable;

import java.util.ArrayList;

public class TbOrderInterpreterMCollection implements Serializable{
    
    private ArrayList<TbOrderInterpreterM> tbOrderInterpreterMCollection;
    
    public TbOrderInterpreterMCollection() {
        super();
    }

    public void setTbOrderInterpreterMCollection(ArrayList<TbOrderInterpreterM> tbOrderInterpreterMCollection) {
        this.tbOrderInterpreterMCollection = tbOrderInterpreterMCollection;
    }

    public ArrayList<TbOrderInterpreterM> getTbOrderInterpreterMCollection() {
        return tbOrderInterpreterMCollection;
    }
}
