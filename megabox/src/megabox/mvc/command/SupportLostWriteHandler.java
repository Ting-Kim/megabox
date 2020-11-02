package megabox.mvc.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import megabox.mvc.service.LostWriteService;

public class SupportLostWriteHandler implements CommandHandler{


	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		if( request.getMethod().equalsIgnoreCase("GET")) {
			return "/supportLostWrite";
		}else if(request.getMethod().equalsIgnoreCase("POST")) {
			request.setCharacterEncoding("UTF-8");
			response.setContentType("text/html charset=UTF-8"); 
			 doPost(request, response);
			return "/supportLost";
		}
			return null;
		}
		
	

	private void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
				
		
		String theater  = request.getParameter("theater");
		String name =request.getParameter("name");
		String tel =request.getParameter("tel");
		String email = request.getParameter("email");
		String content =  request.getParameter("content");
		String pwd  =request.getParameter("pwd");
		String title = request.getParameter("title");
		
		
		int chk =request.getParameter("chk") ==null ? 0: Integer.parseInt( request.getParameter("chk")) ; //값이 1이면 체크  0이면 빈칸
		int Nomember = Integer.parseInt( request.getParameter("Nomember"));  //값이 1이면 회원 0이면 비회원
		int MemberSeq =Integer.parseInt( request.getParameter("MemberSeq"));  //회원의 경우 받아오는 seq_member / 0 이면 비회원
		
		
		LostWriteService service =new LostWriteService();
		
System.out.println(chk);
System.out.println(Nomember);
	
		 service.writeLost(theater,name, tel, email, content, pwd,title ,Nomember ,MemberSeq); 

 
	
		 
		 //빈칸이 있을 경우 경고창
		/*if( theater == null ||  name == null|| tel == null || email == null|| content == null || pwd ==null || chk== 0  ) { 
	
			request.getSession().setAttribute("error", "빈칸을 모두 입력하세요");
			request.getSession().setAttribute("error2", "오류메세지");
		
			response.sendRedirect("/supportLostWrite.do");
				return;*/
		}
		
	}

