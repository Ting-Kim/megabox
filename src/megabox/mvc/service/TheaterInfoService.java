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
	
	// 상수 선언 : 한페이지에 5개의 공지사항 .
	private static final int NOTICE_COUNT_PER_PAGE = 3;
	
	// 현재페이지 번호
	public PaginationList getNoticeList(int pageNumber, int seqBranch) {
		Connection conn = null;
		int currentPageNumber = pageNumber;
		try {
			conn = ConnectionProvider.getConnection();
			
			TheaterInfoDAO theaterInfoDao = TheaterInfoDAO.getInstance();
			
			List<Integer> noticeTotalCount = theaterInfoDao.theaterNoticeCount(conn, seqBranch);
			
			List<TheaterInfoDTO> noticeList = null;
			int firstRow = 0;
			int endRow = 0;
			if (noticeTotalCount > 0) {
				firstRow =
						(pageNumber - 1) * NOTICE_COUNT_PER_PAGE + 1;
				endRow = firstRow + NOTICE_COUNT_PER_PAGE - 1;
				//      dao.selectList()     해당 페이지의 방명록을 select
				noticeList =
						theaterInfoDao.selectList(conn, firstRow, endRow);
			} else {
				currentPageNumber = 0;
				messageList = Collections.emptyList();
			}
			return new PaginationList(
					noticeList, noticeTotalCount
					, currentPageNumber
					, NOTICE_COUNT_PER_PAGE
					, firstRow, endRow);
			
		} catch (Exception e) {
		
		}finally {
			
		}
		
		
		
	}
	
	public List<TheaterInfoDTO> theaterNoticeSelect(int seqBranch){
		TheaterInfoDAO dao = TheaterInfoDAO.getInstance();
		try (Connection conn = ConnectionProvider.getConnection()){
			List<TheaterInfoDTO> theaterNoticeList = dao.TheaterNoticeList(conn, seqBranch);
			return theaterNoticeList;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		
	} // theaterNoticeSelect
	
	
	
}
