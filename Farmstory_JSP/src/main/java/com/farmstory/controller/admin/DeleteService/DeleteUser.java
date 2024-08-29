package com.farmstory.controller.admin.DeleteService;

import java.io.IOException;

import com.farmstory.DAO.UserDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/admin/deleteUser.do")
public class DeleteUser extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String[] uids = request.getParameterValues("uid");
        
        if (uids != null) {
            UserDAO userDAO = UserDAO.getInstance();
            userDAO.deleteUsers(uids);
        }
        
        response.sendRedirect("userList.do");
    }
}