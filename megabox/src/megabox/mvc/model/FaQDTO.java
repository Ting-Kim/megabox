package megabox.mvc.model;

public class FaQDTO {
	
	private int SEQ_FAQ;
	private int SEQ_FAQ_PART	;
	private String TITLE;
	private String	CONTENT;
	private String FAQ_PART	;
	
	
	public int getSEQ_FAQ() {
		return SEQ_FAQ;
	}
	public void setSEQ_FAQ(int sEQ_FAQ) {
		SEQ_FAQ = sEQ_FAQ;
	}
	public int getSEQ_FAQ_PART() {
		return SEQ_FAQ_PART;
	}
	public void setSEQ_FAQ_PART(int sEQ_FAQ_PART) {
		SEQ_FAQ_PART = sEQ_FAQ_PART;
	}
	public String getTITLE() {
		return TITLE;
	}
	public void setTITLE(String tITLE) {
		TITLE = tITLE;
	}
	public String getCONTENT() {
		return CONTENT;
	}
	public void setCONTENT(String cONTENT) {
		CONTENT = cONTENT;
	}
	public String getFAQ_PART() {
		return FAQ_PART;
	}
	public void setFAQ_PART(String fAQ_PART) {
		FAQ_PART = fAQ_PART;
	}
	
	
	
	

}
