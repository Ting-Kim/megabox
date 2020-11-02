package megabox.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import megabox.mvc.model.MemberInfoDTO;

public class MemberInfoDAO {
	private static MemberInfoDAO dao = null;
	private MemberInfoDAO() {}
	public static MemberInfoDAO getInstance() {
		if (dao == null) {
			dao = new MemberInfoDAO();
		}
		return dao;
	}
	
	//회원가입
	public int newMember(Connection conn, MemberInfoDTO dto) {
		PreparedStatement pstmt =null;
		ResultSet rs = null;
		String sql = " Insert into member(seq_member,seq_mtype,seq_memgrade,m_id,name,tel,email,pwd,birth) values(seq_member.nextval,1,2,?,?,?,?,?,?)";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, dto.getM_id());
			pstmt.setString(2, dto.getName());
			pstmt.setString(3, dto.getTel());
			pstmt.setString(4, dto.getEmail());
			pstmt.setString(5, dto.getPwd());
			pstmt.setString(6, dto.getBirth());
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if (rs!=null)rs.close();
				if (pstmt!=null)pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return -1; //오류날경우
	}
	
	public int chkId(Connection conn, String id) { // 아이디 존재하는지 체크하는 코딩
		PreparedStatement pstmt =null;
		ResultSet rs = null;
		String sql = " select * from MEMBER where M_ID = ? ";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs= pstmt.executeQuery();
			if (rs.next()) {
				return 0; // 이미 존재하는 회원
			}else {
				return 1;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if (rs!=null)rs.close();
				if (pstmt!=null)pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return -1; //오류날경우
	}
	public MemberInfoDTO logIn(Connection conn, String id, String pwd) { // 로그인할때 체크
		PreparedStatement pstmt =null;
		ResultSet rs =null;
		MemberInfoDTO dto = new MemberInfoDTO();
		String sql ="select * from member join member_grade on member.seq_memgrade=member_grade.seq_memgrade where m_id = ? and pwd = ? ";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			rs =pstmt.executeQuery();
			if (rs.next()) {
				dto.setM_seq(rs.getInt("seq_member"));
				dto.setType(rs.getInt("seq_mtype"));
				dto.setGrade(rs.getString("grade"));
				dto.setM_id(rs.getString("m_id"));
				dto.setPwd(rs.getString("pwd"));
				dto.setName(rs.getString("name"));
				dto.setTel(rs.getString("tel"));
				dto.setEmail(rs.getString("email"));
				dto.setBirth(rs.getString("birth"));
				dto.setPoint(rs.getInt("POINT"));
				dto.setMem_grade(rs.getInt("SEQ_MEMGRADE"));
			}else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if (rs!=null)rs.close();
				if (pstmt!=null)pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return dto; //회원정보 리턴
	}
	public MemberInfoDTO findUserPwd(Connection conn, String name, String tel, String id) {
		PreparedStatement pstmt =null;
		ResultSet rs =null;
		MemberInfoDTO dto = new MemberInfoDTO();
		String sql ="select * from member where name=? and tel = ? and m_id = ?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, tel);
			pstmt.setString(3, id);
			rs =pstmt.executeQuery();
			if (rs.next()) {
				dto.setM_id(rs.getString("m_id"));
			}else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if (rs!=null)rs.close();
				if (pstmt!=null)pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return dto; //존재하면 pwd 리턴
	}
	public MemberInfoDTO findUserId(Connection conn, String name, String birth, String tel) {
		PreparedStatement pstmt =null;
		ResultSet rs =null;
		MemberInfoDTO dto = new MemberInfoDTO();
		String sql ="select m_id from member where name = ? and birth= ? and tel = ?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, birth);
			pstmt.setString(3, tel);
			rs =pstmt.executeQuery();
			if (rs.next()) {
				dto.setM_id(rs.getString("m_id"));
			}else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if (rs!=null)rs.close();
				if (pstmt!=null)pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return dto; //존재하면 id리턴
	}
	public int changePwd(Connection conn, String pwd, String m_id) {
		PreparedStatement pstmt =null;
		int result =-1;
		String sql ="update member set pwd = ? where m_id = ?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, pwd);
			pstmt.setString(2, m_id);
			result =pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if (pstmt!=null)pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result; //존재하면 id리턴
	}
	public int chkTel(Connection conn, String tel) {
		PreparedStatement pstmt =null;
		ResultSet rs = null;
		String sql = " select * from MEMBER where tel = ? ";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, tel);
			rs= pstmt.executeQuery();
			if (rs.next()) {
				return 0; // 이미 존재하는 회원
			}else {
				return 1;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if (rs!=null)rs.close();
				if (pstmt!=null)pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return -1; //오류날경우
	}
}
