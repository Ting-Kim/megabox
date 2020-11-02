package megabox.mvc.service.ajax;

import java.sql.Connection;
import java.util.List;

import com.util.ConnectionProvider;
import javax.naming.NamingException;
import megabox.mvc.dao.EventAjaxDAO;
import megabox.mvc.model.EventDTO;
import megabox.mvc.service.EventService;



public class EventAjaxService {
	public List<EventDTO> selectevent(int endNum){
		EventAjaxDAO dao = EventAjaxDAO.getInstance();
		try (Connection conn = ConnectionProvider.getConnection()){
						/// ****	EventAllList 호출				가져온 객체를 ArrayList<EventDTO> 
			List<EventDTO> list = dao.EventThemore(conn,endNum);
			//handler 반환
			
			return list;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	
	//싱글톤
	
	 private static EventAjaxService instance =new EventAjaxService();
	  public static EventAjaxService getInstance() { 
		  return instance;
		  }
	private EventAjaxService() {}
}
