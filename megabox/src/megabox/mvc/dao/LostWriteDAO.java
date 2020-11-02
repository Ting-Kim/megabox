package megabox.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JdbcUtil;

import megabox.mvc.model.LostDTO;
import megabox.mvc.model.LostReplyDTO;
import megabox.mvc.model.LostWriteDTO;
import megabox.mvc.model.StoreInfoDTO;

public class LostWriteDAO {
	
	private static LostWriteDAO dao = null;
	private LostWriteDAO() {};
	public static LostWriteDAO getInstance() {
		if( dao == null ) {
			dao = new LostWriteDAO();
		}
		return dao;
	}

	//극장명을 받아서 seq로 변환
	public int theater(Connection conn, String theater) throws SQLException {


		PreparedStatement pstmt = null;
		ResultSet rs = null;

	
		String sql = "select seq_branch from  branch where regexp_like(branch , ?  ) ";	
	
		
		try {
			pstmt = conn.prepareStatement(sql);		
			pstmt.setString(1, theater );
		
			rs = pstmt.executeQuery();
			rs.next();


			return  rs.getInt(1);    
				      	            
		      } finally {
		         JdbcUtil.close(rs);
		         JdbcUtil.close(pstmt);
		      }		

	}
	
	//비회원 멤버테이블에  정보 추가
	public void insertMember(Connection conn, String name, String tel, String pwd) throws SQLException {
		

		PreparedStatement pstmt = null;
		LostWriteDTO dto = null;
		
		//비회원의 생년월일은 게시글 등록시 000000으로 처리
		
		String sql = "insert into member (seq_member, name, tel,   pwd ,  birth, seq_memgrade, seq_mtype)  " ;				 
				sql+= "values(seq_member.nextval,  ?   , ?  ,  ?  , 000000   ,  1  ,  2  )    ";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			dto = new LostWriteDTO();		
					
				pstmt.setString(1, name);	
				pstmt.setString(2, tel);
				pstmt.setString(3, pwd);
				
				pstmt.executeUpdate();

		      } finally {
		    
		         JdbcUtil.close(pstmt);
		      }
	}

	
//비회원의 seq_member구함하기	
	public int seqNmember(Connection conn) throws SQLException {
		
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		LostWriteDTO dto = null;
		
	
	String sql = " select seq_member from member where seq_member =(select max(seq_member) from member) " ;
	
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {

				  return  rs.getInt(1); 
			}
			
	
			return -1;
			 

		      } finally {
		    
		         JdbcUtil.close(pstmt);
		      }
		
	
	}
	

	

	//분실물 문의 글 쓰기
	public void write(Connection conn, int seq_branch, int seq_member, String member_name, String tel, String email, String content, String pwd ,String title) throws SQLException {
		System.out.println("seq_branch"  +  seq_branch);
		System.out.println("seq_member"  + seq_member);
		PreparedStatement pstmt = null;
		LostWriteDTO dto = null;
		
		int count ;
	
		String sql = " insert into lost_ask   (seq_lost, seq_branch, seq_member, title , pwd, isapplied, regidate, content ) ";
				sql+=    " values(seq_lost_ask.nextval, ?, ?, ?, ?, '미답변', sysdate , ?)  ";

		
		try {
			pstmt = conn.prepareStatement(sql);
			

					
				pstmt.setInt(1, seq_branch);	
				pstmt.setInt(2, seq_member);
				pstmt.setString(3, title);
				pstmt.setString(4, pwd);
				pstmt.setString(5, content);
				
				
				count = pstmt.executeUpdate();
			
		      } finally {
		    
		         JdbcUtil.close(pstmt);
		      }
		
		
		
		
	}

	


}
