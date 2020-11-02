package megabox.mvc.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import megabox.mvc.service.MemberInfoService;

public class ChangePwdHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		String pwd = request.getParameter("pwd");
		String id = (String) request.getSession().getAttribute("id");
		int result=-1;
		MemberInfoService service= new MemberInfoService();
		result = service.changePwd(pwd,id);
		request.getSession().removeAttribute("id");
		if (result==1) {
			response.sendRedirect("/megabox/changeSuccess.do");
			return null;
		}
		return "/not";
	}

}
