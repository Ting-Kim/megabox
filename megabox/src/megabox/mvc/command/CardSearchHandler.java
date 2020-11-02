package megabox.mvc.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CardSearchHandler implements CommandHandler{
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception{
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String searchStr =  request.getParameter("searchStr");
		
		try {
			request.setAttribute("searchStr", searchStr);
			System.out.println("cardsearch:"+searchStr);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "/cardsearch";


	}
}
