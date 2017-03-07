package mic.osm.broker.wsdl;

import java.io.Serializable;

import java.util.ArrayList;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;

public class Charge implements Serializable {
    private double value;
    private String wallet;
    private String walletId;
    private String changeReference;
    private Additional additionals;

    public Charge() {
        super();
    }

    public void setValue(double value) {
        this.value = value;
    }

    public double getValue() {
        return value;
    }

    public void setWallet(String wallet) {
        this.wallet = wallet;
    }

    public String getWallet() {
        return wallet;
    }

    public void setWalletId(String walletId) {
        this.walletId = walletId;
    }

    public String getWalletId() {
        return walletId;
    }

    public void setChangeReference(String changeReference) {
        this.changeReference = changeReference;
    }

    public String getChangeReference() {
        return changeReference;
    }

    public void setAdditionals(Additional additionals) {
        this.additionals = additionals;
    }

    public Additional getAdditionals() {
        return additionals;
    }
}
