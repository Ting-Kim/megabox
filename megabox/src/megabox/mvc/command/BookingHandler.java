package megabox.mvc.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BookingHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (request.getMethod().equalsIgnoreCase("get")) {
			return "/booking";
		}else{
			return doPost(request,response);
			 
		}
	}

	private String doPost(HttpServletRequest request, HttpServletResponse response) {
		String movie = request.getParameter("");
		String a = request.getParameter("");
		String b = request.getParameter("");
		String c = request.getParameter("");
		String d = request.getParameter("");
		
		List list = null;
		request.setAttribute("list", list);
		return "payment";
	}

}
