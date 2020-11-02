package megabox.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.util.JdbcUtil;

import megabox.mvc.model.DiscountDTO;

public class DiscountDAO {
	// 싱글톤
	private static DiscountDAO dao = null;
	private DiscountDAO() {};
	public static DiscountDAO getInstance() {
		if( dao == null ) {
			dao = new DiscountDAO();
		}
		return dao;
	}
	// 각 타입별 카드 개수 카운트
	public DiscountDTO DiscountCardCount(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DiscountDTO dto = null;
		String sql ="select count(case when seq_dctype=1 then 1 end) as CKC01Cnt, " + 
				"        count(case when seq_dctype=2 then 1 end) as CKC02Cnt, " + 
				"        count(case when seq_dctype=3 then 1 end) as CKC03Cnt " + 
				" from discount_card ";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
				if(rs.next()) {
					dto = new DiscountDTO();
					dto.setCKC01CNT(rs.getInt("CKC01Cnt"));		
					dto.setCKC02CNT(rs.getInt("CKC02Cnt"));		
					dto.setCKC03CNT(rs.getInt("CKC03Cnt"));				
					
				}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dto;
	}
	// 각 타입별 카드 데이터 뿌리기.
	public ArrayList<DiscountDTO> DiscountCardList(Connection conn, int part) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DiscountDTO dto = null;
		ArrayList<DiscountDTO> list = new ArrayList();
		String sql = "";
		
		try {
				sql = " select * from discount_card where seq_dctype = ? ";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, part);
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
	// 검색
	public ArrayList<DiscountDTO> CardSearchList(Connection conn, String searchStr) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DiscountDTO dto = null;
		ArrayList<DiscountDTO> list = new ArrayList();
		String sql = "";
		try {
				sql = " select * " + 
						" from discount_card " + 
						"    join card_corporation on discount_card.seq_card_co= card_corporation.seq_card_co " + 
						"    join discount_type on discount_card.seq_dctype = discount_type.seq_dctype " + 
						" where regexp_like(card_name, ?, 'i')" ;
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1,searchStr);
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
					dto.setDCTYPE(rs.getString("DCTYPE"));
					System.out.println(dto.getCARD_NAME());
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


