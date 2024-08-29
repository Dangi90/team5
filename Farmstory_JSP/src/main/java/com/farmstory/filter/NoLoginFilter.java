package com.farmstory.filter;

import java.io.IOException;

import com.farmstory.DTO.UserDTO;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebFilter(urlPatterns = {"/member/login.do", "/member/register.do"})
public class NoLoginFilter implements Filter {

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
			throws IOException, ServletException {
	System.out.println("no로그인 필터 실행");
		
		// 로그인 여부 확인
		HttpServletRequest req = (HttpServletRequest) arg0;
		HttpSession session = req.getSession();
		
		UserDTO sessUser = (UserDTO) session.getAttribute("sessUser");
		System.out.println(sessUser);
		if(sessUser != null) {
			// 로그인 외어있으면 메인페이지
			HttpServletResponse resp = (HttpServletResponse) arg1;
			resp.sendRedirect("/Farmstory_JSP/index.do");
		}else {
			// 로그인 되어있지 않으면 다음 필터
			arg2.doFilter(arg0, arg1);
		}
		
	}

}
