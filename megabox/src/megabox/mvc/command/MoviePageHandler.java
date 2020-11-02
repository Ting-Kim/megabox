package megabox.mvc.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import megabox.mvc.model.MovieDTO;
import megabox.mvc.service.MoviePageService;

public class MoviePageHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
			String pageName = request.getParameter("name");
			MoviePageService service = new MoviePageService();
			List<MovieDTO> list = null;
			list=service.select(pageName);
			request.setAttribute("list", list);
			return "/movie";
	}
}
