package com.craftsman.ssm.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.craftsman.ssm.entity.Admin;
import com.craftsman.ssm.entity.User;

public class ForrgroundLoginFilter implements Filter {

	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub

	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// 获得在下面代码中要用的request,response,session对象
		HttpServletRequest servletRequest = (HttpServletRequest) request;
		HttpServletResponse servletResponse = (HttpServletResponse) response;
		HttpSession session = servletRequest.getSession();

		// 获得用户请求的URI
		String path = servletRequest.getRequestURI();

		// 从session里取admin
		//Admin admin = (Admin) session.getAttribute("admin");
		User user=(User) session.getAttribute("loginuser");

		/*
		 * 创建类Constants.java，里面写的是无需过滤的页面 for (int i = 0; i <
		 * Constants.NoFilter_Pages.length; i++) {
		 * 
		 * if (path.indexOf(Constants.NoFilter_Pages[i]) > -1) {
		 * chain.doFilter(servletRequest, servletResponse); return; } }
		 */

		// 登陆页面无需过滤
		if (path.indexOf("/craftsman/backlogin.html") > -1) {
			chain.doFilter(servletRequest, servletResponse);
			return;
		}
		if(path.indexOf("/craftsman/page/usercenter.jsp")>-1){
			System.out.println(11);
			if(user==null){
				servletResponse.sendRedirect("/craftsman/login.html");
				
			}else{
				chain.doFilter(request, response);
			}
			
		}
		

		// 判断如果没有取到信息,就跳转到登陆页面
		
	}

	public void destroy() {
		// TODO Auto-generated method stub

	}

}