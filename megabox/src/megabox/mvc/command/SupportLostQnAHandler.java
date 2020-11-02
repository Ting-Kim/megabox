package megabox.mvc.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import megabox.mvc.service.LostService;
import megabox.mvc.service.PageList2;


public class SupportLostQnAHandler implements CommandHandler{


	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
	
		String pCurrentPage = request.getParameter("page");
		int currentPage =  pCurrentPage == null?	1: Integer.parseInt(pCurrentPage);
		
		
		String theater = request.getParameter("theater") =="" ? null :  request.getParameter("theater") ;
		String qna = request.getParameter("qna")=="" ? null :   request.getParameter("qna") ;
		String searchWord = request.getParameter("searchWord") == "" ? null :  request.getParameter("searchWord");
		
			LostService service = new  LostService();		
		
			PageList2 notice =  service.qna(currentPage ,theater,qna,searchWord);		
			

			request.setAttribute("notice", notice ); 

		return "/supportLost";
	}
}