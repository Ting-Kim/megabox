package megabox.mvc.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JdbcUtil;

import megabox.mvc.model.EventDTO;
public class EventAjaxDAO {
	private static EventAjaxDAO dao = null;
	private EventAjaxDAO() {};
	public static EventAjaxDAO getInstance() {

		if (dao==null) {
			dao=new EventAjaxDAO();
		}

		return dao;
	}
	public List<EventDTO> EventThemore(Connection conn, int endNum) {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		EventDTO dto = null;
		ArrayList<EventDTO> list = new ArrayList();
		String sql = "";
		
			if(endNum!=0) {
			sql = " select rownum , a.seq_event,a.seq_etype,a.title,a.start_date,a.end_date,a.img_addr,a.notice_date FROM  "
					+ " (SELECT * FROM event WHERE sysdate>=end_date ORDER BY end_date DESC) a WHERE rownum <= ? ";
		}
	
		try {
			pstmt = conn.prepareStatement(sql);
			if (endNum!=0) {
				pstmt.setInt(1, endNum);				
			}
			rs=pstmt.executeQuery();
			
			while (rs.next()) {
				dto = new EventDTO();
				dto.setRownum(rs.getInt("rownum"));
				dto.setSeq_event(rs.getInt("seq_event"));
				dto.setSeq_etype(rs.getInt("seq_etype"));
				dto.setTitle(rs.getString("title"));
				dto.setStart_date_ajax(rs.getString("start_date").substring(0, 10));
				dto.setEnd_date_ajax(rs.getString("end_date").substring(0, 10));
				dto.setNotice_date_ajax(rs.getString("notice_date"));
				dto.setImg_addr(rs.getString("img_addr"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(pstmt);
			try {rs.close();} catch (SQLException e) {e.printStackTrace();}
			try {conn.close();} catch (SQLException e) {e.printStackTrace();}
		}
		//service 로 반환
		return list;

	}
}



