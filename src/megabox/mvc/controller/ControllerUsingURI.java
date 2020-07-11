package megabox.mvc.controller;

import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import megabox.mvc.command.CommandHandler;

public class ControllerUsingURI extends HttpServlet{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Map<String, CommandHandler> commandHandlerMap = new HashMap<String, CommandHandler>();

	@Override
	public void init() throws ServletException {	
		String path = getInitParameter("configFile");
		String configFilePath = getServletContext().getRealPath(path);
		Properties prop = new Properties();
		try ( FileReader fr = new FileReader(configFilePath)  ){
			prop.load(fr);
		}catch( IOException e) {
			throw new ServletException(e);
		}
		Iterator<Object> ir = prop.keySet().iterator();
		while (ir.hasNext()) {
			String url = (String) ir.next();    
			String handlerClassName = prop.getProperty(url); 
			// 
			try {
				Class<?> handlerClass = Class.forName(handlerClassName);
				CommandHandler handlerInstance =  (CommandHandler) handlerClass.newInstance();			
				commandHandlerMap.put(url, handlerInstance);	
			}
			catch(ClassNotFoundException | InstantiationException 
					| IllegalAccessException e) {
				throw new ServletException(e);
			}
		}
	}
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	private void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		 
		String requestURI =  request.getRequestURI();
		 
		// System.out.println("> 요청 URI : " + requestURI );
		if(  requestURI.indexOf( request.getContextPath() ) == 0) {
			requestURI = requestURI.substring(request.getContextPath().length());
		}
		//System.out.println("> 요청 URI : " + requestURI );
// list.do -> GetMessageListHandler
		CommandHandler handler = commandHandlerMap.get(requestURI);
		String viewPage = null;
		try {
			viewPage  = handler.process(request, response);
		} catch (Exception e) { 
			e.printStackTrace();
		}
		if( viewPage != null ) {
			String prefix ="/WEB-INF/page"; 
			String suffix = ".jsp";
			viewPage = String.format("%s%s%s", prefix, viewPage, suffix);
			
			RequestDispatcher dispatcher
			= request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}
	}

}
