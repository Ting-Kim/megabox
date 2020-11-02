package megabox.mvc.service;

import java.sql.Connection;
import java.util.List;

import com.util.ConnectionProvider;

import megabox.mvc.dao.TheaterListDAO;
import megabox.mvc.model.EventDTO;
import megabox.mvc.model.TheaterListDTO;

public class TheaterListService {
	
	public List<TheaterListDTO> select(){		
		TheaterListDAO dao = TheaterListDAO.getInstance();
		try ( Connection conn = ConnectionProvider.getConnection()){
			List<TheaterListDTO> list = dao.TheaterList(conn);
			// conn.close () 자동 -> 커넥션 풀에 반환
			return list;
		} catch (Exception e) {
            throw new RuntimeException(e); // ServiceException()
		}
	} // select()
	public List<TheaterListDTO> select2(){		
		TheaterListDAO dao = TheaterListDAO.getInstance();
		try ( Connection conn = ConnectionProvider.getConnection()){
			List<TheaterListDTO> list = dao.LocList(conn);
			// conn.close () 자동 -> 커넥션 풀에 반환
			return list;
		} catch (Exception e) {
			throw new RuntimeException(e); // ServiceException()
		}
	} // select()
	
	public List<EventDTO> eventSelect(){
		TheaterListDAO dao = TheaterListDAO.getInstance();
		try ( Connection conn = ConnectionProvider.getConnection()){
			List<EventDTO> list = dao.TheaterNewEvent(conn);
			return list;
		} catch (Exception e) {
            throw new RuntimeException(e); // ServiceException()
		}
	}
	
}
