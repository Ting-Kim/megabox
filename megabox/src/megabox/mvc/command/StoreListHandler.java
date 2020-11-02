package megabox.mvc.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import megabox.mvc.model.StoreInfoDTO;
import megabox.mvc.service.StoreListService;

public class StoreListHandler implements CommandHandler{


	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int group= request.getParameter("group")==null ? 0 : Integer.parseInt(request.getParameter("group"));
		try {
			StoreListService service =  new StoreListService();
	        List<StoreInfoDTO> list =  service.select(group);
	        request.setAttribute("list", list );
	       
	    } catch (Exception e) {
			e.printStackTrace();
		}
		return "/store";
	}
}
