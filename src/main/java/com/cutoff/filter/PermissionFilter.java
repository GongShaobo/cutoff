package com.cutoff.filter;

import org.springframework.stereotype.Component;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Component
public class PermissionFilter implements Filter {

	private static List action = new ArrayList();
	
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	public void doFilter(ServletRequest request, ServletResponse response,
                         FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
        final HttpServletResponse resp = (HttpServletResponse) response;
		String path = req.getContextPath();
        final String basePath = req.getScheme()+"://"+req.getServerName()+":"+req.getServerPort()+path;
		HttpSession session = req.getSession(true);
		
		if(validateAction(req.getRequestURI())){
	    	chain.doFilter(request, response);
	    }
		else{
			if(null == session.getAttribute("userInfo")){
				resp.setHeader("Cache-Control", "no-store");  
		        resp.setDateHeader("Expires", 0);  
		        resp.setHeader("Prama", "no-cache");  
		        resp.sendRedirect(basePath+"/showLogin.htm");
		        return;
			}else
				chain.doFilter(request, response);
		}
	}

	@SuppressWarnings("unchecked")
	public void init(FilterConfig filterConfig) throws ServletException {
		action.add("showLogin.htm");
		action.add("login.htm");
		action.add("showSignUp.htm");
		action.add("showResetPassword.htm");
		action.add("signUp.htm");
	}
	private boolean validateAction(String url){
		boolean flag = false;
		for (int i = 0; i < action.size(); i++) {
			if(url.indexOf(action.get(i).toString())>0){
				flag = true;
				break;
			}
		}
		return flag;
	}
	private boolean validatePermission(String url){
		boolean flag = false;
		
		return flag;
	}
	
	
}
