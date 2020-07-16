package megabox.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;

import com.util.JdbcUtil;

import megabox.mvc.model.TheaterInfoDTO;

public class TheaterInfoDAO {
	// 싱글톤 방식
		private static TheaterInfoDAO dao = null;
		private TheaterInfoDAO() {}
		public static TheaterInfoDAO getInstance() {
			if (dao == null) {
				dao = new TheaterInfoDAO();
			}
			return dao;
		}
		
		// by 태호, 극장정보 - 극장소개 주제, 특징(부제) 출력_20200715
		public List<TheaterInfoDTO> TheaterInfoList(Connection conn, int seqBranch){
			String sql = "select * " + 
					" from THEATER_INFO " + 
					" WHERE SEQ_BRANCH = ? ";
			
			PreparedStatement pstmt = null;
			ResultSet rs = null;	
			ArrayList<TheaterInfoDTO> titleList = new ArrayList<TheaterInfoDTO>();
			TheaterInfoDTO dto = null;
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, seqBranch);
				
				System.out.println(seqBranch);
				
				rs = pstmt.executeQuery();
				
				while (rs.next()) {
					dto = new TheaterInfoDTO();
					
					dto.setSeq_branch(rs.getInt("seq_branch"));
					dto.setSeq_loc(rs.getInt("seq_loc"));
					dto.setBranch(rs.getString("branch"));
					dto.setTitle(rs.getString("title"));
					dto.setSpecific(rs.getString("specific"));
					dto.setAddress_form(rs.getString("address_form"));
					dto.setAddress(rs.getString("address"));
					System.out.println(dto.getTitle());
					titleList.add(dto);
				
				}
				return titleList;
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
		         JdbcUtil.close(pstmt);
				try {rs.close();} catch(SQLException e) {e.printStackTrace();}
				try {conn.close();} catch(SQLException e) {e.printStackTrace();}
				
			}
			return titleList;
			
			
		}
		
		public List<TheaterInfoDTO> TheaterFacilityList(Connection conn, int seqBranch){
			String sql = "SELECT * " + 
					" from THEATER_FACILITY " + 
					" WHERE SEQ_BRANCH = ? ";
			
			PreparedStatement pstmt = null;
			ResultSet rs = null;	
			ArrayList<TheaterInfoDTO> facilityList = new ArrayList<TheaterInfoDTO>();
			TheaterInfoDTO dto = null;
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, seqBranch);
				
				System.out.println(seqBranch);
				
				rs = pstmt.executeQuery();
				
				while (rs.next()) {
					dto = new TheaterInfoDTO();
					
					dto.setSeq_branch(rs.getInt("seq_branch"));
					dto.setBranch(rs.getString("branch"));
					dto.setIconFacility(rs.getString("iconfacility"));
					dto.setmFacility(rs.getString("mfacility"));

					System.out.println(dto.getIconFacility());
					facilityList.add(dto);
				
				}
				return facilityList;
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
		         JdbcUtil.close(pstmt);
				try {rs.close();} catch(SQLException e) {e.printStackTrace();}
				try {conn.close();} catch(SQLException e) {e.printStackTrace();}
				
			}
			return facilityList;
			
		}
		
		public List<TheaterInfoDTO> TheaterFloorList(Connection conn, int seqBranch) {
			String sql = "SELECT * " + 
					" from THEATER_FINFO " + 
					" WHERE SEQ_BRANCH = ? ";
			
			PreparedStatement pstmt = null;
			ResultSet rs = null;	
			ArrayList<TheaterInfoDTO> floorList = new ArrayList<TheaterInfoDTO>();
			TheaterInfoDTO dto = null;
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, seqBranch);
				
				System.out.println(seqBranch);
				
				rs = pstmt.executeQuery();
				
				while (rs.next()) {
					dto = new TheaterInfoDTO();
					
					dto.setSeq_branch(rs.getInt("seq_branch"));
					dto.setBranch(rs.getString("branch"));
					dto.setFloor(rs.getString("floor"));
					dto.setInformation(rs.getString("information"));

					System.out.println(dto.getIconFacility());
					floorList.add(dto);
				
				}
				return floorList;
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
		         JdbcUtil.close(pstmt);
				try {rs.close();} catch(SQLException e) {e.printStackTrace();}
				try {conn.close();} catch(SQLException e) {e.printStackTrace();}
				
			}
			return floorList;
		}
		
		public List<TheaterInfoDTO> TheaterParkList(Connection conn, int seqBranch) {
			String sql = "SELECT * " + 
					" from THEATER_PARK " + 
					" WHERE SEQ_BRANCH = ? ";
			
			PreparedStatement pstmt = null;
			ResultSet rs = null;	
			ArrayList<TheaterInfoDTO> parkList = new ArrayList<TheaterInfoDTO>();
			TheaterInfoDTO dto = null;
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, seqBranch);
				
				System.out.println(seqBranch);
				
				rs = pstmt.executeQuery();
				
				while (rs.next()) {
					dto = new TheaterInfoDTO();
					
					dto.setSeq_branch(rs.getInt("seq_branch"));
					dto.setBranch(rs.getString("branch"));
					dto.setIconPark(rs.getString("icon"));
					dto.setpPart(rs.getString("ppart"));
					dto.setpInfo(rs.getString("pinfo"));
					dto.setSeq_pinfo(rs.getInt("seq_pinfo"));

					System.out.println(dto.getIconFacility());
					parkList.add(dto);
				
				}
				return parkList;
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
		         JdbcUtil.close(pstmt);
				try {rs.close();} catch(SQLException e) {e.printStackTrace();}
				try {conn.close();} catch(SQLException e) {e.printStackTrace();}
				
			}
			return parkList;
		}
		
		public List<TheaterInfoDTO> TheaterTrafficList(Connection conn, int seqBranch) {
			String sql = "SELECT * " + 
					" from THEATER_TRAFFIC " + 
					" WHERE SEQ_BRANCH = ? ";
			
			PreparedStatement pstmt = null;
			ResultSet rs = null;	
			ArrayList<TheaterInfoDTO> TrafficList = new ArrayList<TheaterInfoDTO>();
			TheaterInfoDTO dto = null;
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, seqBranch);
				
				System.out.println(seqBranch);
				
				rs = pstmt.executeQuery();
				
				while (rs.next()) {
					dto = new TheaterInfoDTO();
					
					dto.setSeq_branch(rs.getInt("seq_branch"));
					dto.setBranch(rs.getString("branch"));
					dto.setSeq_tpart(rs.getInt("seq_tpart"));
					dto.setIconTraffic(rs.getString("icon"));
					dto.setTraffic(rs.getString("traffic"));
					dto.setRoot(rs.getString("root"));

					System.out.println(dto.getIconFacility());
					TrafficList.add(dto);
				
				}
				return TrafficList;
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
		         JdbcUtil.close(pstmt);
				try {rs.close();} catch(SQLException e) {e.printStackTrace();}
				try {conn.close();} catch(SQLException e) {e.printStackTrace();}
				
			}
			return TrafficList;
		}
		
	/*
	  select seq_branch, seq_npart, title, content, to_char(regidate, 'YYYY.MM.dd')
	  regidate from notice where seq_branch = ?
	 */
		public List<TheaterInfoDTO> TheaterNoticeList(Connection conn, int seqBranch) {
			String sql = "select seq_branch, seq_npart, title, content, to_char(regidate, 'YYYY.MM.dd') " + 
					"	  regidate from notice where seq_branch = ?";
			// 해야함
			PreparedStatement pstmt = null;
			ResultSet rs = null;	
			ArrayList<TheaterInfoDTO> theaterNoticeList = new ArrayList<TheaterInfoDTO>();
			TheaterInfoDTO dto = null;
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, seqBranch);
				
				System.out.println(seqBranch);
				
				rs = pstmt.executeQuery();
				
				while (rs.next()) {
					dto = new TheaterInfoDTO();
					
					dto.setSeq_branch(rs.getInt("seq_branch"));
					dto.setBranch(rs.getString("branch"));
					dto.setSeq_tpart(rs.getInt("seq_tpart"));
					dto.setIconTraffic(rs.getString("icon"));
					dto.setTraffic(rs.getString("traffic"));
					dto.setRoot(rs.getString("root"));

					System.out.println(dto.getIconFacility());
					TrafficList.add(dto);
				
				}
				return TrafficList;
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
		         JdbcUtil.close(pstmt);
				try {rs.close();} catch(SQLException e) {e.printStackTrace();}
				try {conn.close();} catch(SQLException e) {e.printStackTrace();}
				
			}
			return TrafficList;
		}
				
		
}

