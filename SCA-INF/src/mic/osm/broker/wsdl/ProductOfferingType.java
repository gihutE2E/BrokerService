package mic.osm.broker.wsdl;

import java.io.Serializable;

public class ProductOfferingType implements Serializable,
                                            Comparable<ProductOfferingType> {
    private Product product;
    private OfferingDetail offeringDetail;
    private Additional additionals;

    public ProductOfferingType() {
        super();
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Product getProduct() {
        return product;
    }

    public void setOfferingDetail(OfferingDetail offeringDetail) {
        this.offeringDetail = offeringDetail;
    }

    public OfferingDetail getOfferingDetail() {
        return offeringDetail;
    }

    public void setAdditionals(Additional additionals) {
        this.additionals = additionals;
    }

    public Additional getAdditionals() {
        return additionals;
    }

    @Override
    public int compareTo(ProductOfferingType productOfferingType) {
        AdditionalType additional = new AdditionalType("PRIORITY", "0");

        int indexOwner =
            this.getAdditionals().getAdditional().indexOf(additional);
        int indexParameter =
            productOfferingType.getAdditionals().getAdditional().indexOf(additional);

        int priorityOwner =
            indexOwner < 0 ? 0 : Integer.valueOf(this.getAdditionals().getAdditional().get(indexOwner).getValue());
        int priorityParameter =
            indexParameter < 0 ? 0 : Integer.parseInt(productOfferingType.getAdditionals().getAdditional().get(indexParameter).getValue());

        if (priorityOwner == priorityParameter) {
            return 0;
        }

        if (priorityParameter < priorityOwner) {
            return -1;
        } else if (priorityParameter > priorityOwner) {
            return 1;
        }
        return 0;
    }

    @Override
    public boolean equals(Object object) {
        if (!(object instanceof ProductOfferingType)) {
            return false;
        }
        final ProductOfferingType other = (ProductOfferingType)object;
        if (!(product == null ? other.product == null :
              product.equals(other.product))) {
            return false;
        }
        return true;
    }
}
