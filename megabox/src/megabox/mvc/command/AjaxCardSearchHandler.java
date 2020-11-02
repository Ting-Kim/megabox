package megabox.mvc.command;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import megabox.mvc.model.DiscountDTO;
import megabox.mvc.service.DiscountService;
import net.sf.json.JSONObject;

public class AjaxCardSearchHandler implements AjaxHandler{

	@Override
	public void process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String searchStr =  request.getParameter("searchStr");
		System.out.println(">>"+searchStr);

		DiscountService service =  new DiscountService();
		List<DiscountDTO> list =  service.search(searchStr);
	
		JSONObject jsonObj = new JSONObject();
		jsonObj.put("list", list);
		PrintWriter pw = response.getWriter();
		pw.print(jsonObj);
	}
}


