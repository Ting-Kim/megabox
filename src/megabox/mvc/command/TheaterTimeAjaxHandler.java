package megabox.mvc.command;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import megabox.mvc.model.CalendarDTO;
import megabox.mvc.model.ScreenMovieDTO;
import megabox.mvc.model.ScreenTableDTO;
import megabox.mvc.service.TheaterTimeAjaxService;
import net.sf.json.JSONObject;

public class TheaterTimeAjaxHandler implements AjaxHandler{

	@Override
	public void process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String calendar = request.getParameter("calendar");
		int seqBranch = Integer.parseInt(request.getParameter("branchSeq"));
		
		System.out.println(calendar);	//	test
		System.out.println(seqBranch);	//	test
		
		TheaterTimeAjaxService screenTableService = TheaterTimeAjaxService.getInstance();
		
		System.out.println("ajax 핸들러 호출됨.");
		
		List<ScreenMovieDTO> screenMovieList = screenTableService.movieTimeTable(seqBranch, calendar);
		List<ScreenTableDTO> screenTableList = screenTableService.screenTimeTable(seqBranch, calendar);		
		List<ScreenMovieDTO> screenTheaterList = screenTableService.theaterTimeTable(seqBranch, calendar);
		
		
		JSONObject jsonObj = new JSONObject();
		jsonObj.put("screenMovieList", screenMovieList);
		jsonObj.put("screenTableList", screenTableList);
		jsonObj.put("screenTheaterList", screenTheaterList);
		PrintWriter pw = response.getWriter();
		pw.println(jsonObj);
	}

}
