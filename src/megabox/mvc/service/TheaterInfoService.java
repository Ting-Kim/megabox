package megabox.mvc.service;

import java.sql.Connection;
import java.util.List;

import javax.management.RuntimeErrorException;

import com.util.ConnectionProvider;

import megabox.mvc.dao.TheaterInfoDAO;
import megabox.mvc.dao.TheaterListDAO;
import megabox.mvc.model.TheaterInfoDTO;
import megabox.mvc.model.TheaterListDTO;

public class TheaterInfoService {	

	
	public List<TheaterInfoDTO> infoSelect(int seqBranch){
		TheaterInfoDAO dao = TheaterInfoDAO.getInstance();
		try (Connection conn = ConnectionProvider.getConnection()){
			List<TheaterInfoDTO> titleList = dao.TheaterInfoList(conn, seqBranch);
			return titleList;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		
	} // infoSelect
	
	public List<TheaterInfoDTO> facilitySelect(int seqBranch){
		TheaterInfoDAO dao = TheaterInfoDAO.getInstance();
		try (Connection conn = ConnectionProvider.getConnection()){
			List<TheaterInfoDTO> facilityList = dao.TheaterFacilityList(conn, seqBranch);
			return facilityList;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		
	} // facilitySelect
	
	public List<TheaterInfoDTO> floorSelect(int seqBranch){
		TheaterInfoDAO dao = TheaterInfoDAO.getInstance();
		try (Connection conn = ConnectionProvider.getConnection()){
			List<TheaterInfoDTO> floorList = dao.TheaterFloorList(conn, seqBranch);
			return floorList;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		
	} // floorSelect
	
	public List<TheaterInfoDTO> parkSelect(int seqBranch){
		TheaterInfoDAO dao = TheaterInfoDAO.getInstance();
		try (Connection conn = ConnectionProvider.getConnection()){
			List<TheaterInfoDTO> parkList = dao.TheaterParkList(conn, seqBranch);
			return parkList;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		
	} // parkSelect
	
	public List<TheaterInfoDTO> trafficSelect(int seqBranch){
		TheaterInfoDAO dao = TheaterInfoDAO.getInstance();
		try (Connection conn = ConnectionProvider.getConnection()){
			List<TheaterInfoDTO> trafficList = dao.TheaterTrafficList(conn, seqBranch);
			return trafficList;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		
	} // trafficSelect
}
