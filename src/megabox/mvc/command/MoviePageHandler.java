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
//			List<MovieDTO> list = service.메서드만들어야됨();
			if (pageName ==null) {
				//모든영화 순위별로 뿌려주는 코딩해야됨
				
			}else if (pageName.equals("comingsoon")) {
				//개봉전인 영화(순위) 뿌려주는 코딩해야됨
				
			}else if (pageName.equals("film")) {
				//film 소사이어티 관련(순위) 영화뿌려주는 코딩
				
			}else if (pageName.equals("classic")) {
				// classic 관련(순위)  뿌려주는 코딩해야됨
			}
			return "/movie";
	}
}
