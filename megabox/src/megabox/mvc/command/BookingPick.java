package megabox.mvc.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import megabox.mvc.model.CalendarDTO;
import megabox.mvc.model.MovieDTO;
import megabox.mvc.model.TheaterListDTO;
import megabox.mvc.service.MoviePageService;
import megabox.mvc.service.ScreenFirstPageService;
import megabox.mvc.service.TheaterListService;

public class BookingPick implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		MoviePageService service = new MoviePageService();
		ScreenFirstPageService screenTableService = new ScreenFirstPageService();
		String name = request.getParameter("name");
		List<MovieDTO> list = service.select(name);
		TheaterListService service2 = new TheaterListService();
		List<TheaterListDTO> list2 = service2.select();
		List<TheaterListDTO> list3 = service2.select2();
		
		List<CalendarDTO> calendarList =  screenTableService.calendarSelect();
		request.setAttribute("calendarList", calendarList);
		request.setAttribute("list", list);
		request.setAttribute("theater", list2);
		request.setAttribute("location", list3);
		return "/iframe/pick";
	}

}
