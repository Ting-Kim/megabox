package megabox.mvc.service;

import java.util.List;

import megabox.mvc.dao.ScreenTableDAO;
import megabox.mvc.model.CalendarDTO;
import megabox.mvc.model.ScreenMovieDTO;
import megabox.mvc.model.ScreenTableDTO;



public class ScreenTableService {
	public List<ScreenTableDTO> screenTableSelect(int seqBranch){
		ScreenTableDAO dao = ScreenTableDAO.getInstance();
		try{
			List<ScreenTableDTO> tableList = dao.ScreenTableList(seqBranch);
			return tableList;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		
	} // screenTableSelect
	
	public List<CalendarDTO> calendarSelect(){
		ScreenTableDAO dao = ScreenTableDAO.getInstance();
		try{
			List<CalendarDTO> calendarList = dao.CalendarList();
			return calendarList;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		
	} // calendarSelect
	
	public List<ScreenMovieDTO> screenMovieSelect(int seqBranch, String calendarDate){
		ScreenTableDAO dao = ScreenTableDAO.getInstance();
		try{
			List<ScreenMovieDTO> screenMovieList = dao.ScreenMovieList(seqBranch, calendarDate);
			return screenMovieList;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	} // screenMovieSelect
}	
