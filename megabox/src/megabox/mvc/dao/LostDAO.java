package megabox.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import com.util.JdbcUtil;

import megabox.mvc.model.FaQDTO;
import megabox.mvc.model.LostDTO;
import megabox.mvc.model.LostReplyDTO;
import megabox.mvc.model.NoticeDTO;
import megabox.mvc.model.StoreInfoDTO;

public class LostDAO {
	
	
	
	
	private static LostDAO dao = null;
	private LostDAO() {};
	public static LostDAO getInstance() {
		if( dao == null ) {
			dao = new LostDAO();
		}
		return dao;
	}

	
	  public int countLost(Connection conn,String theater,String qna,String searchWord ) throws SQLException {
		  
		  System.out.println("theate  :" + theater);
		  System.out.println("qna  :" + qna);
		  System.out.println("searchWord  : " + searchWord);

		   PreparedStatement pstmt = null;
		      ResultSet rs = null;
		      String sql = "";

		      try {
		    		
		    	  
			 	  //전체 출력
			     if(theater == null &&  qna ==  null &&  searchWord == null)	 {
			    		  sql  ="  	select count(*) from   ";
			    			 sql+=   	" (select rownum rn, seq_branch,seq_lost,seq_member,title,member.pwd ,isapplied ,regidate,content,tel,email,branch  ";
			    			 sql+=     	" from ( select * from branch join lost_ask using(seq_branch)  order by regidate desc ) join member using(seq_member)  )  ";
	
			    			 sql+=     	" order by seq_lost  desc ";
				
				}
					
			    
				
					
					// 지점 x, 답변상태 x , 제목검색 O       

				if(theater == null&&  qna ==  null&&  searchWord != null)	{

					  sql  = " 	  select count(*) from " ;
					  sql  +=		"  (select rownum rn, seq_branch,seq_lost,seq_member,title,member.pwd ,isapplied ,regidate,content,tel,email,branch  ";
						sql  +=		"	  from ( select * from branch join lost_ask using(seq_branch)  ";
							  sql  +=		 "       where  REGEXP_LIKE( title , ? ) order by regidate desc ) join member using(seq_member))  ";
					
							  sql  +=			"    order by seq_lost  desc  ";
				}
				
				// 지점 x, 답변상태 O , 제목검색 X       

				if(theater == null &&  qna !=  null&& searchWord == null)	{
					sql  = " 			 select count(*) from   " ;
							  sql  +=		"   (select rownum rn, seq_branch,seq_lost,seq_member,title,member.pwd ,isapplied ,regidate,content,tel,email,branch  ";
							sql  +=		" 	  from ( select * from branch join lost_ask using(seq_branch) order by regidate desc ) join member using(seq_member) ";
						  sql  +=		"       where isapplied = ?  )  ";
						  sql  +=		" 	  order by seq_lost  desc 	";	
					
				}
				
				
				// 지점 x, 답변상태 O , 제목검색 O    
				if(theater == null &&  qna !=  null&&  searchWord != null)	{
			
					sql  = "	select count(*) from  ";
							  sql  +=		" 	  (select rownum rn, seq_branch,seq_lost,seq_member,title,member.pwd ,isapplied ,regidate,content,tel,email,branch   ";
							  sql  +=		" 	from ( select * from branch join lost_ask using(seq_branch) ";
							  sql  +=		" 	 where  REGEXP_LIKE( title ,?  ) order by regidate desc ) join member using(seq_member) where isapplied = ?  )  ";
							  sql  +=		" 	  order by seq_lost  desc "	;
				}
				
					
		 
					//지점 O, 답변상태 x , 제목검색 x		
				if(theater != null &&  qna ==  null&&  searchWord == null) {
					

					sql  = "select count(*) from ";
					sql +=  "(select rownum rn, seq_branch,seq_lost,seq_member,title,member.pwd ,isapplied ,regidate,content,tel,email,branch   ";
					sql += 	  " from ( select * from branch join lost_ask using(seq_branch)  ";
				  sql +=   "      where REGEXP_LIKE( branch ,? ) order by regidate desc ) join member using(seq_member) )   ";
				  sql += 	"    order by seq_lost  desc 		";
					}
				
				
				//지점 O, 답변상태 O , 제목검색 x		
			if(theater != null &&  qna !=  null&&  searchWord == null) {
				
			
				sql  = "select count(*) from ";
				sql +=  "(select rownum rn, seq_branch,seq_lost,seq_member,title,member.pwd ,isapplied ,regidate,content,tel,email,branch   ";
				sql += 	  " from ( select * from branch join lost_ask using(seq_branch)  ";
			  sql +=   "      where REGEXP_LIKE( branch ,? ) order by regidate desc ) join member using(seq_member) where  isapplied = ?  )    ";
			  sql += 	"     order by seq_lost  desc 		";
				}
				
			//	지점 O, 답변상태 x , 제목검색 O
				if(theater != null &&  qna ==  null&& searchWord  !=null) {

			sql =		"	select count(*) from   ";
			sql +=		"	(select rownum rn, seq_branch,seq_lost,seq_member,title,member.pwd ,isapplied ,regidate,content,tel,email,branch  ";
			sql +=		"	from ( select * from branch join lost_ask using(seq_branch) ";
			sql +=	    "    where REGEXP_LIKE( branch ,? )and   REGEXP_LIKE( title , ?) order by regidate desc ) join member using(seq_member)   )  ";
			sql +=		 "   order by seq_lost  desc 	 ";
					 }

				//	지점 O, 답변상태 O , 제목검색 O
				if(theater != null&&  qna !=  null&&  searchWord  !=null) {

			sql =		"	select count(*) from   ";
			sql +=		"	(select rownum rn, seq_branch,seq_lost,seq_member,title,member.pwd ,isapplied ,regidate,content,tel,email,branch  ";
			sql +=		"	from ( select * from branch join lost_ask using(seq_branch) ";
			sql +=	    "    where REGEXP_LIKE( branch ,? )and   REGEXP_LIKE( title , ?) order by regidate desc ) join member using(seq_member)WHERE  isapplied = ?)  ";
			sql +=		 "    order by seq_lost  desc 	 ";
					 }
				


			         pstmt = conn.prepareStatement(sql);
			
					// 지점 x, 답변상태 x , 제목검색 O       

				if(theater == null &&  qna ==  null&&  searchWord != null)	{
					pstmt.setString(1, searchWord );
	
					
				}
				
				// 지점 x, 답변상태 O , 제목검색 X       

				if(theater == null &&  qna !=  null&&  searchWord == null)	{
		
					pstmt.setString(1, qna );
				
					
				}

				// 지점 x, 답변상태 O , 제목검색 O    
				if(theater == null &&  qna !=  null&& searchWord != null)	{
					pstmt.setString(1, searchWord );
			
					pstmt.setString(2, qna );
			
					
				}
				  
				
				//지점 O, 답변상태 O , 제목검색 x	
				if(theater != null &&  qna !=  null&&  searchWord == null) {
					pstmt.setString(1, theater);
		
					pstmt.setString(2, qna );
		   
				}
				
			        
				//지점 O, 답변상태 x, 제목검색 x		
			    	if(theater != null &&  qna ==  null&&  searchWord == null) {
			    		pstmt.setString(1, theater);
			        
			    	}
			    	//지점 O, 답변상태 x , 제목검색 O		
			    	if(theater != null &&  qna ==  null&&  searchWord  !=null) {
			    		pstmt.setString(1, theater);
			        	pstmt.setString(2, searchWord);
			
			    		
			    	}
			    	
			    	//지점 O, 답변상태 O , 제목검색 O		
			    	if(theater != null &&  qna !=  null&&  searchWord  !=null) {
			    		
			    		pstmt.setString(1, theater);
			        	pstmt.setString(2, searchWord);
			
			        	pstmt.setString(3, qna);
			 
			
			    	}

		         
		         rs = pstmt.executeQuery();
		         rs.next();
		         
		         return rs.getInt(1);
		      
		      
			} finally {
		         JdbcUtil.close(rs);
		         JdbcUtil.close(pstmt);
		      }

		   
	}
	

	public List<LostDTO> qna(Connection conn, int firstRow, int endRow, String theater, String qna ,String searchWord ) throws SQLException {
		

	

		  PreparedStatement pstmt = null;
	      ResultSet rs = null;
	      LostDTO dto = null;
	      
	      
	     
	      String sql = "";
	      
	      try {
	
	    	  
	 	  //전체 출력
	     if(theater == null &&  qna ==  null&&  searchWord == null)	 {
	    		  sql  ="  	select * from   ";
	    			 sql+=   	" (select rownum rn, seq_branch,seq_lost,seq_member,title,member.pwd ,isapplied ,regidate,content,tel,email,branch  ";
	    			 sql+=     	" from ( select * from branch join lost_ask using(seq_branch)  order by regidate desc ) join member using(seq_member)WHERE rownum <= ?   )  ";
	    			 sql+=   	" WHERE rn > ?";
	    			 sql+=     	" order by seq_lost  desc ";
		
		}
			
	    
		
			
			// 지점 x, 답변상태 x , 제목검색 O       

		if(theater == null&&  qna ==  null&&  searchWord != null)	{

			  sql  = " 	  select * from " ;
			  sql  +=		"  (select rownum rn, seq_branch,seq_lost,seq_member,title,member.pwd ,isapplied ,regidate,content,tel,email,branch  ";
				sql  +=		"	  from ( select * from branch join lost_ask using(seq_branch)  ";
					  sql  +=		 "       where  REGEXP_LIKE( title , ? ) order by regidate desc ) join member using(seq_member)  ";
					  sql  +=		  "      WHERE rownum <= ? ) ";
					  sql  +=			"   WHERE rn > ?  order by seq_lost  desc  ";
		}
		
		// 지점 x, 답변상태 O , 제목검색 X       

		if(theater == null &&  qna !=  null&& searchWord == null)	{
			sql  = " 			 select * from   " ;
					  sql  +=		"   (select rownum rn, seq_branch,seq_lost,seq_member,title,member.pwd ,isapplied ,regidate,content,tel,email,branch  ";
					sql  +=		" 	  from ( select * from branch join lost_ask using(seq_branch) order by regidate desc ) join member using(seq_member) ";
				  sql  +=		"        WHERE rownum <= ?  and isapplied = ?  )  ";
				 sql  +=		" 	   WHERE rn > ?";
				  sql  +=		" 	  order by seq_lost  desc 	";	
			
		}
		
		
		// 지점 x, 답변상태 O , 제목검색 O    
		if(theater == null &&  qna !=  null&&  searchWord != null)	{
	
			sql  = "	select * from  ";
					  sql  +=		" 	  (select rownum rn, seq_branch,seq_lost,seq_member,title,member.pwd ,isapplied ,regidate,content,tel,email,branch   ";
					  sql  +=		" 	from ( select * from branch join lost_ask using(seq_branch) ";
					  sql  +=		" 	 where  REGEXP_LIKE( title ,?  ) order by regidate desc ) join member using(seq_member)WHERE rownum <= ?  and isapplied = ?  )  ";
					  sql  +=		" 	WHERE rn > ?   order by seq_lost  desc "	;
		}
		
			
 
			//지점 O, 답변상태 x , 제목검색 x		
		if(theater != null &&  qna ==  null&&  searchWord == null) {
			
	
			sql  = "select *  from ";
			sql +=  "(select rownum rn, seq_branch,seq_lost,seq_member,title,member.pwd ,isapplied ,regidate,content,tel,email,branch   ";
			sql += 	  " from ( select * from branch join lost_ask using(seq_branch)  ";
		  sql +=   "      where REGEXP_LIKE( branch ,? ) order by regidate desc ) join member using(seq_member)WHERE rownum <= ?  )   ";
		  sql += 	"   WHERE rn > ?  order by seq_lost  desc 		";
			}
		
		
		//지점 O, 답변상태 O , 제목검색 x		
	if(theater != null &&  qna !=  null&&  searchWord == null) {
		
		sql  = "select * from ";
		sql +=  "(select rownum rn, seq_branch,seq_lost,seq_member,title,member.pwd ,isapplied ,regidate,content,tel,email,branch   ";
		sql += 	  " from ( select * from branch join lost_ask using(seq_branch)  ";
	  sql +=   "      where REGEXP_LIKE( branch ,? ) order by regidate desc ) join member using(seq_member)WHERE rownum <= ?   and isapplied = ?  )    ";
	  sql += 	"   WHERE rn > ?  order by seq_lost  desc 		";
		}
		
	//	지점 O, 답변상태 x , 제목검색 O
		if(theater != null &&  qna ==  null&& searchWord  !=null) {

	sql =		"	select * from   ";
	sql +=		"	(select rownum rn, seq_branch,seq_lost,seq_member,title,member.pwd ,isapplied ,regidate,content,tel,email,branch  ";
	sql +=		"	from ( select * from branch join lost_ask using(seq_branch) ";
	sql +=	    "    where REGEXP_LIKE( branch ,? )and   REGEXP_LIKE( title , ?) order by regidate desc ) join member using(seq_member)WHERE rownum <= ?  )  ";
	sql +=		 "  WHERE rn > ?   order by seq_lost  desc 	 ";
			 }

		//	지점 O, 답변상태 O , 제목검색 O
		if(theater != null&&  qna !=  null&&  searchWord  !=null) {

	sql =		"	select  *  from   ";
	sql +=		"	(select rownum rn, seq_branch,seq_lost,seq_member,title,member.pwd ,isapplied ,regidate,content,tel,email,branch  ";
	sql +=		"	from ( select * from branch join lost_ask using(seq_branch) ";
	sql +=	    "    where REGEXP_LIKE( branch ,? )and   REGEXP_LIKE( title , ?) order by regidate desc ) join member using(seq_member)WHERE rownum <= ?  and isapplied = ?)  ";
	sql +=		 "  WHERE rn > ?   order by seq_lost  desc 	 ";
			 }
		


	         pstmt = conn.prepareStatement(sql);
	      // 지점 x, 답변상태 x , 제목검색 X
	        if (theater == null&&  qna ==  null&&  searchWord == null) {
	        	pstmt.setInt(1, endRow );
				pstmt.setInt(2, firstRow );
				
	        }
	    	
			// 지점 x, 답변상태 x , 제목검색 O       

		if(theater == null &&  qna ==  null&&  searchWord != null)	{
			pstmt.setString(1, searchWord );
			pstmt.setInt(2, endRow );
			pstmt.setInt(3, firstRow );
			
			
		}
		
		// 지점 x, 답변상태 O , 제목검색 X       

		if(theater == null &&  qna !=  null&&  searchWord == null)	{
			pstmt.setInt(1, endRow );
			pstmt.setString(2, qna );
			pstmt.setInt(3, firstRow );
			
		}

		// 지점 x, 답변상태 O , 제목검색 O    
		if(theater == null &&  qna !=  null&& searchWord != null)	{
			pstmt.setString(1, searchWord );
			pstmt.setInt(2, endRow );
			pstmt.setString(3, qna );
			pstmt.setInt(4, firstRow );
			
		}
		  
		
		//지점 O, 답변상태 O , 제목검색 x	
		if(theater != null &&  qna !=  null&&  searchWord == null) {
			pstmt.setString(1, theater);
			pstmt.setInt(2, endRow );
			pstmt.setString(3, qna );
        	pstmt.setInt(4, firstRow);
		}
		
	        
		//지점 O, 답변상태 x, 제목검색 x		
	    	if(theater != null &&  qna ==  null&&  searchWord == null) {
	    		pstmt.setString(1, theater);
	        	pstmt.setInt(2, endRow );
	        	pstmt.setInt(3, firstRow);
	    	}
	    	//지점 O, 답변상태 x , 제목검색 O		
	    	if(theater != null &&  qna ==  null&&  searchWord  !=null) {
	    		pstmt.setString(1, theater);
	        	pstmt.setString(2, searchWord);
	        	pstmt.setInt(3, endRow );
				pstmt.setInt(4, firstRow );
	    		
	    	}
	    	
	    	//지점 O, 답변상태 O , 제목검색 O		
	    	if(theater != null &&  qna !=  null&&  searchWord  !=null) {
	    		
	    		pstmt.setString(1, theater);
	        	pstmt.setString(2, searchWord);
	        	pstmt.setInt(3, endRow );
	        	pstmt.setString(4, qna);
	        	pstmt.setInt(5, firstRow );
	
	    	}
		

	    	
	    	
	         rs = pstmt.executeQuery();
	        
	       
	         
	         
	         
	         if (rs.next()) {
	        	 
	        	 List<LostDTO> list = new ArrayList<>();
	        	 
	        do {
	           
	            
	            dto = new LostDTO();
				
				dto.setSeq_lost(rs.getInt("seq_lost"));
				dto.setSeq_branch(rs.getInt("seq_branch"));
				dto.setSeq_member(rs.getInt("seq_member"));
				dto.setTitle(rs.getString("title"));
				dto.setPwd(rs.getString("pwd"));
				dto.setIsapplied(rs.getString("isapplied"));
				dto.setRegidate(rs.getString("regidate"));
				dto.setContent(rs.getString("content"));
				dto.setTel(rs.getString("tel"));
				dto.setEmail(rs.getString("email"));
				dto.setBranch(rs.getString("branch"));
				dto.setRownum(rs.getInt("rn"));

		
			
				
				list.add(dto);
	            
	        	 } while(rs.next()) ;
	            
	            
	            return list;
	         } else {
	            return Collections.emptyList();
	         }
	      } finally {
	         JdbcUtil.close(rs);
	         JdbcUtil.close(pstmt);
	      }		
	}
	
	
	
	
	
	//선택한 글 불러오기
	public LostDTO selectOne(Connection conn, int seqLost) throws SQLException {
		

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		LostDTO dto = null;
	
		String sql = " select  seq_branch,seq_lost,title,isapplied ,regidate,content,tel,email, l.pwd ,branch";
			  sql+= "   from lost_ask l  join branch b using(seq_branch)join member m using(seq_member)  ";
			    sql+= "  where seq_lost =  ?  ";

		

		try {
			pstmt = conn.prepareStatement(sql);
		
				pstmt.setInt(1, seqLost);	
			rs = pstmt.executeQuery();
			
			   if (rs.next()) {
		
		           
		            
		            dto = new LostDTO();
					
					dto.setSeq_lost(rs.getInt("seq_lost")); 
					dto.setPwd(rs.getString("pwd"));
					dto.setIsapplied(rs.getString("isapplied"));
					dto.setRegidate(rs.getString("regidate"));
					dto.setContent(rs.getString("content"));
					dto.setTel(rs.getString("tel"));
					dto.setEmail(rs.getString("email"));
					dto.setBranch(rs.getString("branch"));
					


		            
		        	 } 
		            
		            return dto;
		         
		         
		      } finally {
		         JdbcUtil.close(rs);
		         JdbcUtil.close(pstmt);
		      }		
	      }

	
	
	
	//분실문의댓글
	public int writeReply(Connection conn, String contents, int seq_lost) throws SQLException {
		

		
		System.out.println("contents"+contents);
		PreparedStatement pstmt = null;
		int count = 0;
		LostReplyDTO dto = null;
	
		
		
	String sql = " insert into lost_reply(lost_reply_seq, seq_lost, content )      ";
		sql += "    values(seq_lost_reply.nextval, ?, ?)" ;
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			dto = new LostReplyDTO();			
				pstmt.setInt(1, seq_lost);	
				pstmt.setString(2, contents);	
		
			count=	pstmt.executeUpdate();
		
			return count;
			
		      } finally {
		    
		         JdbcUtil.close(pstmt);
		      }		

	}
	
	//마지막으로 쓴 친구!
	public LostReplyDTO writeReply2(Connection conn) throws SQLException {
		

		

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		LostReplyDTO dto = null;
	
		String sql = " select lost_reply_seq, content from lost_reply where lost_reply_seq =   " ; 
			sql+=	"  (select max(lost_reply_seq) from lost_reply)  ";
		try {
			pstmt = conn.prepareStatement(sql);	
		
			rs = pstmt.executeQuery();
			   if (rs.next()) {
            
		            dto = new LostReplyDTO();
					dto.setContent(rs.getString("content"));
					dto.setLost_reply_seq(rs.getInt("lost_reply_seq"));
					
				
					
					System.out.println(dto.getContent());
		        	 } 
		            
		            return dto;	         
		      } finally {
		         JdbcUtil.close(rs);
		         JdbcUtil.close(pstmt);
		      }		
		

	}

	//댓글 총 목록 출력
	public List<LostReplyDTO> listReply(Connection conn, int seqLost) throws SQLException {

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		LostReplyDTO dto = null;
		List<LostReplyDTO> list = new ArrayList<>();

	
		String sql = "  select   lost_reply_seq, content from lost_reply  where seq_lost =? order by lost_reply_seq  " ; 
			
		try {
			pstmt = conn.prepareStatement(sql);	
			pstmt.setInt(1, seqLost);	
			rs = pstmt.executeQuery();
			   
			while (rs.next()) {
        
		            dto = new LostReplyDTO();
					
		            dto.setContent(rs.getString("content"));
		            dto.setLost_reply_seq(rs.getInt("lost_reply_seq"));
					
					list.add(dto);

					System.out.println(dto.getContent());
		        	 } 
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(pstmt);
			try {rs.close();} catch (SQLException e) {e.printStackTrace();}
			try {conn.close();} catch (SQLException e) {e.printStackTrace();}

		}
		return list;
		
	}

	
	
	public void delete(Connection conn, int seqWrite) throws SQLException {
		

		LostReplyDTO dto = null;
		PreparedStatement pstmt = null;
			
		String sql = "  delete lost_reply  where lost_reply_seq= ?    ";
		
			try {
				pstmt = conn.prepareStatement(sql);
				 dto = new LostReplyDTO();			
					
				 pstmt.setInt(1, seqWrite);	
				
			pstmt.executeUpdate();

			      } finally {
			    
			         JdbcUtil.close(pstmt);
			      }		

	}
	
	//댓글이 달리면 답변완료로 바뀜
	public void update(Connection conn, int count ,int seq_lost) throws SQLException {
	
		PreparedStatement pstmt = null;
		System.out.println("dao의 seq_lost  :"+seq_lost);
		
		String sql = "  UPDATE lost_ask SET isapplied = '답변완료'  where seq_lost = ?   ";

		try {
			if(count==1) {
			pstmt = conn.prepareStatement(sql);
							 
			 pstmt.setInt(1, seq_lost);	
			
			 pstmt.executeUpdate();
			}
				
			      } finally {	    
			         JdbcUtil.close(pstmt);
			      }		
	}

	public int pwd(Connection conn, int seq_lost) throws SQLException {

		PreparedStatement pstmt = null;
		ResultSet rs = null;

	
		String sql = "select pwd from lost_ask where seq_lost =  ? ";	
	
		
		try {
			pstmt = conn.prepareStatement(sql);		
			pstmt.setInt(1, seq_lost );
		
			rs = pstmt.executeQuery();
			rs.next();


			return  rs.getInt(1);    
				      	            
		      } finally {
		         JdbcUtil.close(rs);
		         JdbcUtil.close(pstmt);
		      }		
	}
	
	
	
	
	
	


	
	
	
	
}//class
