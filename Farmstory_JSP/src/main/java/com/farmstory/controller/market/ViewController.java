package com.farmstory.controller.market;

import java.io.IOException;
import java.util.List;

import com.farmstory.DAO.ProductDAO;
import com.farmstory.DTO.ProductDTO;

import com.farmstory.DAO.ProductDAO;
import com.farmstory.DTO.ProductDTO;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/market/view.do")
public class ViewController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private ProductDAO productDAO = ProductDAO.getInstance();
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String no = req.getParameter("no");
		ProductDTO products = productDAO.getProduct(no);
        req.setAttribute("products", products);
        
        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/market/view.jsp");
        dispatcher.forward(req, resp);
    }
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	 // Create and populate ProductDTO
        ProductDTO productDTO = new ProductDTO();
        productDTO.setNo(req.getParameter("no"));
        productDTO.setName(req.getParameter("name"));
        productDTO.setType(req.getParameter("type"));
        productDTO.setPrice(Integer.parseInt(req.getParameter("price")));
        productDTO.setThumb_img(req.getParameter("thumb_img"));
        
        // Get count from request
        int count = Integer.parseInt(req.getParameter("count"));
        
        // Store count in session
        HttpSession session = req.getSession();
        session.setAttribute("count", count);
        
        // Redirect to order.do
        resp.sendRedirect(req.getContextPath() + "/market/order.do?no=" + req.getParameter("no") + "&count="+count );
    }
}
