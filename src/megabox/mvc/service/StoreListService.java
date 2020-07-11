package megabox.mvc.service;

import java.sql.Connection;
import java.util.List;

import com.util.ConnectionProvider;

import megabox.mvc.dao.StoreInfoDAO;
import megabox.mvc.model.StoreInfoDTO;

public class StoreListService {
	public List<StoreInfoDTO> select(int group){
		StoreInfoDAO dao = StoreInfoDAO.getInstance();
	    try(Connection conn = ConnectionProvider.getConnection()) {
	    List<StoreInfoDTO> list =  dao.StoreAllList(conn,group);
	    return list;
	    } catch (Exception e) {
	       throw new RuntimeException(e);
	    }
	 }

	
	

}






