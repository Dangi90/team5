package com.farmstory.controller.admin;

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

@WebServlet("/admin/productList.do")
public class ListController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private ProductDAO productDAO = new ProductDAO();

    // 상품 리스트를 처리하는 GET 요청
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<ProductDTO> productList = productDAO.getAllProducts();
        request.setAttribute("productList", productList);

        // JSP 페이지로 포워딩
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/admin/productList.jsp");
        dispatcher.forward(request, response);
    }

    // 상품 추가를 처리하는 POST 요청
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // POST 요청 처리는 주로 상품 추가, 수정, 삭제 등을 담당합니다.
        String action = request.getParameter("action");

        if ("add".equals(action)) {
            ProductDTO productDTO = new ProductDTO();
            productDTO.setName(request.getParameter("name"));
            productDTO.setType(request.getParameter("type"));
            productDTO.setPrice(Integer.parseInt(request.getParameter("price")));
            productDTO.setDelivery_fee(Integer.parseInt(request.getParameter("delivery_fee")));
            productDTO.setStack(Integer.parseInt(request.getParameter("stack")));
            productDTO.setThumb_img(request.getParameter("thumb_img"));
            productDTO.setInfo_img(request.getParameter("info_img"));
            productDTO.setExplain_img(request.getParameter("explain_img"));

            productDAO.insertProduct(productDTO);
            response.sendRedirect("productList.do");

        } else if ("delete".equals(action)) {
            int no = Integer.parseInt(request.getParameter("no"));
            productDAO.deleteProduct(no);
            response.sendRedirect("productList.do");

        } else if ("update".equals(action)) {
            ProductDTO productDTO = new ProductDTO();
            productDTO.setNo(Integer.parseInt(request.getParameter("no")));
            productDTO.setName(request.getParameter("name"));
            productDTO.setType(request.getParameter("type"));
            productDTO.setPrice(Integer.parseInt(request.getParameter("price")));
            productDTO.setDelivery_fee(Integer.parseInt(request.getParameter("delivery_fee")));
            productDTO.setStack(Integer.parseInt(request.getParameter("stack")));
            productDTO.setThumb_img(request.getParameter("thumb_img"));
            productDTO.setInfo_img(request.getParameter("info_img"));
            productDTO.setExplain_img(request.getParameter("explain_img"));

            productDAO.updateProduct(productDTO);
            response.sendRedirect("productList.do");
        }
    }
}
