package megabox.mvc.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import megabox.mvc.model.CalendarDTO;
import megabox.mvc.model.PartTimeDTO;
import megabox.mvc.model.ScreenChargeDTO;
import megabox.mvc.model.ScreenMovieDTO;
import megabox.mvc.model.ScreenTableDTO;
import megabox.mvc.model.TheaterGradeDTO;
import megabox.mvc.model.TheaterInfoDTO;
import megabox.mvc.service.ScreenFirstPageService;
import megabox.mvc.service.TheaterInfoService;

public class TheaterInfoHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("TheaterInfoHandler.process() 호출됨..");
		
		int seqBranch = Integer.parseInt(request.getParameter("branchSeq"));
		int pageNum = Integer.parseInt(request.getParameter("pageNum"));

		TheaterInfoService infoService = new TheaterInfoService();
		ScreenFirstPageService screenTableService = new ScreenFirstPageService();

		List<TheaterInfoDTO> titleList = infoService.infoSelect(seqBranch); 
		List<TheaterInfoDTO> TheaterList = infoService.listSelect(); 
		List<TheaterInfoDTO> facilityList = infoService.facilitySelect(seqBranch); 
		List<TheaterInfoDTO> floorList = infoService.floorSelect(seqBranch); 
		List<TheaterInfoDTO> parkList = infoService.parkSelect(seqBranch); 
		List<TheaterInfoDTO> trafficSelect = infoService.trafficSelect(seqBranch); 
		List<TheaterInfoDTO> theaterNoticeSelect = infoService.theaterNoticeSelect(seqBranch, pageNum);
		List<CalendarDTO> calendarList = screenTableService.calendarSelect();
		List<ScreenTableDTO> screenTableList = screenTableService.screenTableSelect(seqBranch);
		List<ScreenMovieDTO> screenMovieList = screenTableService.screenMovieSelect(seqBranch);
		List<ScreenMovieDTO> screenTheaterList = screenTableService.screenTheaterSelect(seqBranch);
		List<ScreenChargeDTO> screenChargeList = screenTableService.screenChargeSelect(seqBranch);
		List<TheaterGradeDTO> theaterGradeList = screenTableService.theaterGradeSelect(seqBranch);
		List<PartTimeDTO> partTimeList = screenTableService.partTimeSelect(seqBranch);
		

		request.setAttribute("titleList", titleList);
		request.setAttribute("TheaterList", TheaterList);
		request.setAttribute("facilityList", facilityList);
		request.setAttribute("floorList", floorList);
		request.setAttribute("parkList", parkList);
		request.setAttribute("trafficList", trafficSelect);
		request.setAttribute("theaterNoticeList", theaterNoticeSelect);
		request.setAttribute("calendarList", calendarList);
		request.setAttribute("screenTableList", screenTableList);
		request.setAttribute("screenMovieList", screenMovieList);
		request.setAttribute("screenTheaterList", screenTheaterList);
		request.setAttribute("screenChargeList", screenChargeList);
		request.setAttribute("theaterGradeList", theaterGradeList);
		request.setAttribute("partTimeList", partTimeList);
		


		
		
		
		return "/theater/theaterInfo";
		
		
	}
	
}
