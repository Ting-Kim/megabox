
package megabox.mvc.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SupportItemsHandler implements CommandHandler{


	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
	
	
		return "/supportTerms";
	}
}
