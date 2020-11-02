package megabox.mvc.command;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import megabox.mvc.model.DiscountDTO;
import megabox.mvc.service.AjaxCardListService;
import net.sf.json.JSONObject;

public class AjaxCardListHandler implements AjaxHandler{

	@Override
	public void process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String cardKindCd = request.getParameter("cardKindCd");
		String cardPartrCd =  request.getParameter("cardPartrCd") == null ? "" : request.getParameter("cardPartrCd");
		System.out.println("cardKindCd : "+ cardKindCd);
		System.out.println("cardPartrCd : "+cardPartrCd);
		switch (cardKindCd) {
		case "CKC01": cardKindCd = "2"; break;
		case "CKC02": cardKindCd = "1"; break;
		case "CKC03": cardKindCd = "3"; break;
		}
		
		
		Map<String, Object> countMap = new HashMap<String, Object>();
		List<DiscountDTO> cardCoList = null;
		List<DiscountDTO> selectList = null;
		try {
			AjaxCardListService service =  new AjaxCardListService();
			DiscountDTO dto =service.count();
			countMap.put("count", dto);
			cardCoList =  service.divide(cardKindCd);
			selectList =  service.select(cardKindCd, cardPartrCd);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		JSONObject jsonObj = new JSONObject();
		jsonObj.put("countMap", countMap);
		jsonObj.put("cardCoList", cardCoList);
		jsonObj.put("selectList", selectList);
		PrintWriter pw = response.getWriter();
		pw.print(jsonObj);
	}
}


