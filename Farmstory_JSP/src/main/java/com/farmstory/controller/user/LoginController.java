package com.farmstory.controller.user;

import java.io.IOException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.farmstory.DTO.UserDTO;
import com.farmstory.service.UserService;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/member/login.do")
public class LoginController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private UserService service = UserService.INSTANCE;
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String success = req.getParameter("success");
		req.setAttribute("success", success);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/member/login.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String uid  = req.getParameter("uid");
		String pass = req.getParameter("pass");
		logger.debug("uid : " + uid + ", pass : " + pass);
		
		UserDTO user = service.selectUser(uid, pass);
		logger.debug("user : " + user);
		
		if(user != null) {
			// 회원이 맞을 경우 -> 세션처리 후 리다이렉트
			HttpSession session = req.getSession();
			session.setAttribute("sessUser", user);
			
			resp.sendRedirect("/Farmstory_JSP/article/list.do");
			
		}else {
			// 회원이 아닐 경우 -> 다시 로그인 리다이렉트
			resp.sendRedirect("/Farmstory_jsp/member/login.do?success=100");
		}
	}
}