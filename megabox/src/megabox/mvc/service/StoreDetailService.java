package megabox.mvc.service;

import java.sql.Connection;

import com.util.ConnectionProvider;

import megabox.mvc.dao.StoreInfoDAO;
import megabox.mvc.model.StoreInfoDTO;

public class StoreDetailService {
	public StoreInfoDTO select(int seq){
		StoreInfoDAO dao = StoreInfoDAO.getInstance();
	    try(Connection conn = ConnectionProvider.getConnection()) {
	    StoreInfoDTO dto =  dao.selectOne(conn,seq);
	    return dto;
	    } catch (Exception e) {
	       throw new RuntimeException(e);
	    }
	 
	}
	
}
