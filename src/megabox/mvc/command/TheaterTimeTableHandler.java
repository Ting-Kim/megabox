package megabox.mvc.command;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import megabox.mvc.model.ScreenMovieDTO;
import megabox.mvc.model.ScreenTableDTO;
import megabox.mvc.service.ScreenTableService;
import net.sf.json.JSONObject;

public class TheaterTimeTableHandler implements AjaxHandler{

	@Override
	public void process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String calendarDate = request.getParameter("calendarDate");
		int seqBranch = Integer.parseInt(request.getParameter("branchSeq"));
		ScreenTableService screenTableService = new ScreenTableService();
		
		List<ScreenTableDTO> screenTableList = screenTableService.screenTableSelect(seqBranch, calendarDate);		
		List<ScreenMovieDTO> screenMovieList = screenTableService.screenMovieSelect(seqBranch, calendarDate);
		List<ScreenMovieDTO> screenTheaterList = screenTableService.screenTheaterSelect(seqBranch, calendarDate);
		
		JSONObject jsonObj = new JSONObject();
		jsonObj.put("screenTableList", screenTableList);
		jsonObj.put("screenMovieList", screenMovieList);
		jsonObj.put("screenTheaterList", screenTheaterList);
		PrintWriter pw = response.getWriter();
		pw.println(jsonObj);
	}

}
