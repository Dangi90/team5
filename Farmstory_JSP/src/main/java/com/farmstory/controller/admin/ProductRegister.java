package com.farmstory.controller.admin;

import java.io.IOException;
import com.farmstory.DTO.ProductDTO;
import com.farmstory.service.ProductService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.farmstory.DAO.ProductDAO;

@WebServlet("/admin/productRegister.do")
public class ProductRegister extends HttpServlet {

    private static final long serialVersionUID = 1L;
    
    // ProductDAO 인스턴스를 생성하고 ProductService에 주입
    private ProductService productService = new ProductService(new ProductDAO());

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/admin/productRegister.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 폼에서 전송된 상품 정보를 DTO에 저장
        ProductDTO product = new ProductDTO();
        product.setName(request.getParameter("name"));
        product.setType(request.getParameter("type"));
        product.setPrice(Integer.parseInt(request.getParameter("price")));
        product.setPoint(Integer.parseInt(request.getParameter("point")));
        product.setDiscount(Integer.parseInt(request.getParameter("discount")));
        product.setDelivery_fee(Integer.parseInt(request.getParameter("delivery_fee")));
        product.setStack(Integer.parseInt(request.getParameter("stack")));
        product.setThumb_img(request.getParameter("thumb_img"));
        product.setInfo_img(request.getParameter("info_img"));
        product.setExplain_img(request.getParameter("explain_img"));
        product.setDatetime(request.getParameter("datetime"));
        
        // 서비스 클래스를 통해 상품 등록 처리
        productService.addProduct(product);
        
        // 성공적으로 등록된 후 상품 목록 페이지로 리다이렉트
        response.sendRedirect("/admin/productList.do");
    }
}
