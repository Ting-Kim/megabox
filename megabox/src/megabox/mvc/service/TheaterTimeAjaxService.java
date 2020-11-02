package megabox.mvc.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;

import megabox.mvc.dao.ScreenFirstPageDAO;
import megabox.mvc.dao.ScreenTableDAO;
import megabox.mvc.model.CalendarDTO;
import megabox.mvc.model.ScreenMovieDTO;
import megabox.mvc.model.ScreenTableDTO;

public class TheaterTimeAjaxService {
	private static TheaterTimeAjaxService instance = new TheaterTimeAjaxService();
	
	public static TheaterTimeAjaxService getInstance() {
		return instance;
	}
	
	private TheaterTimeAjaxService() {}
	
	public List<ScreenMovieDTO> movieTimeTable(int seqBranch, String calendarDate) throws NamingException, SQLException {
		Connection conn = ConnectionProvider.getConnection();
		
		ScreenTableDAO dao = ScreenTableDAO.getInstance();
		List<ScreenMovieDTO> screenMovieList = dao.ScreenMovieList(seqBranch, calendarDate);
		
		return screenMovieList;
	}
	
	public List<ScreenTableDTO> screenTimeTable (int seqBranch, String calendarDate) throws NamingException, SQLException {
		Connection conn = ConnectionProvider.getConnection();
		
		ScreenTableDAO dao = ScreenTableDAO.getInstance();
		List<ScreenTableDTO> screenTableList = dao.ScreenTableList(seqBranch, calendarDate);
		
		return screenTableList;
	}
	
	public List<ScreenMovieDTO> theaterTimeTable (int seqBranch, String calendarDate) throws NamingException, SQLException {
		Connection conn = ConnectionProvider.getConnection();
		
		ScreenTableDAO dao = ScreenTableDAO.getInstance();
		List<ScreenMovieDTO> theaterTimeList = dao.ScreenTheaterList(seqBranch, calendarDate);
		
		return theaterTimeList;
	}
}
