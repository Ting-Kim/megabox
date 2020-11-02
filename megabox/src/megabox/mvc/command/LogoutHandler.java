package megabox.mvc.command;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LogoutHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.getSession().removeAttribute("date");
		Date date = new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		request.getSession().setAttribute("date", df.format(date));
		request.getSession().removeAttribute("auth");
		response.sendRedirect("/megabox/main.do");
		return null;
	}

}
