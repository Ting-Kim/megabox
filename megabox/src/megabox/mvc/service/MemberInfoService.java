package megabox.mvc.service;

import java.sql.Connection;
import java.util.List;

import com.util.ConnectionProvider;

import megabox.mvc.dao.MemberInfoDAO;
import megabox.mvc.model.MemberInfoDTO;

public class MemberInfoService {
	
	public int mkMember(MemberInfoDTO dto) {
		MemberInfoDAO dao = MemberInfoDAO.getInstance();
		int result =-1;
		try (Connection conn = ConnectionProvider.getConnection()){
			result=dao.newMember(conn, dto); // 1반환 = 성공
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return result;
	}
	public MemberInfoDTO login(String id, String pwd){
		MemberInfoDAO dao = MemberInfoDAO.getInstance();
		MemberInfoDTO dto = new MemberInfoDTO();
		try (Connection conn = ConnectionProvider.getConnection()){
			dto = dao.logIn(conn, id, pwd);
			if (dto==null) {
				return null;
			}
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return dto;
	}
	public MemberInfoDTO findUserPwd( String name, String tel, String id) {
		MemberInfoDTO dto = new MemberInfoDTO();
		MemberInfoDAO dao = MemberInfoDAO.getInstance();
		try (Connection conn = ConnectionProvider.getConnection()){
			dto=dao.findUserPwd(conn,name,tel,id);
			if (dto==null) {
				return null;
			}
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return dto;
	}
	public MemberInfoDTO findUserId(String name, String birth, String tel) {
		MemberInfoDTO dto = new MemberInfoDTO();
		MemberInfoDAO dao = MemberInfoDAO.getInstance();
		try (Connection conn = ConnectionProvider.getConnection()){
			dto=dao.findUserId(conn,name,birth,tel);
			if (dto==null) {
				return null;
			}
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return dto;
	}
	
	public int changePwd(String pwd, String m_id) {
		MemberInfoDAO dao = MemberInfoDAO.getInstance();
		try (Connection conn = ConnectionProvider.getConnection()){
			return dao.changePwd(conn,pwd,m_id);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
}
