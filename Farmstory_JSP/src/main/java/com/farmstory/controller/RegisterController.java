package com.farmstory.controller;

import java.io.IOException;

import com.farmstory.DTO.UserDTO;
import com.farmstory.service.UserService;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/member/register.do")
public class RegisterController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	private UserService service = UserService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/member/register.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 데이터 수신
		String uid = req.getParameter("uid");
		String pass = req.getParameter("pass1");
		String name = req.getParameter("name");
		String nick = req.getParameter("nick");
		String email = req.getParameter("email");
		String hp = req.getParameter("hp");
		String grade = req.getParameter("grade");
		String addr = req.getParameter("addr");
		String regip = req.getRemoteAddr();
		String regdate = req.getParameter("regdate");
		
		// DTO 생성
		UserDTO userDto = new UserDTO();
		userDto.setUid(uid);
		userDto.setPass(pass);
		userDto.setName(name);
		userDto.setNick(nick);
		userDto.setEmail(email);
		userDto.setHp(hp);
		userDto.setGrade(grade);
		userDto.setAddr(addr);
		userDto.setRegip(regip);
		userDto.setRegdate(regdate);
		
		// 데이터 저장
		service.insertUser(userDto);
	
		// 리다이렉트
		resp.sendRedirect("/Farmstory_JSP/member/login.do");
	}
	
}






