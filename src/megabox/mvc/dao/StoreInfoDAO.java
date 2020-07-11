package megabox.mvc.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.util.JdbcUtil;


import megabox.mvc.model.StoreInfoDTO;

public class StoreInfoDAO {
	// 싱글톤
	private static StoreInfoDAO dao = null;
	private StoreInfoDAO() {};
	public static StoreInfoDAO getInstance() {
		if( dao == null ) {
			dao = new StoreInfoDAO();
		}
		return dao;
	}





	public ArrayList<StoreInfoDTO> StoreAllList(Connection conn, int group) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		StoreInfoDTO dto = null;
		ArrayList<StoreInfoDTO> list = new ArrayList();
		String sql ="";


		if( group == 0 ) { sql ="select * from product_store ";}
		else {sql =  "select * from product_store where SEQ_GROUP=? ";}
		
	



		try {
			pstmt = conn.prepareStatement(sql);
			if( group != 0 ) {
				pstmt.setInt(1, group);		}


			rs = pstmt.executeQuery();


			dto = new StoreInfoDTO();
			while (rs.next()) {

				dto.setPRODUCT_CHARGE(rs.getInt("PRODUCT_CHARGE"));	
				dto.setPRODUCT_NAME(rs.getString("PRODUCT_NAME"));
				dto.setSEQ_GROUP(rs.getInt("SEQ_GROUP"));
				dto.setSEQ_PRODUCT(rs.getInt("SEQ_PRODUCT"));


				dto.setDESCRIPTION(rs.getString("DESCRIPTION"));

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


