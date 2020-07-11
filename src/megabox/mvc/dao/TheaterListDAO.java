package megabox.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JdbcUtil;

import megabox.mvc.model.EventDTO;
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
	
	 public ArrayList<EventDTO> TheaterNewEvent(Connection conn){
	      PreparedStatement pstmt = null;
	      ResultSet rs = null;
	      EventDTO dto = null;
	      ArrayList<EventDTO> list = new ArrayList();
	      String sql = "";
	      
	      sql = "select rownum, ranking, seq_event,seq_etype,title,start_date " + 
	      		"from " + 
	      		"( " + 
	      		"    select rank() over (order by start_date desc) as ranking, seq_event,seq_etype,title,start_date " + 
	      		"    from event " + 
	      		"    where seq_etype = 3 " + 
	      		") " + 
	      		"where rownum<=2  " + 
	      		"order by ranking, seq_event desc" ;

	      try {
	         pstmt = conn.prepareStatement(sql);
	         rs=pstmt.executeQuery();
	         
	         while (rs.next()) {
	            dto = new EventDTO();
	            dto.setSeq_event(rs.getInt("seq_event"));
	            dto.setSeq_etype(rs.getInt("seq_etype"));
	            dto.setTitle(rs.getString("title"));
	            dto.setStart_date(rs.getDate("start_date"));

	            
	            list.add(dto);
	         }
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }finally {
	         JdbcUtil.close(pstmt);
	         try {rs.close();} catch (SQLException e) {e.printStackTrace();}
	         try {conn.close();} catch (SQLException e) {e.printStackTrace();}
	      }
	      //service 로 반환
	      return list;
	      
	   }
	
}
