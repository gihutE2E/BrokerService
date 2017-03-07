package mic.osm.broker.persistence.entity;

import java.io.Serializable;

public class TbBrokerPriorityConfig implements Serializable {
    private String action;
    private Long id;
    private Long priority;
    private String product;

    public TbBrokerPriorityConfig() {
    }

    public TbBrokerPriorityConfig(String action, Long id, Long priority,
                                  String product) {
        this.action = action;
        this.id = id;
        this.priority = priority;
        this.product = product;
    }

    public String getAction() {
        return action;
    }

    public void setAction(String action) {
        this.action = action;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getPriority() {
        return priority;
    }

    public void setPriority(Long priority) {
        this.priority = priority;
    }

    public String getProduct() {
        return product;
    }

    public void setProduct(String product) {
        this.product = product;
    }
}
