package megabox.mvc.command;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import megabox.mvc.service.FaQService;
import megabox.mvc.service.PageList;

public class SupportFaqPageHandler implements CommandHandler{


	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String pCurrentPage = request.getParameter("page");
		int currentPage =  pCurrentPage == null?	1: Integer.parseInt(pCurrentPage);
		
		String pSearchWord = request.getParameter("searchWord");
	
		String  searchWord =  pSearchWord == null?	"*"  :  pSearchWord;
		

			FaQService service =new  FaQService();
			
			PageList view =  service.selectPage(currentPage, searchWord);
			
	
	        request.setAttribute("view", view );
	       


		return "/supportFaq";
	}
}


