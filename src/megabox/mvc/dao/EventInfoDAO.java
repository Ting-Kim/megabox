package megabox.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


import com.util.JdbcUtil;

import megabox.mvc.model.EventDTO;

public class EventInfoDAO {
   //싱글톤
   private static EventInfoDAO dao = null;
   private EventInfoDAO() {};
   public static EventInfoDAO getInstance() {
      
      if (dao==null) {
         dao=new EventInfoDAO();
      }
      
      return dao;
      
   }
   
   public ArrayList<EventDTO> EventAllList(Connection conn){
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      EventDTO dto = null;
      ArrayList<EventDTO> list = new ArrayList();
      String sql = "";
      
      sql = "select seq_event,seq_etype,title,start_date,end_date,content " + 
            "from  " + 
            "(select rank() over (PARTITION BY seq_etype order by seq_event) as   " + 
            "ranking,seq_event,seq_etype,title,start_date,end_date,content  " + 
            "from event " + 
            "group by seq_event,seq_etype,title,start_date,end_date,content)  " + 
            "where ranking<=4 " ;

      try {
         pstmt = conn.prepareStatement(sql);
         rs=pstmt.executeQuery();
         
         while (rs.next()) {
            dto = new EventDTO();
            dto.setSeq_event(rs.getInt("seq_event"));
            dto.setSeq_etype(rs.getInt("seq_etype"));
            dto.setTitle(rs.getString("title"));
            dto.setStart_date(rs.getDate("start_date"));
            dto.setEnd_date(rs.getDate("end_date"));
            dto.setContent(rs.getString("content"));
            
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