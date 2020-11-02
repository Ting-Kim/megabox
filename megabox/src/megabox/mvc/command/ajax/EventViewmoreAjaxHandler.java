package megabox.mvc.command.ajax;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import megabox.mvc.command.AjaxHandler;
import megabox.mvc.model.EventDTO;
import megabox.mvc.service.ajax.EventAjaxService;
import net.sf.json.JSONObject;



public class EventViewmoreAjaxHandler implements AjaxHandler{

	@Override
	public void process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		int endNum = Integer.parseInt(request.getParameter("endNum"));
		System.out.println(endNum);
		try {
			EventAjaxService service =  EventAjaxService.getInstance();
					//					**** service 로 이동	
			List<EventDTO> list = service.selectevent(endNum);
			// ArrayList<EventDTO> 가져온걸 list 로 반환
			
			
			
			 JSONObject jsonObj = new JSONObject();
			 jsonObj.put("list", list); PrintWriter
			 pw = response.getWriter();
			 pw.println(jsonObj);
			 
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		//EventAjaxService themore = EventAjaxService.get
	}
		

}
