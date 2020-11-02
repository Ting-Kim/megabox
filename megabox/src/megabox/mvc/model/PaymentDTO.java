package megabox.mvc.model;

public class PaymentDTO {
	
	
	
	
private String	cardNum ;//카드번호
private int	discount ;//할인금액
private String	co_card ;//카드사
private int	nowPoint ;//적립예정 포인트
private int savePoint ;// 총포인트
private String	product_name; //상품명
private int	count; //상품갯수
private int	payment ;//상품가격
private int seq_order;//상품 주문 번호





public int getSeq_order() {
	return seq_order;
}
public void setSeq_order(int seq_order) {
	this.seq_order = seq_order;
}
public String getCardNum() {
	return cardNum;
}
public void setCardNum(String cardNum) {
	this.cardNum = cardNum;
}
public int getDiscount() {
	return discount;
}
public void setDiscount(int discount) {
	this.discount = discount;
}
public String getCo_card() {
	return co_card;
}
public void setCo_card(String co_card) {
	this.co_card = co_card;
}


public int getNowPoint() {
	return nowPoint;
}
public void setNowPoint(int nowPoint) {
	this.nowPoint = nowPoint;
}
public int getSavePoint() {
	return savePoint;
}
public void setSavePoint(int savePoint) {
	this.savePoint = savePoint;
}



public String getProduct_name() {
	return product_name;
}
public void setProduct_name(String product_name) {
	this.product_name = product_name;
}
public int getCount() {
	return count;
}
public void setCount(int count) {
	this.count = count;
}

public int getPayment() {
	return payment;
}
public void setPayment(int payment) {
	this.payment = payment;
}
	
	
	
	
	
	  

}
