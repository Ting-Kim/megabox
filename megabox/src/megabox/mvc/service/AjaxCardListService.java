package megabox.mvc.service;

import java.sql.Connection;
import java.util.List;

import com.util.ConnectionProvider;

import megabox.mvc.dao.AjaxCardListDAO;
import megabox.mvc.dao.DiscountDAO;
import megabox.mvc.model.DiscountDTO;

public class AjaxCardListService {
	public DiscountDTO count(){
		AjaxCardListDAO dao = AjaxCardListDAO.getInstance();
	    try(Connection conn = ConnectionProvider.getConnection()) {
	    	DiscountDTO dto =  dao.DiscountCardCount(conn);
	    return dto;
	    } catch (Exception e) {
	       throw new RuntimeException(e);
	    }
	 }
	// 카드 회사 버튼 태그 만들기
	public List<DiscountDTO> divide(String cardKinCd){
		AjaxCardListDAO dao = AjaxCardListDAO.getInstance();
		try(Connection conn = ConnectionProvider.getConnection()) {
			List<DiscountDTO> list =  dao.CardCoList(conn, cardKinCd);
			return list;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	// 회사별 할인카드 리스트
	public List<DiscountDTO> select(String cardKinCd, String cardPartrCd){
		AjaxCardListDAO dao = AjaxCardListDAO.getInstance();
		try(Connection conn = ConnectionProvider.getConnection()) {
			List<DiscountDTO> list =  dao.DiscountCardList(conn, cardKinCd, cardPartrCd);
			return list;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	
}
