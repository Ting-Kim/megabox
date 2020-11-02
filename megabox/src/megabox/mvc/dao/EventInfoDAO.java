package megabox.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import com.util.JdbcUtil;

import megabox.mvc.model.EventDTO;

public class EventInfoDAO {
	//싱글톤
	private static EventInfoDAO dao = null;
	private EventInfoDAO() {};
	public static EventInfoDAO getInstance() {

		if (dao==null) {
			dao=new EventInfoDAO();
		}

		return dao;

	}

	public ArrayList<EventDTO> EventAllList(Connection conn, int type, String search){
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		EventDTO dto = null;
		ArrayList<EventDTO> list = new ArrayList();
		String sql = "";
		if (search==null) {
			if (type==0) {
				//System.out.println(1);
				sql = "select rownum, seq_event,seq_etype,title,start_date,end_date,img_addr ,notice_date" + 
						" from  " + 
						" (select rank() over (PARTITION BY seq_etype order by seq_event) as   " + 
						" ranking,seq_event,seq_etype,title,start_date,end_date ,img_addr,notice_date " + 
						" from event   where sysdate <= end_date" + 
						" group by seq_event,seq_etype,title,start_date,end_date,img_addr,notice_date)  " + 
						" where ranking<=4 " ;
		}else if(type==6) {
			//System.out.println(2);
			type=0;
			sql = " select rownum , a.seq_event,a.seq_etype,a.title,a.start_date,a.end_date,a.img_addr,a.notice_date FROM "
					+ "(SELECT * FROM event WHERE sysdate>=end_date ORDER BY end_date DESC) a WHERE rownum <= 10 ";
		}		
		else {
			//System.out.println(3);
			sql = "select rownum,seq_event,seq_etype,title,start_date,end_date,img_addr,notice_date from event  where sysdate <= end_date and seq_etype = ? ";
			}
		}
		
		else if(type==6&&search!=null) {
			//System.out.println(4);
			sql = "select rownum,seq_event,seq_etype,title,start_date,end_date,img_addr,notice_date from event "
					+ " where  REGEXP_LIKE (title, ? ,'i') and sysdate >= end_date order by end_date desc";
		}else {
			//System.out.println(5);
			sql ="select rownum,seq_event,seq_etype,title,start_date,end_date,img_addr,notice_date from event "
					+ " where  REGEXP_LIKE (title, ? ,'i') and sysdate <= end_date and seq_etype = ? ";
		}
	
		try {
			pstmt = conn.prepareStatement(sql);
			if (type !=0&&search==null ) {
				pstmt.setInt(1, type);				
			}else if (type==6&&search!=null) {
				pstmt.setString(1,search);
			}else if(type!=0){
				pstmt.setString(1,search);
				pstmt.setInt(2, type);	
			}
			rs=pstmt.executeQuery();
			
			while (rs.next()) {
				dto = new EventDTO();
				dto.setRownum(rs.getInt("rownum"));
				dto.setSeq_event(rs.getInt("seq_event"));
				dto.setSeq_etype(rs.getInt("seq_etype"));
				dto.setTitle(rs.getString("title"));
				dto.setStart_date(rs.getDate("start_date"));
				dto.setEnd_date(rs.getDate("end_date"));
				dto.setImg_addr(rs.getString("img_addr"));
				dto.setNotice_date(rs.getDate("notice_date"));
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

	public EventDTO EventInfo(Connection conn, int num){
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		EventDTO dto = null;

		String sql = "";

		if (num!=0) {
			sql = "select e.*,sysdate from event e where seq_event = ? " ;
		}
		try {
			pstmt = conn.prepareStatement(sql);
			if (num !=0) {
				pstmt.setInt(1, num);			
			}
			//System.out.println(sql);	
			rs=pstmt.executeQuery();
			if (rs.next()) {
				dto = new EventDTO();
				dto.setSeq_event(rs.getInt("seq_event"));
				dto.setSeq_etype(rs.getInt("seq_etype"));
				dto.setTitle(rs.getString("title"));
				dto.setStart_date(rs.getDate("start_date"));
				dto.setEnd_date(rs.getDate("end_date"));
				dto.setImg_addr(rs.getString("img_addr"));
				dto.setNotice_date(rs.getDate("notice_date"));
				dto.setContent(rs.getString("content"));
				dto.setContent1(rs.getString("content1"));
				dto.setContent2(rs.getString("content2"));
				dto.setContent3(rs.getString("content3"));
				dto.setContent4(rs.getString("content4"));
				dto.setVideo(rs.getString("video"));		
				dto.setSysdate(rs.getDate("sysdate"));




			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(pstmt);
			try {rs.close();} catch (SQLException e) {e.printStackTrace();}
			try {conn.close();} catch (SQLException e) {e.printStackTrace();}
		}
		//service 로 반환
		return dto;
	}


	public  List<EventDTO> selectList(Connection conn, int firstRow, int endRow, String search) throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			
				
			String sql = "select * from ( select t.* from( SELECT rownum no, d.* FROM (select * from event where ";
			if (search!=null) {
				
				sql += "  REGEXP_LIKE (title, ? ,'i') and ";			
			}
			sql += " notice_date is not null order by notice_date) d order by no desc )t )a "
					+ " where a.no between ? and ? ";
			
			
			pstmt = conn.prepareStatement(sql);
			
			if (search!=null) {
				pstmt.setString(1, search);
				pstmt.setInt(2,firstRow);
				pstmt.setInt(3,endRow);				
			}else {
				pstmt.setInt(1,firstRow);
				pstmt.setInt(2,endRow);								
			}
			
			
			//System.out.println(sql);
			rs = pstmt.executeQuery();

			if(rs.next()) {
				List<EventDTO> boardList = new ArrayList<EventDTO>();
				do {
					//String a =  rs.getString("content");

					//a.replace("\n","<br>");
					//System.out.println(a);
					EventDTO dto = new EventDTO();

					//dto.setArray(str);
					dto.setContent(rs.getString("content"));
					dto.setNo(rs.getInt("no"));
					dto.setSeq_etype(rs.getInt("seq_etype"));
					dto.setTitle(rs.getString("title"));
					dto.setNotice_date(rs.getDate("notice_date"));
					dto.setSeq_event(rs.getInt("seq_event"));
					//System.out.println(dto.getContent());



					boardList.add(dto);
				} while (rs.next());
				return boardList;
			}else {
				return Collections.emptyList();
			}

		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}

	}//


	public static int BoardList(Connection conn, String search) throws SQLException {
		//Statement stmt = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			String sql = " ";
			//stmt = conn.createStatement();
			//rs = stmt.executeQuery("select  count(*) from event where notice_date is not null order by notice_date desc  ");
			
			sql = "select  count(*) from event where notice_date is not null ";
			
			if (search!=null) {
			sql += "and  REGEXP_LIKE (title, ? ,'i') ";
			}
			
			sql += "order by notice_date desc ";
			//System.out.println(search);
			pstmt = conn.prepareStatement(sql);
			if (search!=null) {			
				pstmt.setString(1,search);
			}
			rs = pstmt.executeQuery();


			//rs = stmt.executeQuery("select * from event where title like '%?%'  and notice_date is not null order by notice_date desc;");

			rs.next();

			return rs.getInt(1);
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	


}
