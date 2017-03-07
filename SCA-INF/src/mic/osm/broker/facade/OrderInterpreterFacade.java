package mic.osm.broker.facade;

import java.util.ArrayList;

import mic.osm.broker.persistence.entity.TbOrderInterpreterMCollection;
import mic.osm.broker.wsdl.OSMOrderRequest;
import mic.osm.broker.wsdl.pvs.ValidateArrayRequest;
import mic.osm.broker.wsdl.pvs.ValidateRequest;

public interface OrderInterpreterFacade {
    public OSMOrderRequest processOSMOrder(OSMOrderRequest order, TbOrderInterpreterMCollection collection);
    
    public ValidateArrayRequest processPVSOrder(ValidateArrayRequest order, TbOrderInterpreterMCollection collection);
}
