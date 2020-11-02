package megabox.mvc.command;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import megabox.mvc.dao.MemberInfoDAO;

public class ChkHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (request.getMethod().equalsIgnoreCase("get")) {
			String tel = request.getParameter("chkTel");
			MemberInfoDAO dao =MemberInfoDAO.getInstance();
			try (Connection conn = ConnectionProvider.getConnection()){
				response.getWriter().write(dao.chkTel(conn, tel)+"");
			} catch (Exception e) {
				e.getStackTrace();
			}
			return null;
		}else if(request.getMethod().equalsIgnoreCase("post")) {
			request.setCharacterEncoding("utf-8");
			String id = request.getParameter("chkId");
			MemberInfoDAO dao =MemberInfoDAO.getInstance();
			try (Connection conn = ConnectionProvider.getConnection()){
				response.getWriter().write(dao.chkId(conn, id)+"");
			} catch (Exception e) {
				e.getStackTrace();
			}
			return null;	
		}
		return null;
	}

}
