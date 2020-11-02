package megabox.mvc.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import megabox.mvc.model.PaymentDTO;

public class StoreBillsHandler implements CommandHandler{

//구매한 제품명, 가격, seq, 갯수를 가져옴
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		  System.out.println("핸들러 " );
		
		String cardNum = request.getParameter("cardNum"); //카드번호
		 String co_card= request.getParameter("co_card"); //카드사
		
		 System.out.println( request.getParameter("nowPoint"));
		 System.out.println( request.getParameter("savePoint"));
		
		 
		
		 int nowPoint=  Integer.parseInt(	request.getParameter("nowPoint"));
		 int savePoint=  Integer.parseInt(	request.getParameter("savePoint")) ;
	
		 int discount= Integer.parseInt(request.getParameter("discount")); 
		String product_name = request.getParameter("product_name"); 
		  int count =Integer.parseInt( request.getParameter("count")); 
		  int payment =Integer.parseInt( request.getParameter("payment"));  
		  int seq_order =Integer.parseInt( request.getParameter("seq_order")); 
		  
		
		  
		  try {
			  
		  PaymentDTO dto = new PaymentDTO();

			dto.setCardNum(cardNum); //카드번호
			dto.setDiscount(discount); //할인금액
			dto.setCo_card(co_card); //카드사
			dto.setNowPoint(nowPoint); //이번에 적립될 포인트
			dto.setSavePoint(savePoint); //총포인트
			dto.setProduct_name(product_name); //상품명
			dto.setCount(count); //상품갯수
			dto.setPayment(payment);//원래 상품가격
			dto.setSeq_order(seq_order);//주문번호
		 
			request.setAttribute("dto", dto );  
			
			} 
			catch (Exception e) {
				e.printStackTrace();
		    }		
		  
		return "/storeBills";
	}
}
