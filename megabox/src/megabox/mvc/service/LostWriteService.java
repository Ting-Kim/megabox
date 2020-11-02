package megabox.mvc.service;

import java.sql.Connection;
import java.util.List;

import com.util.ConnectionProvider;

import megabox.mvc.dao.LostWriteDAO;
import megabox.mvc.model.LostWriteDTO;

public class LostWriteService {

	public void writeLost(String theater, String name, String tel, String email, String content, String pwd,String title,  int Nomember ,int MemberSeq) {
		
		LostWriteDAO dao = LostWriteDAO.getInstance();
	    try(Connection conn = ConnectionProvider.getConnection()) {
  	
	    //극장명을 seq로 바꿔옴
	    int seq_branch = dao.theater(conn , theater); 
	    System.out.println("극장이름 찍히나 : " + theater);
	    System.out.println("r극장번호 찍히나  : " +seq_branch);
	   
	    
	    //member테이블에 비회원 정보 추가
		  dao.insertMember(conn, name, tel,  pwd);

  
		  int seq_member;
		
		  //글 쓴 비회원의 seq_member을 받아옴
		   if (Nomember == 0) {
			    seq_member= dao.seqNmember(conn);
		//회원일경우 등록되어있는 seq_member의 값을 받아옴
		   }else {  seq_member = MemberSeq ;  }


		  //비회원게시글등록
		   dao.write(conn, seq_branch, seq_member , name, tel, email, content, pwd,title);
	    
	    } catch (Exception e) {
	       throw new RuntimeException(e);
	    }
	 }
}
