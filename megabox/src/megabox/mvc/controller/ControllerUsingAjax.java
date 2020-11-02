package megabox.mvc.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import megabox.mvc.model.LostReplyDTO;
import megabox.mvc.model.NoticeDTO;
import megabox.mvc.model.PaymentDTO;
import megabox.mvc.model.ScreenInfoDTO;
import megabox.mvc.service.FaQService;
import megabox.mvc.service.LostService;
import megabox.mvc.service.MoviePageService;
import megabox.mvc.service.NoticeService;
import megabox.mvc.service.PageList;
import megabox.mvc.service.PaymentService;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class ControllerUsingAjax extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		
		String requestURI = request.getRequestURI();

		if (requestURI.indexOf(request.getContextPath()) == 0) {
			requestURI = requestURI.substring(request.getContextPath().length());
		}

            
            if( "/suppport/faq.aj".equals(requestURI)) {
            	try { FaQService service = new   FaQService();
            
            int seq= request.getParameter("seq")==null ? 0 :  Integer.parseInt(request.getParameter("seq")); 
            String pCurrentPage =   request.getParameter("page"); int currentPage = pCurrentPage == null? 1:
            Integer.parseInt(pCurrentPage);
            

            
            PageList result = service.selectA(currentPage,seq); 
            JSONObject jsonObject =   JSONObject.fromObject(result);

            
            response.setCharacterEncoding("UTF-8"); 

            
            
            response.getWriter().print(jsonObject);
            
            } catch (Exception e) { e.printStackTrace(); } }
            

		// 탭나눔

		if ("/suppport/notice/tab.aj".equals(requestURI)) {

			try {
				NoticeService service = new NoticeService();

				int seq = request.getParameter("seq") == null ? 0 : Integer.parseInt(request.getParameter("seq")); // 탭

				JSONArray jsonList = new JSONArray();

				ArrayList<NoticeDTO> result = service.selectA(seq);


				response.setCharacterEncoding("UTF-8");

				for (NoticeDTO noticeDTO : result) {
					JSONObject jsonObject = JSONObject.fromObject(noticeDTO);
				
					jsonList.add(jsonObject);
				}

				response.getWriter().print(jsonList);

			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		// 지역을 나눔
    
          
          if( "/suppport/notice/loc.aj".equals(requestURI)) { 
        	  
        	  try { 
        		  
        		  NoticeService service = new NoticeService();
      
          
          int loc= request.getParameter("loc")==null ? 0 :  Integer.parseInt(request.getParameter("loc")); 
          
          JSONArray jsonList = new JSONArray();


		ArrayList<NoticeDTO> location= service.selecNoitce(loc);


		response.setCharacterEncoding("UTF-8");

		for (NoticeDTO noticeDTO : location) {
			
			JSONObject jsonObject = JSONObject.fromObject(noticeDTO);
		
			jsonList.add(jsonObject);
		}

		response.getWriter().print(jsonList);

          
          } catch (Exception e) { e.printStackTrace(); } }
          
          
          
          
          //지역에 해당하는 글 선택
          if( "/suppport/notice/locList.aj".equals(requestURI)) { 
        	  
        	  try { 
        		  
        		  NoticeService service = new NoticeService();
          
          
        		  String theater =  request.getParameter("theater") ;
          
      
          JSONArray jsonList = new JSONArray();


		ArrayList<NoticeDTO> location= service.locList(theater);


		response.setCharacterEncoding("UTF-8");

		for (NoticeDTO noticeDTO : location) {
			
			JSONObject jsonObject = JSONObject.fromObject(noticeDTO);
		
			jsonList.add(jsonObject);
		}

		response.getWriter().print(jsonList);

          
          } catch (Exception e) { e.printStackTrace(); } }
        
         //searchWord찾기& 페이징
          
          	if(  "/suppport/notice/search.aj".equals(requestURI)) { 
        	  
        	  try { 
      	  
        		  NoticeService service = new NoticeService();
       
        		  String searchWord =  request.getParameter("searchWord") ;
       
        		  String pCurrentPage = request.getParameter("page");
        			int currentPage =  pCurrentPage == null?	1: Integer.parseInt(pCurrentPage);
        			

          PageList location= service.searchList(currentPage, searchWord);


          response.setCharacterEncoding("UTF-8");
          response.setContentType("text/html;charset=utf-8");

		 JSONObject obj = new JSONObject();
	      
	       
	       obj.put("data", location);
	        response.getWriter().print(obj);

          
          } catch (Exception e) { e.printStackTrace(); } }
          

          	
          	
          	
        //lost메인페이지
            //지역에 해당하는 글 선택
            
            if( "/suppport/notice/locLost.aj".equals(requestURI)) { 
          	  
          	  try { 
          		  
          NoticeService service = new NoticeService();
            
            int loc= request.getParameter("loc")==null ? 0 :  Integer.parseInt(request.getParameter("loc")); 
        
            
            JSONArray jsonList = new JSONArray();


  		ArrayList<NoticeDTO> location= service.selecNoitce2(loc);

 
  		
  		response.setCharacterEncoding("UTF-8");

  		for (NoticeDTO noticeDTO : location) {
  			
  			JSONObject jsonObject = JSONObject.fromObject(noticeDTO);
  		
  			jsonList.add(jsonObject);
  		}

  		response.getWriter().print(jsonList);

            
            } catch (Exception e) { e.printStackTrace(); } }
            
            
            
            
            //분실물문의 글 올릴때의 지역선택
            
            if( "/suppport/notice/lostWrite.aj".equals(requestURI)) { 
          	  
          	  try { 
          		  
          		  NoticeService service = new NoticeService();

          		  int loc= request.getParameter("loc")==null ? 0 :  Integer.parseInt(request.getParameter("loc")); 
          	      
                  JSONArray jsonList = new JSONArray();


        		ArrayList<NoticeDTO> location= service.selectWrite(loc);
        	

        		System.out.println(requestURI);

        		response.setCharacterEncoding("UTF-8");

        		for (NoticeDTO noticeDTO : location) {
        			
        			JSONObject jsonObject = JSONObject.fromObject(noticeDTO);
        		
        			jsonList.add(jsonObject);
        		}

        		response.getWriter().print(jsonList);

                  
                  } catch (Exception e) { e.printStackTrace(); } }
            
            
            
            
    
            //분실물 문의 모달 패스워드 검사
          	    if( "/support/lostPwd.aj".equals(requestURI)) { 
                    	  
                    	  try { 
                    		  
                    		  LostService service = new LostService();

                    			int seq_lost =  Integer.parseInt(request.getParameter("seq_lost"));
                    	       int pwdModal =  Integer.parseInt(request.getParameter("pwdModal"));
                    	       
             


                            	int pwd =  service.pwd(seq_lost);


                        
                        response.setCharacterEncoding("UTF-8"); 
                        response.setContentType("text/html;charset=utf-8");
                        JSONObject obj = new JSONObject();
                      
                        boolean data ;
                        
                       if (pwd==pwdModal) {
						data = true;
                       }else data = false;
      	
                       	obj.put("data", data);
                       	response.getWriter().print(obj);

                            
                            } catch (Exception e) { e.printStackTrace(); } }

          	    
          	    
          	    //스토어 결제창 모달 카드검사
                      

          	  if( "/store/paypay.aj".equals(requestURI)) { 
            	  try { 
            		  
            		  PaymentService service = new PaymentService();
            		  
            		String cardNum = request.getParameter("cardNum"); //카드번호
				  int cvcNum =Integer.parseInt( request.getParameter("cvcNum"));  //cvc번호
				  int co_card=  Integer.parseInt(request.getParameter("co_card")); //카드사
				  int m_seq= Integer.parseInt(request.getParameter("m_seq")); //멤버 seq
				  int mem_grade= Integer.parseInt(request.getParameter("mem_grade")); //멤버등급
				 
				  int payment= Integer.parseInt(request.getParameter("payment")); //가격
				  int product= Integer.parseInt(request.getParameter("product")); //제품 
				  int c_payment= Integer.parseInt(request.getParameter("c_payment")); //결제수단
				  int count= Integer.parseInt(request.getParameter("count")); //제품갯수
				  
				  
				 


                
                response.setCharacterEncoding("UTF-8"); 
                response.setContentType("text/html;charset=utf-8");
              

              
            int  cardNumExist =  service.Exist(cardNum,m_seq); //회원의 카드번호가 이미 존재하는 지 여부 파악. 존재하지 않으면 0
          
            
            PaymentDTO dto=  service.ONInsert(cardNumExist,  cardNum,  cvcNum, m_seq ,co_card,c_payment , count ,product , payment ,mem_grade);//카드존재유무에 따른 insert
            
  		
            JSONObject obj = new JSONObject();
                
             obj.put("dto", dto);
             response.getWriter().print(obj);
             
				

                    
                    } catch (Exception e) { e.printStackTrace(); } }
              
              //iframe
             if( "/book/loc.aj".equals(requestURI)) { 
               try { 
                  
                  NoticeService service = new NoticeService();
        
            
            int loc= request.getParameter("loc")==null ? 0 :  Integer.parseInt(request.getParameter("loc")); 
            
            JSONArray jsonList = new JSONArray();


        ArrayList<NoticeDTO> data= service.selectWrite(loc);


        response.setCharacterEncoding("UTF-8");

        for (NoticeDTO noticeDTO : data) {
           
           JSONObject jsonObject = JSONObject.fromObject(noticeDTO);
        
           jsonList.add(jsonObject);
        }

        response.getWriter().print(jsonList);

            
            } catch (Exception e) { e.printStackTrace(); } }
            

             
             if( "/book/screen.aj".equals(requestURI)) { 
                try { 
                   
                   
                   
                   String branch = request.getParameter("branch");
                   String dateScreen = request.getParameter("dateScreen");
                   
                   
                    MoviePageService service = new MoviePageService();
                    
                    
                    JSONArray jsonList = new JSONArray();
          
          
                    ArrayList<ScreenInfoDTO> data= service.movieDetail(branch,dateScreen);
          
          
                    response.setCharacterEncoding("UTF-8");
            
                    for (ScreenInfoDTO info : data) {
          
                       JSONObject jsonObject = JSONObject.fromObject(info);
               
                       jsonList.add(jsonObject); }
          
                    response.getWriter().print(jsonList);
      
           

             
             } catch (Exception e) { e.printStackTrace(); } }
            
             
      	}
	
	
	

	
	
	
	
	
	
	
	
	

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String requestURI = request.getRequestURI();

		if (requestURI.indexOf(request.getContextPath()) == 0) {
			requestURI = requestURI.substring(request.getContextPath().length());
		}

		
	      //분실물 게시판 관리자 댓글
        
        if( "/support/lost_reply_write.aj".equals(requestURI)) {  	
        	try {
        LostService service = new LostService();
        
     
        int seq_lost=  Integer.parseInt(request.getParameter("seq_lost")); 
        String contents =   request.getParameter("contents") ;
  
        	
        LostReplyDTO data= service.writeReply(contents, seq_lost);
       
        response.setCharacterEncoding("UTF-8"); 
        response.setContentType("text/html;charset=utf-8");
       JSONObject obj = new JSONObject();
      
       
       obj.put("data", data);
        response.getWriter().print(obj);
        
        } catch (Exception e) { e.printStackTrace(); } }
        
        
         
         
          //분실물 댓글 삭제
          
      if( "/support/lost_reply_delete.aj".equals(requestURI)) {
          try { LostService service = new
          LostService();
          
          int seqWrite =  Integer.parseInt(request.getParameter("seqWrite"));
          int seq_lost=Integer.parseInt(request.getParameter("seq_lost"));
          
          service.delete(seqWrite); //삭제하는 함수
          
          
          List<LostReplyDTO>result = service.listReply(seq_lost); //삭제한 후 리스트 받아오기
          
          
          response.setCharacterEncoding("UTF-8");
          response.setContentType("text/html;charset=utf-8");
          
          
          JSONArray jsonList = new JSONArray();
          
          for (LostReplyDTO LostReplyDTO : result) {
          
          JSONObject jsonObject = JSONObject.fromObject(LostReplyDTO);
          
          jsonList.add(jsonObject); }
          
          
          response.getWriter().print(jsonList);
          
          
          } catch (Exception e) { e.printStackTrace(); } }
         
         

      
      

	}








}