package com.farmstory.controller.market;

import com.farmstory.DAO.ProductDAO;
import com.farmstory.DTO.ProductDTO;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/market/list.do")
public class ListController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private ProductDAO productDAO = new ProductDAO();

    // 상품 리스트를 처리하는 GET 요청
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<ProductDTO> products = productDAO.getAllProducts();
        request.setAttribute("products", products);

        // JSP 페이지로 포워딩
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/market/list.jsp");
        dispatcher.forward(request, response);
    }

    // 상품 추가를 처리하는 POST 요청
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            ProductDTO productDTO = new ProductDTO();
            productDTO.setNo(request.getParameter("no"));
            productDTO.setName(request.getParameter("name"));
            productDTO.setType(request.getParameter("type"));
            productDTO.setPrice(Integer.parseInt(request.getParameter("price")));
            productDTO.setThumb_img(request.getParameter("thumb_img"));
            
            response.sendRedirect("/Farmstory_JSP/market/list.do");
            

    }
}
