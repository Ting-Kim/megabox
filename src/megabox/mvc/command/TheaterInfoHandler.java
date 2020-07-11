package megabox.mvc.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TheaterInfoHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("TheaterInfoHandler.process() 호출됨..");
		return "/theater/theaterInfo";
	}
	
}
