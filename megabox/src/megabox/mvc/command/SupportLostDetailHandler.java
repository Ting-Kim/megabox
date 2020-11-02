package megabox.mvc.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import megabox.mvc.model.LostDTO;
import megabox.mvc.model.LostReplyDTO;
import megabox.mvc.service.LostService;

public class SupportLostDetailHandler implements CommandHandler {
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
	
		int seqLost = Integer.parseInt(request.getParameter("seqLost"));	


	    System.out.println("seqWrite");
	
		try {
			LostService service =  new LostService();
		
			
			LostDTO list =  service.select(seqLost);
			List<LostReplyDTO> dto = service.listReply(seqLost);


			
			//service.delete(seqWrite);//삭제함수->아작스에 구현햇음
			
			
			request.setAttribute("list", list );
	        request.setAttribute("dto", dto );
	        

	    } catch (Exception e) {
			e.printStackTrace();
	    }		
		
		
		

		return "/supportLostDetail";
	}
}



