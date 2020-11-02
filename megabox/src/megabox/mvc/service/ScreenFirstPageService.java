package megabox.mvc.service;

import java.util.List;

import megabox.mvc.dao.ScreenChargeDAO;
import megabox.mvc.dao.ScreenFirstPageDAO;
import megabox.mvc.dao.ScreenTableDAO;
import megabox.mvc.model.CalendarDTO;
import megabox.mvc.model.PartTimeDTO;
import megabox.mvc.model.ScreenChargeDTO;
import megabox.mvc.model.ScreenMovieDTO;
import megabox.mvc.model.ScreenTableDTO;
import megabox.mvc.model.TheaterGradeDTO;



public class ScreenFirstPageService {
	
	public List<CalendarDTO> calendarSelect(){
		ScreenTableDAO dao = ScreenTableDAO.getInstance();
		try{
			List<CalendarDTO> calendarList = dao.CalendarList();
			return calendarList;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		
	} // calendarSelect
	
	public List<ScreenTableDTO> screenTableSelect(int seqBranch){
		ScreenFirstPageDAO dao = ScreenFirstPageDAO.getInstance();
		try{
			List<ScreenTableDTO> tableList = dao.ScreenTableList(seqBranch);
			return tableList;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		
	} // screenTableSelect
	
	public List<ScreenMovieDTO> screenMovieSelect(int seqBranch){
		ScreenFirstPageDAO dao = ScreenFirstPageDAO.getInstance();
		try{
			List<ScreenMovieDTO> screenMovieList = dao.ScreenMovieList(seqBranch);
			return screenMovieList;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	} // screenMovieSelect
	
	public List<ScreenMovieDTO> screenTheaterSelect(int seqBranch){
		ScreenFirstPageDAO dao = ScreenFirstPageDAO.getInstance();
		try{
			List<ScreenMovieDTO> screenTheaterList = dao.ScreenTheaterList(seqBranch);
			return screenTheaterList;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	} // screenTheaterSelect
	
	public List<ScreenChargeDTO> screenChargeSelect(int seqBranch){
		ScreenChargeDAO dao = new ScreenChargeDAO();
		try{
			List<ScreenChargeDTO> screenChargeList = dao.screenChargeList(seqBranch);
			return screenChargeList;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	} // screenChargeSelect
	
	public List<TheaterGradeDTO> theaterGradeSelect(int seqBranch){
		ScreenChargeDAO dao = new ScreenChargeDAO();
		try{
			List<TheaterGradeDTO> theaterGradeList = dao.theaterGradeList(seqBranch);
			return theaterGradeList;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	} // theaterGradeList
	
	public List<PartTimeDTO> partTimeSelect(int seqBranch){
		ScreenChargeDAO dao = new ScreenChargeDAO();
		try{
			List<PartTimeDTO> partTimeList = dao.partTimeList(seqBranch);
			return partTimeList;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	} // partTimeSelect
	
}	
