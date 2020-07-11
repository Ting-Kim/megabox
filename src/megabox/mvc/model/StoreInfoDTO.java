package megabox.mvc.model;

public class StoreInfoDTO {
	
	private int SEQ_PRODUCT	;
	private int SEQ_GROUP	;;
	private String PRODUCT_NAME	;
	private String DESCRIPTION;
	private int PRODUCT_CHARGE	;
	
	
	public String getDESCRIPTION() {
		return DESCRIPTION;
	}
	public void setDESCRIPTION(String dESCRIPTION) {
		DESCRIPTION = dESCRIPTION;
	}
	public int getSEQ_PRODUCT() {
		return SEQ_PRODUCT;
	}
	public void setSEQ_PRODUCT(int sEQ_PRODUCT) {
		SEQ_PRODUCT = sEQ_PRODUCT;
	}
	public int getSEQ_GROUP() {
		return SEQ_GROUP;
	}
	public void setSEQ_GROUP(int sEQ_GROUP) {
		SEQ_GROUP = sEQ_GROUP;
	}
	public String getPRODUCT_NAME() {
		return PRODUCT_NAME;
	}
	public void setPRODUCT_NAME(String pRODUCT_NAME) {
		PRODUCT_NAME = pRODUCT_NAME;
	}
	public int getPRODUCT_CHARGE() {
		return PRODUCT_CHARGE;
	}
	public void setPRODUCT_CHARGE(int pRODUCT_CHARGE) {
		PRODUCT_CHARGE = pRODUCT_CHARGE;
	}

}
