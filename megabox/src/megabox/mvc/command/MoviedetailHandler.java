package megabox.mvc.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import megabox.mvc.model.MovieDTO;
import megabox.mvc.service.MoviePageService;

public class MoviedetailHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int movieNum =Integer.parseInt(request.getParameter("movie"));
		MoviePageService service = new MoviePageService();
		MovieDTO dto = service.printMovie(movieNum);
		MovieDTO dto2 =service.printDate(movieNum);
		request.setAttribute("dto", dto);
		request.setAttribute("dto2", dto2);
		return "/movie-detail";
	}
}
