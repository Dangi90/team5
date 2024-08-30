package com.farmstory.controller.admin;

import java.io.IOException;
import java.util.List;

import com.farmstory.DAO.OrderDAO;
import com.farmstory.DAO.ProductDAO;
import com.farmstory.DAO.UserDAO;
import com.farmstory.DTO.OrderDTO;
import com.farmstory.DTO.ProductDTO;
import com.farmstory.DTO.UserDTO;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/admin/index.do")
public class index extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private ProductDAO productDao = ProductDAO.getInstance();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		 // Product 목록 가져오기 (ProductDTO 리스트)
	    List<ProductDTO> products = productDao.selectProducts();
	    // JSP에 Product 목록 전달
	    req.setAttribute("products", products);
	    
	    List<OrderDTO> orders = OrderDAO.getInstance().selectCartOrders();
	    req.setAttribute("orders", orders);

	    // 사용자 목록 가져오기
        UserDAO dao = UserDAO.getInstance();
        List<UserDTO> users = dao.selectUsers();
        
        // JSP에 사용자 목록 전달
        req.setAttribute("users", users);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/admin/index.jsp");
		dispatcher.forward(req, resp);
		
	}
}
