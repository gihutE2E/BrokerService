package mic.osm.broker.wsdl;

import java.io.Serializable;

import java.util.ArrayList;

public class DataChange implements Serializable {
    private ArrayList<DataChangeType> dataChange;
    
    public DataChange() {
        super();
    }

    public void setDataChange(ArrayList<DataChangeType> dataChange) {
        this.dataChange = dataChange;
    }

    public ArrayList<DataChangeType> getDataChange() {
        return dataChange;
    }
}
