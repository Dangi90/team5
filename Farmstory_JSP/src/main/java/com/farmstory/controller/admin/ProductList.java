package com.farmstory.controller.admin;

import com.farmstory.DAO.ProductDAO;
import com.farmstory.DTO.ProductDTO;
import com.farmstory.DTO.UserDTO;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@WebServlet("/admin/productList.do")
public class ProductList extends HttpServlet{
	private static final long serialVersionUID = 1L;
	Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    // ProductDAO의 인스턴스 얻기
	    ProductDAO dao = ProductDAO.getInstance();
	    
	    // Product 목록 가져오기 (ProductDTO 리스트)
	    List<ProductDTO> products = dao.selectProducts();
	    logger.debug("products : {}", products);
	    // JSP에 Product 목록 전달
	    req.setAttribute("products", products);
	    
	    // JSP로 포워딩
	    RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/admin/productList.jsp");
	    dispatcher.forward(req, resp);
	}

}
