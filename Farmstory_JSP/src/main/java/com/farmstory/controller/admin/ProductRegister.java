package com.farmstory.controller.admin;

import java.io.IOException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.farmstory.DTO.ProductDTO;
import com.farmstory.controller.exception.BadRequestException;
import com.farmstory.service.ProductService;
import com.farmstory.DTO.ProductDTO;
import com.farmstory.service.ProductService;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.farmstory.DAO.ProductDAO;

@WebServlet("/admin/productRegister.do")
public class ProductRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	private ProductService service = ProductService.getInstance();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/admin/productRegister.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		String type = req.getParameter("type");
		String price = req.getParameter("price");
		String point = req.getParameter("point");
		String discount = req.getParameter("discount");
		String delivery_fee = req.getParameter("delivery_fee");
		String stack = req.getParameter("stack");
		String thumb_img = req.getParameter("thumb_img");
		String info_img = req.getParameter("info_img");
		String explain_img = req.getParameter("explain_img");
		String etc = req.getParameter("etc");
		ProductDTO dto = new ProductDTO();
		
		
		// 파라미터 값이 빈 값인지 확인
	    if (name == null || name.trim().isEmpty() || type == null || type.trim().isEmpty()) {
	    	throw new BadRequestException("Name과 Type은 필수 입력 항목입니다.");
	    }
		
		
		dto.setName(name);
		dto.setType(type);
		dto.setPrice(strToNum(price));
		dto.setPoint(strToNum(point));
		dto.setDiscount(strToNum(discount));
		dto.setDelivery_fee(strToNum(delivery_fee));
		dto.setStack(strToNum(stack));
		dto.setThumb_img(thumb_img);
		dto.setInfo_img(info_img);
		dto.setExplain_img(explain_img);
		dto.setEtc(etc);

		logger.debug("productDTO : {}", dto);
		
		

		service.addProduct(dto);

		resp.sendRedirect("/Farmstory_JSP/admin/productList.do");
	}

	private int strToNum(String str) {
		if (str == null || str.trim().isEmpty()) {
			return 0;
		}
		return Integer.parseInt(str);
	}
}
