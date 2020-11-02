
package megabox.mvc.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PaymentHandler implements CommandHandler{

//구매한 제품명, 가격, seq, 갯수를 가져옴
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		  String product = request.getParameter("product"); //상품명
		  int payment =Integer.parseInt(request.getParameter("payment")); //가격
		  int seq_product=Integer.parseInt(request.getParameter("seq_product"));// 상품번호
 		  int count = Integer.parseInt(request.getParameter("count")); //상품갯수
	
		  
		    request.setAttribute("product", product ); 
		    request.setAttribute("payment", payment ); 
		    request.setAttribute("seq_product",seq_product);
		    request.setAttribute("count",count);
		  
		return "/payment";
	}
}
