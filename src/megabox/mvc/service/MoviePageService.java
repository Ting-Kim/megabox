package megabox.mvc.service;

import java.sql.Connection;
import java.util.List;

import com.util.ConnectionProvider;

import megabox.mvc.dao.MovieDAO;
import megabox.mvc.model.MovieDTO;

public class MoviePageService {
	public List<MovieDTO> select(String name) {
		MovieDAO dao = MovieDAO.getInstance();
		try (Connection conn = ConnectionProvider.getConnection()){
			List<MovieDTO> list=null;
			if (name ==null) {
				list = dao.MovieAllList(conn, name);
			}else if(name.equalsIgnoreCase("comingsoon")) {
				list = dao.MovieComingsoon(conn, name);
			}else if(name.equalsIgnoreCase("film")) {
				list = dao.MovieFilmList(conn, name);
			}else if(name.equalsIgnoreCase("classic")) {
				list = dao.MovieClassicList(conn, name);
			}
			return list;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
}
