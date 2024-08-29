package com.farmstory.controller.admin.InfoService;

import java.io.IOException;

import com.farmstory.DAO.UserDAO;
import com.farmstory.DTO.UserDTO;
import com.google.gson.Gson;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/admin/InfoService/getOrderInfo.do")
public class GetOrderInfo extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uid = request.getParameter("uid");

        // Fetch the user details by UID
        UserDAO userDAO = UserDAO.getInstance();
        UserDTO user = userDAO.selectUserById(uid);
        
        System.out.println("Received UID: " + uid); // 로그 추가

        if (user == null) {
            response.sendError(HttpServletResponse.SC_NOT_FOUND, "User not found");
            return;
        }
        // Set response content type to JSON
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        // Convert the UserDTO object to JSON and write to response
        Gson gson = new Gson();
        String userJson = gson.toJson(user);

        response.getWriter().write(userJson);
    }
}
