package beepbeep.member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.util.JdbcUtil;


public class MemberAjaxDAO {
	private static MemberAjaxDAO instance = new MemberAjaxDAO();
	
	public static MemberAjaxDAO getInstance() {
		return instance;
	}
	private MemberAjaxDAO() {}
	
	PreparedStatement pstmt;
	ResultSet rs;
	
	public int checkedPhone(Connection conn, String tel) throws SQLException {
		String sql = "select count(*) from membert where phone = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, tel);
			rs = pstmt.executeQuery();
			int result = 0;
			if(rs.next()) {
				result = rs.getInt(1);
			}

			return result;
			
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		
	}
	public int checkedId(Connection conn, String id) throws SQLException {
		String sql = "select count(*) from membert where id = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			int result = 0;
			if(rs.next()) {
				result = rs.getInt(1);
			}
			return result;
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		
	}
	
	
	
	
}
