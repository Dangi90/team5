package com.farmstory.controller.market;

import java.io.IOException;
import java.util.List;

import com.farmstory.DAO.OrderDAO;
import com.farmstory.DTO.OrderDTO;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/market/cart.do")
public class CartController extends HttpServlet{
	private static final long serialVersionUID = 1L;

	    private OrderDAO orderDAO = OrderDAO.getInstance();

	    // 상품 리스트를 처리하는 GET 요청
	    @Override
	    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        List<OrderDTO> orders = orderDAO.selectCartOrders();
	        request.setAttribute("orders", orders);

	        // JSP 페이지로 포워딩
	        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/market/cart.jsp");
	        dispatcher.forward(request, response);
	    }

	    // 상품 추가를 처리하는 POST 요청
	    @Override
	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    	

	        response.sendRedirect("/Farmstory_JSP/market/cart.do");
	    }
}
