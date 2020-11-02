package megabox.mvc.command;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import megabox.mvc.model.StoreInfoDTO;
import megabox.mvc.service.StoreDetailService;

public class StoreDetailHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
			
		int seq= request.getParameter("seq")==null ? 0 : Integer.parseInt(request.getParameter("seq"));
		try {
			StoreDetailService service =  new StoreDetailService();
			StoreInfoDTO dto =  service.select(seq);
	        request.setAttribute("dto", dto );
	       
	    } catch (Exception e) {
			e.printStackTrace();
	}		
		return "/storeDetail";
		}
}