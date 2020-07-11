package megabox.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result=0;
		String sql = "insert into member(SEQ_MEMBER, SEQ_MTYPE, SEQ_MEMGRADE, M_ID,NAME, TEL, EMAIL, PWD, BIRTH) "
				+"value(seq_SEQ_MEMBER.nextval, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		
		
		return result;
		
	}
}
