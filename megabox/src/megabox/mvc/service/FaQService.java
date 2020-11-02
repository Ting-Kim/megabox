package megabox.mvc.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import megabox.mvc.dao.FaQDAO;
import megabox.mvc.model.FaQDTO;
import megabox.mvc.model.NoticeDTO;


public class FaQService {

	 
	
	private static final int Message_Count_Per_Page = 8;
	
	
	public PageList selectA(int currentPage, int seq){
		
		Connection conn = null;	
		int currentPageNumber = currentPage;
		int seqq = seq;

		try {
	    		
	    		
	    conn = ConnectionProvider.getConnection();
		FaQDAO dao = FaQDAO.getInstance();

		List<FaQDTO> list =null;
		int firstRow = 0;
		int endRow= 0;
		int messageTotalCount = dao.selectCount2(conn, firstRow,  endRow, seqq);


		if (messageTotalCount>0) {
			firstRow = (currentPage -1) * Message_Count_Per_Page+1;
			endRow = firstRow+ Message_Count_Per_Page-1;
			list = dao.selectListA(conn, firstRow , endRow, seqq);
		
			
		}else {
			currentPageNumber=0;
			list = Collections.emptyList();					
		}
		
	   	return new PageList(
	    		
	    		 list,  messageTotalCount, 
	                currentPageNumber,  Message_Count_Per_Page, 
	                firstRow,  endRow, seqq
	    		);
	    } catch (Exception e) {
	    	
	    	
	       throw new RuntimeException(e);
	    }finally {JdbcUtil.close(conn);}
		
		
		
	}
	
	
	
	public PageList selectPage(int currentPage, String word){
	
		
		Connection conn = null;	
		int currentPageNumber = currentPage;
		String searchWord = word;

		
	  
		try {
	    		
	    		
	    conn = ConnectionProvider.getConnection();
		FaQDAO dao = FaQDAO.getInstance();
		
		
	
		List<FaQDTO> list =null;
		int firstRow = 0;
		int endRow= 0;
		int messageTotalCount = dao.selectCount(conn, firstRow,  endRow, searchWord);


		if (messageTotalCount>0) {
			firstRow = (currentPage -1) * Message_Count_Per_Page+1;
			endRow = firstRow+ Message_Count_Per_Page-1;
			list = dao.selectList(conn, firstRow , endRow, searchWord);
			
		}else {
			currentPageNumber=0;
			list = Collections.emptyList();
					
		}
		
	 	
	   	return new PageList(
	    		
	    		 list,  messageTotalCount, 
	                currentPageNumber,  Message_Count_Per_Page, 
	                firstRow,  endRow, searchWord
	    		);
	    } catch (Exception e) {
	    	
	    	
	       throw new RuntimeException(e);
	    }finally {JdbcUtil.close(conn);}
	 
	}








	
	
	
	
}