package megabox.mvc.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MembershipHandler implements CommandHandler{
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		return "/membership";
		
	}
}
