package megabox.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import com.util.JdbcUtil;

import megabox.mvc.model.NoticeDTO;

public class NoticeDAO {
	// 싱글톤
	private static NoticeDAO dao = null;
	private NoticeDAO() {};
	public static NoticeDAO getInstance() {
		if( dao == null ) {
			dao = new NoticeDAO();
		}
		return dao;
	}

	public List<NoticeDTO> selectList(Connection conn, int firstRow, int endRow, int seq) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		NoticeDTO dto = null;
		String sql = "";

		List<NoticeDTO> list = new ArrayList<>();

		try {
			
		
			
			 if (seq ==0) {
				 sql = "	  select * from  ";
				 sql	+=		"	(select  rownum rn, seq_notice,seq_npart,title,content,regidate,npart,seq_branch,branch  ";
				 sql	+=	 "	 from ( select * from notice join notice_part using(seq_npart)  order by regidate desc ) join branch using(seq_branch)WHERE rownum <= ? )  ";
				 sql	+=		" WHERE rn > ? ";
				 sql  +=" order by rn  desc ";

			}
			 
			 
			 if(seq !=0 ) {
				 
				 sql = "	  select * from  ";
				 sql	+=		"	(select  rownum rn, seq_notice,seq_npart,title,content,regidate,npart,seq_branch,branch  ";
				 sql	+=	 "	 from ( select * from notice join notice_part using(seq_npart)  order by regidate desc ) join branch using(seq_branh)WHERE rownum <= ?  )  ";
				 sql	+=		" WHERE rn > ?  and seq_npart = ?   ";
				 sql  +=" order by rn desc ";
			 }
 
				pstmt = conn.prepareStatement(sql);
		
				
				if (seq==0) {
				
				pstmt.setInt(1, endRow );
				pstmt.setInt(2, firstRow );
				
			}	
				
	
				if (seq !=0) {
					pstmt.setInt(1, endRow );
					pstmt.setInt(2, firstRow );
					pstmt.setInt(3, seq );
			}	
				
				rs = pstmt.executeQuery();
				
	
	
			if (rs.next()) {
					
			do {

				dto = new NoticeDTO();
				
				dto.setSeq_notice(rs.getInt("seq_notice"));
				dto.setSeq_npart(rs.getInt("seq_npart"));
				dto.setSeq_branch(rs.getInt("seq_branch"));
				dto.setBranch(rs.getString("branch"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setNpart(rs.getString("npart"));
				dto.setRegidate(rs.getString("regidate"));
				dto.setRownum(rs.getInt("rn"));
			
			
				
				
				
				list.add(dto);}
				while (rs.next()) ;
				
				return list;

			
		}else  {return Collections.emptyList();
				} 
		}finally {
			JdbcUtil.close(rs);
	         JdbcUtil.close(pstmt);

		}
	
	}
	
	
	
	   public  int selectCount(Connection conn  ,int seqq) throws SQLException {
		   PreparedStatement stmt = null;
		      ResultSet rs = null;
		      String sql = "";

		      try {
		    	  
		    	  
		    	  if (seqq == 0) {
		    		sql =  "select count(*)  from ( select * from notice join notice_part using(seq_npart)) join branch using(seq_branch)  " ;
				}		    	  
	 
		    	  if (seqq !=0) {
		    		  sql =  "select count(*)  from ( select * from notice join notice_part using(seq_npart)) join branch using(seq_branch)  where seq_npart = ?  " ;
				}
		    	  
		         stmt = conn.prepareStatement(sql);
		         
		       
		         
		         if (seqq !=0) {
		        	 stmt.setInt(1, seqq );	}
		        
	
		         
		         rs = stmt.executeQuery();
		         rs.next();

	
		         return rs.getInt(1);
		        
		     
		      
		      } catch (SQLException e) {
				
				e.printStackTrace();
			} finally {
		         JdbcUtil.close(rs);
		         JdbcUtil.close(stmt);
		      }
		
		
		
		
		return 0;
	}
	public ArrayList<NoticeDTO> noticeList(Connection conn, int seq) {
		PreparedStatement pstmt = null;
	      ResultSet rs = null;

		
		NoticeDTO dto = null;
		ArrayList<NoticeDTO> list = new ArrayList();
		String sql ="";


		if( seq == 0 ) { 
			
			
			sql =  "	select rownum rn , t.* from  ";
			sql +=  "	 (select  seq_notice,seq_npart,title,content,regidate,npart,seq_branch,branch   ";
					sql +=  "	 from ( select * from notice join notice_part using(seq_npart) order by regidate desc ) join branch using(seq_branch) )t  ";
									sql +=  "    order by rownum desc  ";
			
			
			 }
		
		
		if(seq ==107) {
			
			
			sql =  "	select rownum rn , t.* from  ";
			sql +="	 (select  seq_notice,seq_npart,title,content,regidate,npart,seq_branch,branch   ";
					sql += "	 from ( select * from notice join notice_part using(seq_npart) order by regidate desc ) join branch using(seq_branch) )t  ";
							sql +=  "			 where seq_branch = 107   ";
									sql += "           order by rownum desc  ";
			
			
		}
		
		if(seq ==2) {
			
			sql =  "	select rownum rn , t.* from  ";
					sql += "	 (select  seq_notice,seq_npart,title,content,regidate,npart,seq_branch,branch   ";
							sql += "	 from ( select * from notice join notice_part using(seq_npart) order by regidate desc ) join branch using(seq_branch) )t  ";
									sql +="			 where seq_branch != 107   ";
											sql+=  "           order by rownum desc  ";
			
			
		}
		

		
		
		try {
			pstmt = conn.prepareStatement(sql);
		
			rs = pstmt.executeQuery();



			while (rs.next()) {
			
				
				dto = new NoticeDTO();
				dto.setSeq_notice(rs.getInt("seq_notice"));
				dto.setSeq_npart(rs.getInt("seq_npart"));
				dto.setSeq_branch(rs.getInt("seq_branch"));
				dto.setBranch(rs.getString("branch"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setNpart(rs.getString("npart"));
				dto.setRegidate(rs.getString("regidate"));
				dto.setRownum(rs.getInt("rn"));
		
				
				list.add(dto);

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
	public ArrayList<NoticeDTO> noticeLoc(Connection conn, int loc) {

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		NoticeDTO dto = null;
		ArrayList<NoticeDTO> list = new ArrayList();
		String sql ="";


		if( loc == 0 ) {
		sql+= 	" select  distinct branch  from  ";
				sql+= 	"	 (select  rownum rn, seq_loc ,branch " ;
						sql+= "		  from ( select * from notice join notice_part using(seq_npart) order by regidate desc) join branch using(seq_branch) )  ";
	
			  			
				
		}
		if( loc != 0 ) {
			sql+= 	" select distinct branch from  ";
			sql+= 	"	 (select  rownum rn, seq_loc ,branch " ;
					sql+= "		  from ( select * from notice join notice_part using(seq_npart) order by regidate desc) join branch using(seq_branch) )  ";
					sql+= "		  where seq_loc = ?  ";
				
		}
	

		
		
		try {
			pstmt = conn.prepareStatement(sql);
		  
			
			
					if (loc !=0) {
							pstmt.setInt(1, loc );	}
	        
			rs = pstmt.executeQuery();



			while (rs.next()) {
			
				
				dto = new NoticeDTO();
				
				
				dto.setBranch(rs.getString("branch"));

				
				list.add(dto);

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
	
	
	public ArrayList<NoticeDTO> noticeLoc2(Connection conn, int loc) {

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		NoticeDTO dto = null;
		ArrayList<NoticeDTO> list = new ArrayList();
		String sql ="";


		if( loc == 0 ) {
	sql =  "  select distinct branch from branch  join lost_ask using(seq_branch) ";
	
			  			
				
		}
		if( loc != 0 ) {
			sql =   " select distinct branch from branch  join lost_ask using(seq_branch) where seq_loc = ?  ";
				
		}
	
		try {
			pstmt = conn.prepareStatement(sql);
		
					if (loc !=0) {
							pstmt.setInt(1, loc );	}
	        
			rs = pstmt.executeQuery();


			while (rs.next()) {
			
				dto = new NoticeDTO();
				dto.setBranch(rs.getString("branch"));
				System.out.println(dto.getBranch());
				
				list.add(dto);

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
	
	
	
	
	
	
	

	
	public ArrayList<NoticeDTO> NoticelocList(Connection conn, String theater) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		NoticeDTO dto = null;
		String sql = "";

		ArrayList<NoticeDTO> list = new ArrayList<>();
		System.out.println(theater);
		try {

			 if(theater == null ) {
				
				 sql =  " select rownum rn, t.* from  ";
				 sql += "  (select   seq_notice,seq_npart,title,content,regidate,npart,seq_branch,branch, seq_loc  "; 
				 sql += " from ( select * from notice join notice_part using(seq_npart) order by regidate desc  ) join branch using(seq_branch) )t  ";
				 sql += "  order by rownum desc "; 	
			
			 }
			 
			 if (theater != null ){

sql =  " select rownum rn, t.* from  ";
sql += "  (select   seq_notice,seq_npart,title,content,regidate,npart,seq_branch,branch, seq_loc  "; 
sql += " from ( select * from notice join notice_part using(seq_npart) order by regidate desc ) join branch using(seq_branch) )t  ";
sql += " where branch = ? ";
sql += "  order by rownum desc ";
			}
			 
 
				pstmt = conn.prepareStatement(sql);

				if(theater != null ) {
				
				pstmt.setString(1, theater );	
			}	
				
				
				rs = pstmt.executeQuery();
		
				 while (rs.next()){

				dto = new NoticeDTO();
				
				dto.setSeq_notice(rs.getInt("seq_notice"));
				dto.setSeq_npart(rs.getInt("seq_npart"));
				dto.setSeq_branch(rs.getInt("seq_branch"));
				dto.setBranch(rs.getString("branch"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setNpart(rs.getString("npart"));
				dto.setRegidate(rs.getString("regidate"));
				dto.setRownum(rs.getInt("rn"));	

	
				list.add(dto);
				}
	
	
		}	 catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(pstmt);
			try {rs.close();} catch (SQLException e) {e.printStackTrace();}
			try {conn.close();} catch (SQLException e) {e.printStackTrace();}

		}
		return list;
	}
	

	
	
	

	
	public ArrayList<NoticeDTO> searchList(Connection conn, String searchWord) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		NoticeDTO dto = null;
		String sql = "";

		ArrayList<NoticeDTO> list = new ArrayList<>();
		System.out.println(searchWord);
		try {

			 if(searchWord == null ) {
				 
				 	sql = " select rownum rn, t.* from  ";
				 	sql+=	"  (select   seq_notice,seq_npart,title,content,regidate,npart,seq_branch,branch, seq_loc   ";
				 		sql+=	"  from ( select * from notice join notice_part using(seq_npart) order by regidate desc ) join branch using(seq_branch) )t  ";
				 	
				 			sql+=	"  order by rownum desc   ";
				

			 }
			 
			 if (searchWord != null ){

				 	sql = " select rownum rn, t.* from  ";
				 	sql+=	"  (select   seq_notice,seq_npart,title,content,regidate,npart,seq_branch,branch, seq_loc   ";
				 		sql+=	"  from ( select * from notice join notice_part using(seq_npart) order by regidate desc ) join branch using(seq_branch) )t  ";
				 		sql+=	"  WHERE REGEXP_LIKE( title, ?  )  ";
				 		sql+=	"  order by rownum desc   ";
	 
				 
				 
			}
			 
 
				pstmt = conn.prepareStatement(sql);

				if(searchWord != null ) {
				
				pstmt.setString(1, searchWord );	
			}	
				
				
				rs = pstmt.executeQuery();
		
				 while (rs.next()){

				dto = new NoticeDTO();
				
				dto.setSeq_notice(rs.getInt("seq_notice"));
				dto.setSeq_npart(rs.getInt("seq_npart"));
				dto.setSeq_branch(rs.getInt("seq_branch"));
				dto.setBranch(rs.getString("branch"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setNpart(rs.getString("npart"));
				dto.setRegidate(rs.getString("regidate"));
				dto.setRownum(rs.getInt("rn"));	
				

	
				list.add(dto);
				}
	
	
		}	 catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(pstmt);
			try {rs.close();} catch (SQLException e) {e.printStackTrace();}
			try {conn.close();} catch (SQLException e) {e.printStackTrace();}

		}
		return list;

		
	}
	
	
	//글누르면 해당 게시글로 이동
	
	public NoticeDTO noticePage(Connection conn, int seqNotice) {

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		NoticeDTO dto = null;
		
		String sql   =  " select * from  " ;
		sql  +=	"  (select seq_notice,seq_npart, title, branch, regidate, content from notice join branch using(seq_branch)  order by seq_notice)  "  ;
		sql  +=		"  join notice_part using(seq_npart)  "   ;
		sql  +=		"  where seq_notice = ?   ";
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, seqNotice );	  
			rs = pstmt.executeQuery();

			while (rs.next()) {
			
				dto = new NoticeDTO();		
				
				dto.setNpart(rs.getString("npart"));
				dto.setSeq_notice(rs.getInt("seq_notice"));
				dto.setSeq_npart(rs.getInt("seq_npart"));
				dto.setTitle(rs.getString("title"));
				dto.setBranch(rs.getString("branch"));
				dto.setRegidate(rs.getString("regidate"));
				dto.setContent(rs.getString("content"));
	
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(pstmt);
			try {rs.close();} catch (SQLException e) {e.printStackTrace();}
			try {conn.close();} catch (SQLException e) {e.printStackTrace();}

		}
		return dto;
	
	}
	
	
	
	

	
	
	
	
	
	//글누르면 이전 게시글 제목 가져옴
	
	public NoticeDTO noticePage2(Connection conn, int seqNotice) {

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		NoticeDTO dto = null;
		
		String sql   =  " select * from  " ;
		sql  +=	"  (select seq_notice,seq_npart, title, branch, regidate, content from notice join branch using(seq_branch)  order by seq_notice  )  "  ;
		sql  +=		"  join notice_part using(seq_npart)  "   ;
		sql  +=		"  where seq_notice = ?-1   ";
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, seqNotice );	  
			rs = pstmt.executeQuery();

			while (rs.next()) {
			
				dto = new NoticeDTO();		
				
	
				dto.setTitle(rs.getString("title"));
			
	
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(pstmt);
			try {rs.close();} catch (SQLException e) {e.printStackTrace();}
			try {conn.close();} catch (SQLException e) {e.printStackTrace();}

		}
		return dto;
	
	}
	
	
	
	

	//글누르면 이후 게시글제목 가져옴
	
	public NoticeDTO noticePage3(Connection conn, int seqNotice) {

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		NoticeDTO dto = null;
		
		String sql   =  " select * from  " ;
		sql  +=	"  (select seq_notice,seq_npart, title, branch, regidate, content from notice join branch using(seq_branch))  "  ;
		sql  +=		"  join notice_part using(seq_npart)  "   ;
		sql  +=		"  where seq_notice = ?+1   ";
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, seqNotice );	  
			rs = pstmt.executeQuery();

			while (rs.next()) {
			
				dto = new NoticeDTO();		
				
				dto.setTitle(rs.getString("title"));
	
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(pstmt);
			try {rs.close();} catch (SQLException e) {e.printStackTrace();}
			try {conn.close();} catch (SQLException e) {e.printStackTrace();}

		}
		return dto;
	
	}
	
	//Lostwrite   select * from branch  where seq_loc = 1;
	public ArrayList<NoticeDTO> noticeLoc3(Connection conn, int loc) {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		NoticeDTO dto = null;
		ArrayList<NoticeDTO> list = new ArrayList<NoticeDTO>();
		String sql ="";


		if( loc == 0 ) {
	       sql =  " select * from branch  where seq_loc = 100000000 " ;} 
		
		if( loc != 0 ) {
			sql =   "  select * from branch NATURAL join location where seq_loc = ? ";			
		}
		try {
			pstmt = conn.prepareStatement(sql);
				if (loc !=0) {
				pstmt.setInt(1, loc );	}
	        
			rs = pstmt.executeQuery();

			while (rs.next()) {
			dto = new NoticeDTO();	
				dto.setBranch(rs.getString("branch"));			
				dto.setSeq_branch(rs.getInt("seq_branch"));
				dto.setSeq_location(rs.getInt("seq_loc"));
				list.add(dto);
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
	public int selectCountSearch(Connection conn, String searchWord) {

		   PreparedStatement stmt = null;
		      ResultSet rs = null;
		      String sql = "";

		      try {

		    		 if(searchWord == null ) {
						 
						 sql = " select count(*) from notice   ";	

					 }
					 
					 if (searchWord != null ){
						 
						 
				sql  ="		 select  count(*) from   ";
				sql  +="		 (select   seq_notice,seq_npart,title,content,regidate,npart,seq_branch,branch, seq_loc    ";
			sql  +="		  from ( select * from notice join notice_part using(seq_npart) order by regidate desc ) join branch using(seq_branch) )   "; 
				sql  +="		 WHERE REGEXP_LIKE( title, ?   )  ";
				
					 }
		    	  
		         stmt = conn.prepareStatement(sql);
		         
		         
		         if (searchWord !=null) {
		        	 stmt.setString(1, searchWord );	}
		        
      System.out.println(sql);
		         rs = stmt.executeQuery();
		         rs.next();

	
		         return rs.getInt(1);
		        
		     
		      
		      } catch (SQLException e) {
				
				e.printStackTrace();
			} finally {
		         JdbcUtil.close(rs);
		         JdbcUtil.close(stmt);
		      }

		
		return 0;
	}
	
	
	//searchWord 페이징
	public List<NoticeDTO> selectListSearch(Connection conn, int firstRow, int endRow, String searchWord) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		NoticeDTO dto = null;
		String sql = "";

		List<NoticeDTO> list = new ArrayList<>();

		try {
			
		
			
			 if (searchWord ==null) {
				 sql = " select * from   "; 
			sql +=   "		(select  rownum rn, seq_notice,seq_npart,title,content,regidate,npart,seq_branch,branch    ";
sql +=   "	from ( select * from notice join notice_part using(seq_npart)  order by regidate desc ) join branch using(seq_branch)WHERE rownum <= ? )   ";  
	sql +=   "	 WHERE rn > ? "; 
			sql +=   "  order by rn  desc ";

			}
			 
			 
			 if(searchWord !=null) {
				 sql = " 		  select * from   ";
				 sql +=   "	(select  rownum rn, seq_notice,seq_npart,title,content,regidate,npart,seq_branch,branch    ";
				sql +=   "	 from ( select * from notice join notice_part using(seq_npart) where REGEXP_LIKE(title,   ?  )order by regidate desc )  ";
				 sql +=   "	 join branch using(seq_branch)WHERE rownum <= ? )    ";
			 sql +=   "		 WHERE rn > ?  ";
				sql +=   "		order by rn  desc   ";
			 }
 
				pstmt = conn.prepareStatement(sql);
		
				
				if (searchWord ==null) {
				
				pstmt.setInt(1, endRow );
				pstmt.setInt(2, firstRow );
				
			}	
				
	
				if (searchWord !=null) {
					pstmt.setString(1, searchWord );
					pstmt.setInt(2, endRow );
					pstmt.setInt(3, firstRow );
					
			}	
				
				rs = pstmt.executeQuery();
				
	
	
			if (rs.next()) {
					
			do {

				dto = new NoticeDTO();
				
				dto.setSeq_notice(rs.getInt("seq_notice"));
				dto.setSeq_npart(rs.getInt("seq_npart"));
				dto.setSeq_branch(rs.getInt("seq_branch"));
				dto.setBranch(rs.getString("branch"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setNpart(rs.getString("npart"));
				dto.setRegidate(rs.getString("regidate"));
				dto.setRownum(rs.getInt("rn"));
			
			
				
				
				
				list.add(dto);}
				while (rs.next()) ;
				
				return list;

			
		}else  {return Collections.emptyList();
				} 
		}finally {
			JdbcUtil.close(rs);
	         JdbcUtil.close(pstmt);

		}

	}
	
	


}


