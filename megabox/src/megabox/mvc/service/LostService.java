package megabox.mvc.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import megabox.mvc.dao.LostDAO;
import megabox.mvc.dao.StoreInfoDAO;
import megabox.mvc.model.LostDTO;
import megabox.mvc.model.LostReplyDTO;
import megabox.mvc.model.StoreInfoDTO;

public class LostService {

	
	
	private static final int Message_Count_Per_Page = 10;




public PageList2 qna(int currentPage, String theater, String qna ,String searchWord) {
	
	Connection conn = null;	
	int currentPageNumber = currentPage;


	try {
    		
    		
    conn = ConnectionProvider.getConnection();
	LostDAO dao = LostDAO.getInstance();

	List<LostDTO> list =null;
	int firstRow = 0;
	int endRow= 0;
	int messageTotalCount = dao.countLost(conn ,theater,qna,searchWord );

	if (messageTotalCount>0) {
		firstRow = (currentPage -1) * Message_Count_Per_Page;
		endRow = firstRow+ Message_Count_Per_Page;
		list = dao.qna(conn, firstRow , endRow ,theater,qna,searchWord );
	
		
	}else {
		currentPageNumber=0;
		list = Collections.emptyList();					
	}
	
   	return new PageList2(
    		
    		 list,  messageTotalCount, 
                currentPageNumber,  Message_Count_Per_Page, 
                firstRow,  endRow
    		);
    } catch (Exception e) {
    	
    	
       throw new RuntimeException(e);
    }finally {JdbcUtil.close(conn);}
	

}


public LostDTO select(int seqLost) {
	LostDAO dao = LostDAO.getInstance();
    try(Connection conn = ConnectionProvider.getConnection()) {
    	LostDTO list =  dao.selectOne(conn,seqLost);
    return list;
    } catch (Exception e) {
       throw new RuntimeException(e);
    }
}




public LostReplyDTO writeReply(String contents, int seq_lost) {
	LostDAO dao = LostDAO.getInstance();
    try(Connection conn = ConnectionProvider.getConnection()) {
    
    	int count =  dao.writeReply(conn,contents,seq_lost);

    	System.out.println("service  seq_lost: "+seq_lost  );
    	
    	dao.update(conn,count, seq_lost);
    	
    	LostReplyDTO list =  dao.writeReply2(conn);
    
   
    return list;
    } catch (Exception e) {
       throw new RuntimeException(e);
    }
 }


public List<LostReplyDTO> listReply(int seqLost) {
	LostDAO dao = LostDAO.getInstance();
    try(Connection conn = ConnectionProvider.getConnection()) {
    
    	List<LostReplyDTO> dto = dao.listReply(conn,seqLost);

    return dto;
    } catch (Exception e) {
       throw new RuntimeException(e);
    }
	
}


public void delete(int seqWrite) {
	LostDAO dao = LostDAO.getInstance();
    try(Connection conn = ConnectionProvider.getConnection()) {
     dao.delete(conn,seqWrite);

    } catch (Exception e) {
       throw new RuntimeException(e);
    }

}


public int pwd(int seq_lost) {
	// TODO Auto-generated method stub
	LostDAO dao = LostDAO.getInstance();
    try(Connection conn = ConnectionProvider.getConnection()) {
    int pwd= dao.pwd(conn,seq_lost);
    
    
    return pwd;
    } catch (Exception e) {
       throw new RuntimeException(e);
    }
}






}