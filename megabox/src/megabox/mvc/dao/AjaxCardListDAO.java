package megabox.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.util.JdbcUtil;

import megabox.mvc.model.DiscountDTO;

public class AjaxCardListDAO {
	private static AjaxCardListDAO dao = null;
	private AjaxCardListDAO() {};
	public static AjaxCardListDAO getInstance() {
		if( dao == null ) {
			dao = new AjaxCardListDAO();
		}
		return dao;
	}
	// 각 타입별 카드 개수 카운트
	public DiscountDTO DiscountCardCount(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DiscountDTO dto = null;
		ArrayList<DiscountDTO> list = new ArrayList();
		String sql ="select count(case when seq_dctype=1 then 1 end) as CKC01CNT, " + 
				"        count(case when seq_dctype=2 then 1 end) as CKC02CNT, " + 
				"        count(case when seq_dctype=3 then 1 end) as CKC03CNT " + 
				" from discount_card ";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
				if(rs.next()) {
					dto = new DiscountDTO();
					dto.setCKC01CNT(rs.getInt("CKC01CNT"));		
					dto.setCKC02CNT(rs.getInt("CKC02CNT"));		
					dto.setCKC03CNT(rs.getInt("CKC03CNT"));		
				
				}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dto;
	}
	// 각 타입별 카드 데이터 뿌리기.
		public ArrayList<DiscountDTO> CardCoList(Connection conn, String cardKindCd) {
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			DiscountDTO dto = null;
			ArrayList<DiscountDTO> list = new ArrayList();
			String sql = "";
			
			try {
					sql = " select distinct discount_card.seq_card_co, card_corporation.corporation corporation, card_corporation.corporation_id corporation_id " + 
							" from discount_card " +
							" join card_corporation on discount_card.seq_card_co = card_corporation.seq_card_co " + 
							" where seq_dctype = ?  order by discount_card.seq_card_co asc ";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, cardKindCd);
					rs = pstmt.executeQuery();
					while (rs.next()) {
						dto = new DiscountDTO();
						dto.setSEQ_CARD_CO(rs.getInt("SEQ_CARD_CO"));
						dto.setCORPORATION(rs.getString("CORPORATION"));
						dto.setCORPORATION_ID(rs.getString("CORPORATION_ID"));						
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
	
	// 각 타입별 카드 데이터 뿌리기.
	public ArrayList<DiscountDTO> DiscountCardList(Connection conn, String cardKindCd, String cardPartrCd) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DiscountDTO dto = null;
		ArrayList<DiscountDTO> list = new ArrayList();
		String sql = "";
		
		try {
				sql = " select * " + 
						" from discount_card " + 
						" join card_corporation on discount_card.seq_card_co = card_corporation.seq_card_co " + 
						" where discount_card.seq_dctype = ?  ";
				if ( !cardPartrCd.equals("") ) {
					sql += " and card_corporation.corporation_id = ? " ;
				}
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, cardKindCd);
				if ( !cardPartrCd.equals("") ) {
					pstmt.setString(2, cardPartrCd); ;
				}
				rs = pstmt.executeQuery();
				while (rs.next()) {
					dto = new DiscountDTO();
					dto.setSEQ_DISCOUNT(rs.getInt("SEQ_DISCOUNT"));
					dto.setSEQ_CARD_CO(rs.getInt("SEQ_CARD_CO"));
					dto.setSEQ_DCTYPE(rs.getInt("SEQ_DCTYPE"));
					dto.setSEQ_DCPART(rs.getInt("SEQ_DCPART"));
					dto.setCARD_NUM(rs.getInt("CARD_NUM"));
					dto.setDC_PRICE(rs.getInt("DC_PRICE"));
					dto.setCARD_NAME(rs.getString("CARD_NAME"));
					dto.setCARD_CONTENT(rs.getString("CARD_CONTENT"));
					dto.setCARD_IMAGE(rs.getString("CARD_IMAGE"));
					dto.setCARD_URL(rs.getString("CARD_URL"));
					dto.setCORPORATION(rs.getString("CORPORATION"));
					dto.setCORPORATION_ID(rs.getString("CORPORATION_ID"));
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
}
