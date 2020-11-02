package megabox.mvc.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import megabox.mvc.model.EventDTO;
import megabox.mvc.service.EventService;

public class EventContentHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int num = request.getParameter("num")==null?0:Integer.parseInt(request.getParameter("num"));
		try {
			EventService service = EventService.getInstance();
					//					**** service 로 이동
			EventDTO dto = service.infoselect(num);
			// ArrayList<EventDTO> 가져온걸 list 로 반환
			request.setAttribute("dto", dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/e_boardContent";
	}

}
