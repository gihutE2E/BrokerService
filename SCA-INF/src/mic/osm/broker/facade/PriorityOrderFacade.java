package mic.osm.broker.facade;

import mic.osm.broker.wsdl.OSMOrderRequest;

public interface PriorityOrderFacade {
    public OSMOrderRequest determinePriorities(OSMOrderRequest request);
}
