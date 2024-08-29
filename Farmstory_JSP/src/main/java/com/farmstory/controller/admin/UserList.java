package com.farmstory.controller.admin;

import java.io.IOException;
import java.util.List;

import com.farmstory.DAO.UserDAO;
import com.farmstory.DTO.UserDTO;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/admin/userList.do")
public class UserList extends HttpServlet{
	private static final long serialVersionUID = 1L;

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 사용자 목록 가져오기
        UserDAO dao = UserDAO.getInstance();
        List<UserDTO> users = dao.selectUsers();
        
        // JSP에 사용자 목록 전달
        req.setAttribute("users", users);
        
        // JSP로 포워딩
        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/admin/userList.jsp");
        dispatcher.forward(req, resp);
    }
}
