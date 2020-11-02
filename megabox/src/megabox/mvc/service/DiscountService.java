package megabox.mvc.service;

import java.sql.Connection;
import java.util.List;

import com.util.ConnectionProvider;

import megabox.mvc.dao.DiscountDAO;
import megabox.mvc.model.DiscountDTO;

public class DiscountService {

	public DiscountDTO count(){
		DiscountDAO dao = DiscountDAO.getInstance();
	    try(Connection conn = ConnectionProvider.getConnection()) {
	    	DiscountDTO dto =  dao.DiscountCardCount(conn);
	    return dto;
	    } catch (Exception e) {
	       throw new RuntimeException(e);
	    }
	 }
	public List<DiscountDTO> select(int part){
		DiscountDAO dao = DiscountDAO.getInstance();
		try(Connection conn = ConnectionProvider.getConnection()) {
			List<DiscountDTO> list =  dao.DiscountCardList(conn, part);
			return list;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	public List<DiscountDTO> search(String searchStr){
		DiscountDAO dao = DiscountDAO.getInstance();
		try(Connection conn = ConnectionProvider.getConnection()) {
			List<DiscountDTO> list =  dao.CardSearchList(conn, searchStr);
			return list;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	

}
