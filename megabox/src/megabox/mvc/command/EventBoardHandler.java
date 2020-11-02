package megabox.mvc.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import megabox.mvc.model.EventListView;
import megabox.mvc.service.EventService;

public class EventBoardHandler implements CommandHandler{

	   @Override
	   public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
	      //System.out.println("freeListHandler 요청");
		  String search = request.getParameter("search");
	      
		  if (search=="") {
			search =null;
		}
		  
	      String pCurrentPage = request.getParameter("page"); // ?page 뒤에 숫자
	      
	      int currentPage = 1;
	      if(pCurrentPage != null) {
	         currentPage = Integer.parseInt(pCurrentPage);
	      }
	      EventService freeListService = EventService.getInstance();
	      
	      EventListView view = freeListService.getFreeList(currentPage,search);
	      //request.setAttribute("search", search);
	      request.setAttribute("view", view);

	      
	      //	
		
		return "/win_board";
	}

}
