package megabox.mvc.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import megabox.mvc.model.MovieDTO;
import megabox.mvc.model.ScreenMovieDTO;
import megabox.mvc.service.MoviePageService;

public class BookingSeat implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int movie =Integer.parseInt( request.getParameter("movie"));//movie seq 
		int time =Integer.parseInt( request.getParameter("time")); //time seq
		MoviePageService service = new MoviePageService();
		MovieDTO dto = service.beforePay(movie,time);
		List<ScreenMovieDTO> list = service.movieSeat(movie);
		request.setAttribute("seat", list);
		request.setAttribute("content", dto);
		return "/iframe/seat";
	}

}
