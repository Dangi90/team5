package com.farmstory.controller.admin;

import java.io.IOException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.farmstory.DAO.OrderDAO;
import com.farmstory.DTO.OrderDTO;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/admin/orderList.do")
public class OrderList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	Logger logger = LoggerFactory.getLogger(this.getClass());
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		List<OrderDTO> orders = OrderDAO.getInstance().selectCartOrders();
		req.setAttribute("orders", orders);

		logger.debug("orders: " + orders );
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/admin/orderList.jsp");
		dispatcher.forward(req, resp);

	}
}
