package megabox.mvc.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import megabox.mvc.model.CalendarDTO;
import megabox.mvc.model.ScreenMovieDTO;
import megabox.mvc.model.ScreenTableDTO;
import megabox.mvc.model.TheaterInfoDTO;
import megabox.mvc.service.ScreenTableService;
import megabox.mvc.service.TheaterInfoService;

public class TheaterInfoHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("TheaterInfoHandler.process() 호출됨..");
		
		int seqBranch = Integer.parseInt(request.getParameter("branchSeq"));
		int pageNum = Integer.parseInt(request.getParameter("pageNum"));
		String calendarDate = request.getParameter("calendarDate");

		TheaterInfoService infoService = new TheaterInfoService();
		ScreenTableService screenTableService = new ScreenTableService();

		List<TheaterInfoDTO> titleList = infoService.infoSelect(seqBranch); 
		List<TheaterInfoDTO> TheaterList = infoService.listSelect(); 
		List<TheaterInfoDTO> facilityList = infoService.facilitySelect(seqBranch); 
		List<TheaterInfoDTO> floorList = infoService.floorSelect(seqBranch); 
		List<TheaterInfoDTO> parkList = infoService.parkSelect(seqBranch); 
		List<TheaterInfoDTO> trafficSelect = infoService.trafficSelect(seqBranch); 
		List<TheaterInfoDTO> theaterNoticeSelect = infoService.theaterNoticeSelect(seqBranch, pageNum);
		List<ScreenTableDTO> screenTableList = screenTableService.screenTableSelect(seqBranch);
		List<CalendarDTO> calendarList = screenTableService.calendarSelect();
		List<ScreenMovieDTO> screenMovieList = screenTableService.screenMovieSelect(seqBranch, calendarDate);

		request.setAttribute("titleList", titleList);
		request.setAttribute("TheaterList", TheaterList);
		request.setAttribute("facilityList", facilityList);
		request.setAttribute("floorList", floorList);
		request.setAttribute("parkList", parkList);
		request.setAttribute("trafficList", trafficSelect);
		request.setAttribute("theaterNoticeList", theaterNoticeSelect);
		request.setAttribute("calendarList", calendarList);
		request.setAttribute("screenMovieList", screenMovieList);
		
		return "/theater/theaterInfo";
		
		
	}
	
}
