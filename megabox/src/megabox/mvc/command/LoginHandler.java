package megabox.mvc.command;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import megabox.mvc.model.MemberInfoDTO;
import megabox.mvc.service.MemberInfoService;

public class LoginHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		if (request.getMethod().equalsIgnoreCase("post")) {
			doPost(request,response);
			return null;
		}
		
		return "/main";
	}

	private void doPost(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String saveId = request.getParameter("chkIdSave");
		
		Cookie c=null;
		if (id==null||id.equals("")||pwd==null||pwd.equals("")) {
			request.getSession().setAttribute("error", "로그인 오류");
			request.getSession().setAttribute("content", "아이디와 비밀번호를 입력해주세요");
		}
		MemberInfoService service = new MemberInfoService();
		MemberInfoDTO dto = new MemberInfoDTO();
		if (id!=null&&pwd!=null) {
			dto=service.login(id, pwd);
			if (dto==null) {
				request.getSession().setAttribute("loginErrorTit", "로그인 오류");
				request.getSession().setAttribute("loginError", "아이디와 비밀번호를 확인해주세요");
			}else { 
				request.getSession().setAttribute("auth", dto);
				if (saveId!=null) {
					c = new Cookie("saveId",id);
		            c.setMaxAge(60*60*24*7); //7일간 저장
		            response.addCookie(c);
		        }else {
		            c = new Cookie("saveId",id);
		            c.setMaxAge(0);
		            response.addCookie(c);
		        }
			}
		}
		response.sendRedirect("/megabox/main.do");
	}
}
