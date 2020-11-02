package megabox.mvc.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import megabox.mvc.model.EventDTO;
import megabox.mvc.service.EventService;

public class EventMainHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int type = request.getParameter("type")==null?0:Integer.parseInt(request.getParameter("type"));
		String search = request.getParameter("search");
		 if (search=="") {
				search =null;
			}
		
		try {
			EventService service =  EventService.getInstance();
					//					**** service 로 이동		
			List<EventDTO> list = service.select(type, search);
			// ArrayList<EventDTO> 가져온걸 list 로 반환
			request.setAttribute("list", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		//jsp에
		return "/event";
		
	}

}
