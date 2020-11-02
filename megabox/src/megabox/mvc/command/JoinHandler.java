package megabox.mvc.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import megabox.mvc.model.MemberInfoDTO;
import megabox.mvc.service.MemberInfoService;

public class JoinHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
			if (request.getMethod().equalsIgnoreCase("post")) {
				doPost(request,response);
				return null;
			}
			return "/join";
	}

	private void doPost(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("regId");
		String pwd1 = request.getParameter("regPwd");
		String pwd2 = request.getParameter("regPwdChk");
		String email = request.getParameter("regEmail");
		String name = request.getParameter("regName");
		String tel = request.getParameter("regTel");
		String birth = request.getParameter("regBirth");
		if (id==null||pwd1==null||pwd2==null||email==null||name==null||tel==null||birth==null
			||id.equals("")||pwd1.equals("")||pwd2.equals("")||email.equals("")||name.equals("")||tel.equals("")||birth.equals("")) {
			request.getSession().setAttribute("messageType","오류메세지");
			request.getSession().setAttribute("messageContent","정보를 입력하세요");
			response.sendRedirect("/megabox/join.do");
			return;
		}
		if (!pwd1.equals(pwd2)) {
			request.getSession().setAttribute("messageType","오류메세지");
			request.getSession().setAttribute("messageContent","비밀번호가 일치하지 않습니다");
			response.sendRedirect("/megabox/join.do");
			return;
		}
		MemberInfoService service = new MemberInfoService();
		MemberInfoDTO dto = new MemberInfoDTO();
		dto.setM_id(id);
		dto.setPwd(pwd1);
		dto.setEmail(email);
		dto.setName(name);
		dto.setTel(tel);
		dto.setBirth(birth);
		int result = service.mkMember(dto);
		if (result == 1 ) {
			request.getSession().setAttribute("name", name);
			response.sendRedirect("/megabox/join/success.do");
			return;
		}else {
			response.sendRedirect("/megabox/join/fail.do");
			return;
		}
	}
}
