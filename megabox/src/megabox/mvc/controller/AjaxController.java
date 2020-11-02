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

import megabox.mvc.command.AjaxHandler;
import megabox.mvc.command.CommandHandler;

public class AjaxController extends HttpServlet{

	private static final long serialVersionUID = 1L;

	private Map<String, AjaxHandler> AjaxHandlerMap = new HashMap<String, AjaxHandler>();
	@Override
	public void init() throws ServletException {
		String path = getInitParameter("configFile");
		String configFilePath = getServletContext().getRealPath(path);
		Properties prop = new Properties();
		try(FileReader fr = new FileReader(configFilePath)) {
			prop.load(fr);
		}catch(IOException e) {
			throw new ServletException(e);
		}
		Iterator<Object> ir = prop.keySet().iterator();
		while(ir.hasNext()) {
			String url = (String) ir.next(); 
			String handlerClassName = prop.getProperty(url);  
			Class<?> handlerClass;
			try {
				handlerClass = Class.forName(handlerClassName);
				AjaxHandler handlerInstance = (AjaxHandler) handlerClass.newInstance();
				AjaxHandlerMap.put(url, handlerInstance);

			} catch (ClassNotFoundException | InstantiationException | IllegalAccessException e) {
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

			System.out.println("> Ajax URI : " + requestURI );
			if(  requestURI.indexOf( request.getContextPath() ) == 0) {
				requestURI = requestURI.substring(request.getContextPath().length());
			}
			//System.out.println("> 요청 URI : " + requestURI );
			// list.do -> GetMessageListHandler
			AjaxHandler handler = AjaxHandlerMap.get(requestURI);
			String viewPage = null;
			try {
				handler.process(request, response);
			} catch (Exception e) { 
				e.printStackTrace();
			}
			
		}
		public String getJSON() {
			return null;}

	}
