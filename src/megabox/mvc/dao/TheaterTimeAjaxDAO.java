package megabox.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import megabox.mvc.model.ScreenMovieDTO;

public class TheaterTimeAjaxDAO {
	private static TheaterTimeAjaxDAO instance = new TheaterTimeAjaxDAO();
	
	public static TheaterTimeAjaxDAO getInstance() {
		return instance;
	}
	private TheaterTimeAjaxDAO() {}
	
	PreparedStatement pstmt;
	ResultSet rs;
	
	public List<ScreenMovieDTO> screenMovieList(Connection conn, String calendarDate){
		
		String sql = "";
		
		ArrayList<ScreenMovieDTO> list = new ArrayList<ScreenMovieDTO>();
		
		
		return list;
		
	}
	
}
