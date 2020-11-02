package megabox.mvc.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import megabox.mvc.dao.EventInfoDAO;
import megabox.mvc.model.EventDTO;
import megabox.mvc.model.EventListView;

public class EventService {
	public List<EventDTO> select(int type, String search){
		EventInfoDAO dao = EventInfoDAO.getInstance();
		try (Connection conn = ConnectionProvider.getConnection()){
						/// ****	EventAllList 호출				가져온 객체를 ArrayList<EventDTO> 
			List<EventDTO> list = dao.EventAllList(conn, type,search);
			//handler 반환
			
			return list;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}

		
	}
	public EventDTO infoselect(int num){
		EventInfoDAO dao = EventInfoDAO.getInstance();
		try (Connection conn = ConnectionProvider.getConnection()){
						/// ****	EventAllList 호출				가져온 객체를 ArrayList<EventDTO> 
			EventDTO dto = dao.EventInfo(conn, num);
			//handler 반환
			
			return dto;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}

	}
	
	  
	  private static EventService instance =new EventService();
	  public static EventService getInstance() { 
		  return instance;
		  }
	  private EventService() {}
	  
	  private static final int COUNT_PER_PAGE  = 10;
	  
	  public EventListView getFreeList(int currentPage,String search) {
	      Connection conn = null;
	      int currentPageNumber = currentPage; // 1
	      try {
	         conn = ConnectionProvider.getConnection();
	         // dao
	         EventInfoDAO eventInfoDAO = EventInfoDAO.getInstance();
	         int messageTotalCount = EventInfoDAO.BoardList(conn,search);
	         List<EventDTO> FreeList = null;
	         int firstRow = 0;
	         int endRow = 0;
	         // firstRow endRow
	         if (messageTotalCount > 0) { // 방명록이 있으면 페이징 처리
	            // 2
	        	
	            endRow =
	                  messageTotalCount-(currentPage - 1) * COUNT_PER_PAGE; // 40
	           
	            firstRow = endRow - (COUNT_PER_PAGE - 1); // 20
	            //   dao.select
	            
	            
	            FreeList =
	            		eventInfoDAO.selectList(conn, firstRow, endRow, search); // 메세지 목록들
	          
	         } else {
	            currentPageNumber = 0;
	            FreeList = Collections.emptyList(); // 비어있는 리스트로 유지
	         }
	         return new EventListView(messageTotalCount, currentPageNumber, FreeList, COUNT_PER_PAGE, firstRow, endRow);
	      } catch (NamingException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }finally {
	         JdbcUtil.close(conn);
	      }
	      return null;
	   }
	  
	  
	  
	  
	
	
}
