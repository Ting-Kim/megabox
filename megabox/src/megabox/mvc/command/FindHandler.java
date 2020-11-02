package megabox.mvc.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import megabox.mvc.model.MemberInfoDTO;
import megabox.mvc.service.MemberInfoService;

public class FindHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (request.getMethod().equalsIgnoreCase("get")) {
			return "/user-find";
		}else if (request.getMethod().equalsIgnoreCase("post")) {
			doPost(request, response);
			return null;
		}
		
		
		return "/user-find";
	}

	private void doPost(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		String find = request.getParameter("find");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String birth = request.getParameter("birth");
		String id = request.getParameter("id");
		MemberInfoDTO dto = null;
		MemberInfoService service = new MemberInfoService();
		if (find.equalsIgnoreCase("id")) {
			dto = service.findUserId(name,birth,tel);
			if (dto!=null) {
				request.getSession().setAttribute("id", dto.getM_id());
				response.sendRedirect("/megabox/user-find/id.do");
			}else {
				response.sendRedirect("/megabox/user-find/not.do");
			}
		}else {
			dto= service.findUserPwd(name,tel,id);
			if (dto!=null) {
				request.getSession().setAttribute("id", dto.getM_id());
				response.sendRedirect("/megabox/user-find/pwd.do");
			}else {
				response.sendRedirect("/megabox/user-find/not.do");
			}
		}
	}

}
