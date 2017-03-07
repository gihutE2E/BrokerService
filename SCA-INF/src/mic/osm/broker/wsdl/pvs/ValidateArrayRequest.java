package mic.osm.broker.wsdl.pvs;

import java.io.Serializable;

import java.util.ArrayList;

public class ValidateArrayRequest implements Serializable {
    
    private ArrayList<ValidateRequest> validateRequest;
    
    public ValidateArrayRequest() {
        super();
    }

    public void setValidateRequest(ArrayList<ValidateRequest> validateRequest) {
        this.validateRequest = validateRequest;
    }

    public ArrayList<ValidateRequest> getValidateRequest() {
        return validateRequest;
    }
}
