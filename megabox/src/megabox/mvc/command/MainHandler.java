package megabox.mvc.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import megabox.mvc.model.MovieDTO;
import megabox.mvc.service.MoviePageService;

public class MainHandler implements CommandHandler{
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		MoviePageService service = new MoviePageService();
		//영화 탑 4 띄워줌
		List<MovieDTO> list = service.select();
		request.setAttribute("list", list);
		return "/main";
	}

}
