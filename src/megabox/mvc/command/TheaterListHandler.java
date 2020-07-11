package megabox.mvc.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import megabox.mvc.model.TheaterListDTO;
import megabox.mvc.service.TheaterListService;

public class TheaterListHandler  implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("TheaterListHandler.process() 호출됨.");
		
		try {
			TheaterListService service = new TheaterListService();
			List<TheaterListDTO> list = service.select();
			request.setAttribute("list", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/theater/list";
	}

}
