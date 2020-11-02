package megabox.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.ConnectionProvider;

import megabox.mvc.model.PartTimeDTO;
import megabox.mvc.model.ScreenChargeDTO;
import megabox.mvc.model.ScreenMovieDTO;
import megabox.mvc.model.TheaterGradeDTO;

public class ScreenChargeDAO {
	public List<ScreenChargeDTO> screenChargeList(int seqBranch){

		String sql = " SELECT * FROM SC_CHARGE_TABLE "
				+ " WHERE SEQ_BRANCH = ? ";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ArrayList<ScreenChargeDTO> screenChargeList = new ArrayList<ScreenChargeDTO>();
		ScreenChargeDTO dto = null;
		ResultSet rs = null;


		try {
			conn = ConnectionProvider.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, seqBranch);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				dto = new ScreenChargeDTO();

				dto.setSeq_branch(seqBranch);
				dto.setSeq_charge(rs.getInt("seq_charge"));
				dto.setMovie_charge(rs.getInt("movie_charge"));
				dto.setSeq_age(rs.getInt("seq_age"));
				dto.setAge(rs.getString("age"));
				dto.setSeq_part_time(rs.getInt("seq_part_time"));
				dto.setPart_time(rs.getString("part_time"));
				dto.setSeq_week(rs.getInt("seq_week"));
				dto.setWeek_sort(rs.getString("week_sort"));
				dto.setSeq_grade(rs.getInt("seq_grade"));
				dto.setTheater_grade(rs.getString("theater_grade"));

				screenChargeList.add(dto);				
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {rs.close();} catch (SQLException e) {e.printStackTrace();}
			try {pstmt.close();} catch (SQLException e) {e.printStackTrace();}
			try {conn.close();} catch (SQLException e) {e.printStackTrace();}
		} 

		return screenChargeList;

	}
	
	public List<TheaterGradeDTO> theaterGradeList(int seqBranch){

		String sql = " SELECT * FROM THEATER_GRADE_TABLE "
				+ " WHERE SEQ_BRANCH = ? ";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ArrayList<TheaterGradeDTO> theaterGradeList = new ArrayList<TheaterGradeDTO>();
		TheaterGradeDTO dto = null;
		ResultSet rs = null;


		try {
			conn = ConnectionProvider.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, seqBranch);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				dto = new TheaterGradeDTO();

				dto.setSeq_branch(seqBranch);
				dto.setSeq_grade(rs.getInt("seq_grade"));
				dto.setTheater_grade(rs.getString("theater_grade"));
				
				theaterGradeList.add(dto);				
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {rs.close();} catch (SQLException e) {e.printStackTrace();}
			try {pstmt.close();} catch (SQLException e) {e.printStackTrace();}
			try {conn.close();} catch (SQLException e) {e.printStackTrace();}
		} 

		return theaterGradeList;

	}
	
	public List<PartTimeDTO> partTimeList(int seqBranch){

		String sql = " SELECT * FROM PART_TIME ";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ArrayList<PartTimeDTO> partTimeList = new ArrayList<PartTimeDTO>();
		PartTimeDTO dto = null;
		ResultSet rs = null;


		try {
			conn = ConnectionProvider.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				dto = new PartTimeDTO();
				
				dto.setSeq_part_time(rs.getInt("seq_part_time"));
				dto.setPart_time(rs.getString("part_time"));
				
				partTimeList.add(dto);				
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {rs.close();} catch (SQLException e) {e.printStackTrace();}
			try {pstmt.close();} catch (SQLException e) {e.printStackTrace();}
			try {conn.close();} catch (SQLException e) {e.printStackTrace();}
		} 

		return partTimeList;

	}
	
}
