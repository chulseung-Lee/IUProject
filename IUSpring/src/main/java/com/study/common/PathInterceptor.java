package com.study.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class PathInterceptor extends HandlerInterceptorAdapter {

	protected Log log = LogFactory.getLog(PathInterceptor.class);

	@SuppressWarnings("deprecation")
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		System.out.println("interceptor passing by : "+ request.getRequestURI());
		HttpSession session = request.getSession();
		if(session.getAttribute("realPath") == null || session.getAttribute("realPath").equals("") ) {

			session.setAttribute("realPath", request.getRealPath("/"));
			System.out.println("create session for real path");
		}
		// TODO Auto-generated method stub
		return super.preHandle(request, response, handler);
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		if (log.isDebugEnabled()) {
			log.debug("===           END          ===\n");
		}
	}
	
	
}
