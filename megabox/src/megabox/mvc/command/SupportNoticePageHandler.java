package megabox.mvc.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import megabox.mvc.model.NoticeDTO;
import megabox.mvc.service.NoticeService;

public class SupportNoticePageHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
	
		int seqNotice= request.getParameter("seqNotice")==null ? 0 : Integer.parseInt(request.getParameter("seqNotice"));
		


	try {
		NoticeService service =  new NoticeService();
		NoticeDTO  list =  service.noticePage(seqNotice);
		NoticeDTO  list2 =  service.noticePage2(seqNotice);
		NoticeDTO  list3 =  service.noticePage3(seqNotice);
   
    request.setAttribute("list", list );
    request.setAttribute("list2", list2 );
    request.setAttribute("list3", list3 );
   
		} catch (Exception e) {
				e.printStackTrace();
			}
			
		return "/supportNoticePage";
	}
	
}



