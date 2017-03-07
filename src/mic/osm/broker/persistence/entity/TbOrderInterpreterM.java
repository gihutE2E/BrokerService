package mic.osm.broker.persistence.entity;

public class TbOrderInterpreterM {
    
    protected Long id;
    protected String serviceCode;
    protected String previousObject;
    protected String previousObjectAction;
    protected String newObject;
    protected String newObjectAction;
    protected String orderAction;
    protected String serviceOwner;
    protected String description;

    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }

    public void setServiceCode(String serviceCode) {
        this.serviceCode = serviceCode;
    }

    public String getServiceCode() {
        return serviceCode;
    }

    public void setPreviousObject(String previousObject) {
        this.previousObject = previousObject;
    }

    public String getPreviousObject() {
        return previousObject;
    }

    public void setPreviousObjectAction(String previousObjectAction) {
        this.previousObjectAction = previousObjectAction;
    }

    public String getPreviousObjectAction() {
        return previousObjectAction;
    }

    public void setNewObject(String newObject) {
        this.newObject = newObject;
    }

    public String getNewObject() {
        return newObject;
    }

    public void setNewObjectAction(String newObjectAction) {
        this.newObjectAction = newObjectAction;
    }

    public String getNewObjectAction() {
        return newObjectAction;
    }

    public void setOrderAction(String orderAction) {
        this.orderAction = orderAction;
    }

    public String getOrderAction() {
        return orderAction;
    }

    public void setServiceOwner(String serviceOwner) {
        this.serviceOwner = serviceOwner;
    }

    public String getServiceOwner() {
        return serviceOwner;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDescription() {
        return description;
    }
}
