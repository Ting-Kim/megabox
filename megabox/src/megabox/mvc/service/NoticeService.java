package megabox.mvc.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import megabox.mvc.dao.NoticeDAO;
import megabox.mvc.model.NoticeDTO;


public class NoticeService {

	
	private static final int Message_Count_Per_Page = 8;
	
	
	
	public PageList selectPage(int currentPage, int seq ){
	
		
		Connection conn = null;	
		int currentPageNumber = currentPage; 
	  
		try {
	    		    		
	    conn = ConnectionProvider.getConnection();
		NoticeDAO dao = NoticeDAO.getInstance();	
	
		List<NoticeDTO> list =null;
		int firstRow = 0;
		int endRow= 0;
		int messageTotalCount = dao.selectCount(conn ,seq); //12


		if (messageTotalCount>0) {
			firstRow = (currentPage -1) * Message_Count_Per_Page;
			endRow = firstRow+ Message_Count_Per_Page;


			list = dao.selectList(conn, firstRow , endRow , seq);
			
			
		}else {
			currentPageNumber=0;
			
			
			list = Collections.emptyList();
					
		}
		
	 	
	   	return new PageList(
	    		
	    		 list,  messageTotalCount, 
	                currentPageNumber,  Message_Count_Per_Page, 
	                firstRow,  endRow
	    		);
	    } catch (Exception e) {
	    	
	    	
	       throw new RuntimeException(e);
	    }finally {JdbcUtil.close(conn);}
	 
	}



	public ArrayList<NoticeDTO> selectA(int seq){
		NoticeDAO dao = NoticeDAO.getInstance();
	    try(Connection conn = ConnectionProvider.getConnection()) {
	    	
	    	
	    ArrayList <NoticeDTO> list =  dao.noticeList(conn,seq);


	    
	    return list;
	    } catch (Exception e) {
	       throw new RuntimeException(e);
	    }
	 }



	public ArrayList<NoticeDTO> selecNoitce(int loc) {
		
		NoticeDAO dao = NoticeDAO.getInstance();
	    try(Connection conn = ConnectionProvider.getConnection()) {
	    	
	    	
	    ArrayList <NoticeDTO> list =  dao.noticeLoc(conn, loc);


	    
	    return list;
	    } catch (Exception e) {
	       throw new RuntimeException(e);
	    }
	
	}
	
	public ArrayList<NoticeDTO> selecNoitce2(int loc) {
		
		NoticeDAO dao = NoticeDAO.getInstance();
	    try(Connection conn = ConnectionProvider.getConnection()) {
	    	
	    	System.out.println("service의 loc" + loc);
	    ArrayList <NoticeDTO> list =  dao.noticeLoc2(conn, loc);

	    return list;
	    } catch (Exception e) {
	       throw new RuntimeException(e);
	    }
	
	}



	public ArrayList<NoticeDTO> locList(String  theater) {
		NoticeDAO dao = NoticeDAO.getInstance();
	    try(Connection conn = ConnectionProvider.getConnection()) {
	    	
	    	
	    ArrayList <NoticeDTO> list =  dao.NoticelocList(conn, theater);


	    
	    return list;
	    } catch (Exception e) {
	       throw new RuntimeException(e);
	    }
	}


	//searchWord 페이징

	public  PageList  searchList(int currentPage ,String searchWord) {
		
		
				
		
		
		Connection conn = null;	
		int currentPageNumber = currentPage; 
	  
		try {
	    		    		
	    conn = ConnectionProvider.getConnection();
		NoticeDAO dao = NoticeDAO.getInstance();	
	
		List<NoticeDTO> list =null;
		int firstRow = 0;
		int endRow= 0;
		int messageTotalCount = dao.selectCountSearch(conn ,searchWord); //12


		if (messageTotalCount>0) {
			firstRow = (currentPage -1) * Message_Count_Per_Page;
			endRow = firstRow+ Message_Count_Per_Page;


			list = dao.selectListSearch(conn, firstRow , endRow , searchWord);
			
			
		}else {
			currentPageNumber=0;
			
			
			list = Collections.emptyList();
					
		}
		
	 	
	   	return new PageList(
	    		
	    		 list,  messageTotalCount, 
	                currentPageNumber,  Message_Count_Per_Page, 
	                firstRow,  endRow
	    		);
	    } catch (Exception e) {
	    	
	    	
	       throw new RuntimeException(e);
	    }finally {JdbcUtil.close(conn);}
	
		
	}

//목록누르면 글 출력페이지로 이동

	public NoticeDTO noticePage(int seqNotice) {
		
		
		NoticeDAO dao = NoticeDAO.getInstance();
	    try(Connection conn = ConnectionProvider.getConnection()) {	
	    	
	    	NoticeDTO  list =  dao.noticePage(conn, seqNotice);
	    
	    return list;
	    } catch (Exception e) {
	       throw new RuntimeException(e);
	    }
	}

	
	
	
	//목록누르면 이전  페이지로 이동
	public NoticeDTO noticePage2(int seqNotice) {
		
		
		NoticeDAO dao = NoticeDAO.getInstance();
	    try(Connection conn = ConnectionProvider.getConnection()) {	
	    	
	    	NoticeDTO  list2 =  dao.noticePage2(conn, seqNotice);
	    
	    return list2;
	    } catch (Exception e) {
	       throw new RuntimeException(e);
	    }
	}
	
	
	//목록 누르면 이후 페이지로 이동
	public NoticeDTO noticePage3(int seqNotice) {
		
		
		NoticeDAO dao = NoticeDAO.getInstance();
	    try(Connection conn = ConnectionProvider.getConnection()) {	
	    	
	    	NoticeDTO  list3 =  dao.noticePage3(conn, seqNotice);
	    
	    return list3;
	    } catch (Exception e) {
	       throw new RuntimeException(e);
	    }
	}


	//write에서 theater선택
	public ArrayList<NoticeDTO> selectWrite(int loc) {
		NoticeDAO dao = NoticeDAO.getInstance();
	    try(Connection conn = ConnectionProvider.getConnection()) {
	    	
	    	
	    ArrayList <NoticeDTO> list =  dao.noticeLoc3(conn, loc);


	    
	    return list;
	    } catch (Exception e) {
	       throw new RuntimeException(e);
	    }
	}




	

}