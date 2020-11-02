package megabox.mvc.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class MembershipHandler implements CommandHandler{
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		String pageName = request.getParameter("name");

		if (pageName == null || pageName.equals("membership")) {
			return "/membership";

		}else if (pageName.equals("vip")) {
			return "/viplounge";

		}
		
		return "/membership";
	}

}
