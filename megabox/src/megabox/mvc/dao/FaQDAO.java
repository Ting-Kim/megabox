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



public class FaQDAO {
	
	
	private static FaQDAO dao = null;
	private FaQDAO() {};
	public static FaQDAO getInstance() {
		if( dao == null ) {
			dao = new FaQDAO();
		}
		return dao;
	}

	public ArrayList<FaQDTO> selectListA(Connection conn, int firstRow, int endRow, int seqq) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		FaQDTO dto = null;
			
		ArrayList<FaQDTO> list = new ArrayList<FaQDTO>();
		String sql = "";
			
		  if( seqq == 0 ) { sql =" select * from faq join faq_part using (seq_faq_part) ";}
		  else {sql =  "select * from faq join faq_part using (seq_faq_part) where seq_faq_part = ? ";}
		 

		try {
			pstmt = conn.prepareStatement(sql);
			
			  if( seqq != 0 ) { pstmt.setInt(1, seqq); }
			 
			rs = pstmt.executeQuery();

			while (rs.next()) {
	
				dto = new FaQDTO();
				
				dto.setFAQ_PART(rs.getString("FAQ_PART"));
				dto.setSEQ_FAQ_PART(rs.getInt("SEQ_FAQ_PART"));
				dto.setSEQ_FAQ(rs.getInt("SEQ_FAQ"));
				dto.setTITLE(rs.getString("TITLE"));
				dto.setCONTENT(rs.getString("CONTENT"));
		
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
	
	
	
	   public  int selectCount(Connection conn,  int firstRow, int endRow, String searchWord) throws SQLException {
		   PreparedStatement stmt = null;
		      ResultSet rs = null;
		
		      try {
		    	  
	 
		    	String sql = " select count(*) from   (select rownum no, t.* from (select * from faq  join faq_part using (seq_faq_part) order by rownum desc )t  WHERE REGEXP_LIKE( title, ?) ) ";
   			
		    	  
		         stmt = conn.prepareStatement(sql);
		         stmt.setString(1, searchWord );
	
		         
		         rs = stmt.executeQuery();
		         rs.next();

	
		         return rs.getInt(1);
		        
		     
		      
		      } finally {
		         JdbcUtil.close(rs);
		         JdbcUtil.close(stmt);
		      }
		   }

	   
	   
	   public List<FaQDTO> selectList(Connection conn   , int firstRow, int endRow, String searchWord)   throws SQLException {
		   
		   PreparedStatement pstmt = null;
		      ResultSet rs = null;
		      FaQDTO dto = null;
		      try {
		    
		    	  String sql = " select * from   (select rownum no, t.* from (select * from faq  join faq_part using (seq_faq_part) order by rownum desc )t  WHERE REGEXP_LIKE( title, ?))b  ";
		    			   sql+= 	  "where b.no between ? and  ? ";

		

		         pstmt = conn.prepareStatement(sql);
		         pstmt.setString(1, searchWord );
		         pstmt.setInt(2, firstRow );
		         pstmt.setInt(3, endRow );
		         rs = pstmt.executeQuery();
		        
		         if (rs.next()) {
		        	 
		        	 List<FaQDTO> list = new ArrayList<>();
		        	 while(rs.next()) {
		           
		            
		            dto = new FaQDTO();
					
					dto.setFAQ_PART(rs.getString("FAQ_PART"));
					dto.setSEQ_FAQ_PART(rs.getInt("SEQ_FAQ_PART"));
					dto.setSEQ_FAQ(rs.getInt("SEQ_FAQ"));
					dto.setTITLE(rs.getString("TITLE"));
					dto.setCONTENT(rs.getString("CONTENT"));
	
					list.add(dto);
		            
		        	 }
		            
		            
		            return list;
		         } else {
		            return Collections.emptyList();
		         }
		      } finally {
		         JdbcUtil.close(rs);
		         JdbcUtil.close(pstmt);
		      }
		   }

	   
	   
	   public int selectCount2(Connection conn, int firstRow, int endRow, int seqq) {


		   PreparedStatement stmt = null;
		      ResultSet rs = null;
		      String sql = "";

		      try {
		    	  
		    	  
		    	  if (seqq == 0) {
		    		sql =  "select count(*) from faq join faq_part using (seq_faq_part)   " ;
				}		    	  
	 
		    	  if (seqq !=0) {
		    		  sql =  "select count(*) from faq join faq_part using (seq_faq_part) where seq_faq_part = ?  " ;
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

	
	
	
	
	
	
}
