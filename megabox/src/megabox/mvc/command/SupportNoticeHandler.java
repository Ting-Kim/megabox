package megabox.mvc.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import megabox.mvc.service.NoticeService;
import megabox.mvc.service.PageList;

public class SupportNoticeHandler implements CommandHandler{


	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int seq= request.getParameter("seq")==null ? 0 : Integer.parseInt(request.getParameter("seq"));
		
		String pCurrentPage = request.getParameter("page");
		int currentPage =  pCurrentPage == null?	1: Integer.parseInt(pCurrentPage);
		


			NoticeService service =new  NoticeService();
			
			PageList notice =  service.selectPage(currentPage, seq);		
		    request.setAttribute("notice", notice ); //veiw는 PageList객체
		    
		       
		return "/supportNotice";
	}
}
