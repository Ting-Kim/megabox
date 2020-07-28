package megabox.mvc.service;

import java.util.List;

import megabox.mvc.dao.ScreenFirstPageDAO;
import megabox.mvc.dao.ScreenTableDAO;
import megabox.mvc.model.CalendarDTO;
import megabox.mvc.model.ScreenMovieDTO;
import megabox.mvc.model.ScreenTableDTO;



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
	
	
}	
