package megabox.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.util.ConnectionProvider;

import megabox.mvc.model.CalendarDTO;
import megabox.mvc.model.ScreenMovieDTO;
import megabox.mvc.model.ScreenTableDTO;

public class ScreenTableDAO {
	// 싱글톤 방식
	private static ScreenTableDAO dao = null;
	private ScreenTableDAO() {}
	public static ScreenTableDAO getInstance() {
		if (dao == null) {
			dao = new ScreenTableDAO();
		}
		return dao;
	}

	public List<CalendarDTO> CalendarList(){

		String sql = " select rownum, seq_calendar, calendar, to_char(calendar, 'dy') weekday from calendar"
				+ " where  calendar >= sysdate-1 and rownum < 33";

		Connection conn = null;
		Statement stmt = null;
		ArrayList<CalendarDTO> calendarList = new ArrayList<CalendarDTO>();
		CalendarDTO dto = null;
		ResultSet rs = null;

		try {
			conn = ConnectionProvider.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			SimpleDateFormat sdfd = new SimpleDateFormat("yyyy.MM.dd");
			
			
			while(rs.next()) {
				dto = new CalendarDTO();

				dto.setSeq_calendar(rs.getInt("seq_calendar"));
				dto.setCalendar(sdfd.format(rs.getDate("calendar")));
				dto.setWeekday(rs.getString("weekday"));
				

				calendarList.add(dto);		
			}
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {rs.close();} catch (SQLException e) {e.printStackTrace();}
			try {stmt.close();} catch (SQLException e) {e.printStackTrace();}
			try {conn.close();} catch (SQLException e) {e.printStackTrace();}
		} 
		return calendarList;
	}

	public List<ScreenTableDTO> ScreenTableList(int seqBranch, String calendarDate){

		String sql = " select * "
				+ " from screen_table "
				+ " where seq_branch = ? and to_char(SCREEN_TIME, 'yyMMdd') = ? ";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ArrayList<ScreenTableDTO> tableList = new ArrayList<ScreenTableDTO>();
		ScreenTableDTO dto = null;
		ResultSet rs = null;


		try {
			conn = ConnectionProvider.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, seqBranch);
			pstmt.setString(2, calendarDate);
			rs = pstmt.executeQuery();
			SimpleDateFormat sdfd = new SimpleDateFormat("yyyy.MM.dd");
			SimpleDateFormat sdft = new SimpleDateFormat("HH:mm");

			while (rs.next()) {
				dto = new ScreenTableDTO();

				dto.setSeq_branch(seqBranch);
				dto.setBranch(rs.getString("branch"));
				dto.setSeq_movie(rs.getInt("seq_movie"));
				dto.setMovie_name(rs.getString("movie_name"));
				dto.setSeq_theater(rs.getInt("seq_theater"));
				dto.setTheater(rs.getString("theater"));
				dto.setSeq_age(rs.getInt("seq_age"));
				dto.setaGrade(rs.getString("agrade"));
				dto.setScreen_date(sdfd.format(rs.getTimestamp("screen_time")));
				dto.setScreen_time(sdft.format(rs.getTimestamp("screen_time")));
				dto.setSeat(rs.getInt("seat"));
				dto.setRunTime(rs.getInt("runtime"));
				dto.setParseRunTime(rs.getInt("runtime")*60*1000);	//	 분을 밀리초로 변환..

				tableList.add(dto);				
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {rs.close();} catch (SQLException e) {e.printStackTrace();}
			try {pstmt.close();} catch (SQLException e) {e.printStackTrace();}
			try {conn.close();} catch (SQLException e) {e.printStackTrace();}
		} 

		return tableList;

	}
	
	public List<ScreenMovieDTO> ScreenMovieList(int seqBranch, String calendarDate){

		String sql = " select distinct SEQ_BRANCH, BRANCH, SEQ_MOVIE " + 
				"  , MOVIE_NAME, to_char(SCREEN_TIME, 'yy/MM/dd') screenday, runtime " + 
				"from screen_table "
				+ " where seq_branch = ? and to_char(SCREEN_TIME, 'yyMMdd') = ? ";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ArrayList<ScreenMovieDTO> screenMovieList = new ArrayList<ScreenMovieDTO>();
		ScreenMovieDTO dto = null;
		ResultSet rs = null;

		System.out.println(calendarDate);
		try {
			conn = ConnectionProvider.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, seqBranch);
			pstmt.setString(2, calendarDate);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				dto = new ScreenMovieDTO();

				dto.setSeq_branch(seqBranch);
				dto.setBranch(rs.getString("branch"));
				dto.setSeq_movie(rs.getInt("seq_movie"));
				dto.setMovie_name(rs.getString("movie_name"));
				dto.setScreenDay(rs.getString("screenday"));
				dto.setRunTime(rs.getInt("runtime"));


				screenMovieList.add(dto);				
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {rs.close();} catch (SQLException e) {e.printStackTrace();}
			try {pstmt.close();} catch (SQLException e) {e.printStackTrace();}
			try {conn.close();} catch (SQLException e) {e.printStackTrace();}
		} 

		return screenMovieList;

	}
	
	// 영화는 jsp에서 c:if 로..
	public List<ScreenMovieDTO> ScreenTheaterList(int seqBranch, String calendarDate){

		String sql = " select distinct SEQ_BRANCH, BRANCH, SEQ_THEATER, THEATER, SEQ_MOVIE " + 
				" , MOVIE_NAME, to_char(SCREEN_TIME, 'yy.MM.dd') screenday, SEAT, RUNTIME " + 
				" from screen_table " + 
				" where seq_branch = ? and to_char(SCREEN_TIME, 'yyMMdd') = ?";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ArrayList<ScreenMovieDTO> screenTheaterList = new ArrayList<ScreenMovieDTO>();
		ScreenMovieDTO dto = null;
		ResultSet rs = null;


		try {
			conn = ConnectionProvider.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, seqBranch);
			pstmt.setString(2, calendarDate);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				dto = new ScreenMovieDTO();

				dto.setSeq_branch(seqBranch);
				dto.setBranch(rs.getString("branch"));
				dto.setSeq_theater(rs.getInt("seq_theater"));
				dto.setTheater(rs.getString("theater"));
				dto.setSeq_movie(rs.getInt("seq_movie"));
				dto.setMovie_name(rs.getString("movie_name"));
				dto.setScreenDay(rs.getString("screenday"));
				dto.setRunTime(rs.getInt("runtime"));
				dto.setSeats(rs.getInt("seat"));


				screenTheaterList.add(dto);				
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {rs.close();} catch (SQLException e) {e.printStackTrace();}
			try {pstmt.close();} catch (SQLException e) {e.printStackTrace();}
			try {conn.close();} catch (SQLException e) {e.printStackTrace();}
		} 

		return screenTheaterList;

	}
	
	
	
}
