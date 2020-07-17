package megabox.mvc.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import megabox.mvc.model.TheaterInfoDTO;
import megabox.mvc.service.TheaterInfoService;

public class TheaterInfoHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("TheaterInfoHandler.process() 호출됨..");
		
		int seqBranch = Integer.parseInt(request.getParameter("branchSeq"));
		System.out.println(seqBranch);
		TheaterInfoService infoService = new TheaterInfoService();
		List<TheaterInfoDTO> titleList = infoService.infoSelect(seqBranch); 
		List<TheaterInfoDTO> facilityList = infoService.facilitySelect(seqBranch); 
		List<TheaterInfoDTO> floorList = infoService.floorSelect(seqBranch); 
		List<TheaterInfoDTO> parkList = infoService.parkSelect(seqBranch); 
		List<TheaterInfoDTO> trafficSelect = infoService.trafficSelect(seqBranch); 
		List<TheaterInfoDTO> theaterNoticeSelect = infoService.theaterNoticeSelect(seqBranch); 
		request.setAttribute("titleList", titleList);
		request.setAttribute("facilityList", facilityList);
		request.setAttribute("floorList", floorList);
		request.setAttribute("parkList", parkList);
		request.setAttribute("trafficList", trafficSelect);
		request.setAttribute("theaterNoticeList", theaterNoticeSelect);
		System.out.println("dd");
		
		return "/theater/theaterInfo";
		
		
	}
	
}
