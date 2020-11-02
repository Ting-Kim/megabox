package megabox.mvc.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import com.util.ConnectionProvider;

import megabox.mvc.dao.MovieDAO;
import megabox.mvc.model.MovieDTO;
import megabox.mvc.model.ScreenInfoDTO;
import megabox.mvc.model.ScreenMovieDTO;

public class MoviePageService {
	public MovieDTO printMovie(int movieNum) { //영화 세부내용 dto뽑아오는 메서드
		MovieDAO dao = MovieDAO.getInstance();
		MovieDTO dto = new MovieDTO();
		try (Connection conn = ConnectionProvider.getConnection()){
			dto = dao.MovieDetail(conn,movieNum);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return dto;
	}
	public List<MovieDTO> select() { // 메인페이지 영화순위1~4등까지
		MovieDAO dao = MovieDAO.getInstance();
		List<MovieDTO> list =null;
		try(Connection conn = ConnectionProvider.getConnection()){
			 list = dao.MovieRank(conn);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return list;
	}
	public List<MovieDTO> select(String name) { //영화 페이지의 세부탭에 따라 영화 리스트 출력
		MovieDAO dao = MovieDAO.getInstance();
		try (Connection conn = ConnectionProvider.getConnection()){
			List<MovieDTO> list=null;
			if (name ==null) { 								// 전체영화 출력
				list = dao.MovieAllList(conn, name);
			}else if(name.equalsIgnoreCase("comingsoon")) { // 상영예정작 출력
				list = dao.MovieComingsoon(conn, name);
			}else if(name.equalsIgnoreCase("film")) {		//필름소사이어티 출력
				list = dao.MovieFilmList(conn, name);
			}else if(name.equalsIgnoreCase("classic")) { 	// 클래식소사이어티 출력
				list = dao.MovieClassicList(conn, name);
			}
			return list;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	public MovieDTO printDate(int movieNum) {
		MovieDAO dao = MovieDAO.getInstance();
		MovieDTO dto = new MovieDTO();
		try (Connection conn = ConnectionProvider.getConnection()){
			dto = dao.MovieRank(conn,movieNum);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return dto;
	}
	public ArrayList<ScreenInfoDTO> movieDetail(String branch,String dateScreen) {

	      
	      MovieDAO dao = MovieDAO.getInstance();
	      try (Connection conn = ConnectionProvider.getConnection()){
	         ArrayList<ScreenInfoDTO> list=null;
	      
	            list = dao.MovieDetail(conn, branch ,dateScreen);
	         
	         return list;
	      } catch (Exception e) {
	         throw new RuntimeException(e);}
	      }
	public MovieDTO beforePay(int movie, int time) {
		MovieDAO dao = MovieDAO.getInstance();
		MovieDTO dto = null;
		try (Connection conn = ConnectionProvider.getConnection()){
			dto = dao.takeContent(conn,movie,time);
			
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		
		return dto;
	}
	public List<ScreenMovieDTO> movieSeat(int movie) {
		MovieDAO dao = MovieDAO.getInstance();
		try (Connection conn = ConnectionProvider.getConnection()){
			List<ScreenMovieDTO> list = dao.MovieSeat(conn,movie);
			return list;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
}
