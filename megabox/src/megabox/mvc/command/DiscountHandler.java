package megabox.mvc.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import megabox.mvc.model.DiscountDTO;
import megabox.mvc.service.DiscountService;

public class DiscountHandler implements CommandHandler{
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		int part = request.getParameter("part") == null ? 0 : Integer.parseInt(request.getParameter("part"));

		try {
			DiscountService service =  new DiscountService();
			DiscountDTO dto =  service.count();
			request.setAttribute("dto", dto);
			List<DiscountDTO> list =  service.select(part);
			request.setAttribute("list", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if (part == 0) {
			return "/discount";

		}else if (part==1) {
			return "/creditcard";

		} else if (part==2) {
			return "/telecomcard";
			
		} else if (part==3) {
			return "/pointcard";
			
		} else if (part==4) {
			return "/giftcard";
		}
		return "/discount";


	}
}
