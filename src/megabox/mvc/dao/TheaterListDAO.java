package megabox.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JdbcUtil;

import megabox.mvc.model.TheaterListDTO;

public class TheaterListDAO {
	// 싱글톤
	private static TheaterListDAO dao = null;
	private TheaterListDAO() {}
	public static TheaterListDAO getInstance() {
		if (dao == null) {
			dao = new TheaterListDAO();
		}
		return dao;
	}
	
	// 극장(지점) 출력
	public List<TheaterListDTO> TheaterList(Connection conn){
		
		String sql = " select * from BRANCH ";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<TheaterListDTO> list = new ArrayList<>();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			TheaterListDTO dto = null;
			
			while (rs.next()) {
				dto = new TheaterListDTO();
				dto.setSeq_branch(rs.getInt("seq_branch"));
				dto.setSeq_loc(rs.getInt("seq_loc"));
				dto.setBranch(rs.getString("branch"));
				list.add(dto);
				
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}finally {
			JdbcUtil.close(pstmt);
			// try { pstmt.close();} catch (SQLException e) {	e.printStackTrace();	}
			try {rs.close();    } catch (SQLException e) {	e.printStackTrace();}
			try {conn.close();  } catch (SQLException e) {	e.printStackTrace();}
		}
		return list;
	}
	
}
