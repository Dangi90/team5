package com.farmstory.controller.market;

import java.io.IOException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.farmstory.DAO.ProductDAO;
import com.farmstory.DTO.OrderDTO;
import com.farmstory.DTO.ProductDTO;
import com.farmstory.DTO.UserDTO;
import com.farmstory.service.OrderService;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/market/order.do")
public class OrderController extends HttpServlet {
    private static final long serialVersionUID = 1L; 
    private ProductDAO productDAO = new ProductDAO();
    private Logger logger = LoggerFactory.getLogger(this.getClass()); 
    
    private OrderService service = OrderService.getInstance();
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	String no = req.getParameter("no");
        String countStr = req.getParameter("count");
        
        int count = 0; // 기본값 설정
        if (countStr != null && !countStr.isEmpty()) {
            try {
                count = Integer.parseInt(countStr);
            } catch (NumberFormatException e) {
                e.printStackTrace(); // 로그 기록
                req.setAttribute("error", "Invalid count value");
                req.getRequestDispatcher("/WEB-INF/error.jsp").forward(req, resp);
                return;
            }
        }

        ProductDTO products = productDAO.getProduct(no);
        req.setAttribute("products", products);
        req.setAttribute("count", count);

        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/market/order.jsp");
        dispatcher.forward(req, resp);
    }
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	
    	 HttpSession session = req.getSession();
    	    UserDTO users = (UserDTO) session.getAttribute("uid");
    	    //String uid = users.getUid();
    	    String uid = "admin";
    	    if(uid == null) {
    	    	String uid1 = "admin";
    	    	uid = uid1;
    	    }
    
    	    String no = req.getParameter("product_no");
    	    String count = req.getParameter("count");
    	    String total = req.getParameter("total");
    	    String receiver = req.getParameter("receiver");
    	    String hp = req.getParameter("hp");
    	    String addr1 = req.getParameter("addr1");
    	    String addr2 = req.getParameter("addr2");

    	    // 로그를 통해 각 파라미터의 값 확인
    	    logger.debug("Received count: " + count);
    	    logger.debug("Received total: " + total);
    	    logger.debug("Received receiver: " + receiver);
    	    logger.debug("Received hp: " + hp);
    	    logger.debug("Received addr1: " + addr1);
    	    logger.debug("Received addr2: " + addr2);

    	    ProductDTO products = productDAO.getProduct(no);
    	    
    	    OrderDTO dto = new OrderDTO();
    	    
    	    dto.setProduct_no(no);
    	    dto.setProduct_name(products.getName());
    	    dto.setProduct_price(products.getPrice());
    	    dto.setCount(count);
    	    dto.setTotal_price(total);
    	    dto.setUser_id(uid);
    	    dto.setHp(hp);
    	    dto.setReceiver(receiver);
    	    dto.setReceive_addr(addr1 + " " + addr2);

    	    logger.debug("dto : " + dto);

    	    service.addOrder(dto);
    	    
    	    resp.sendRedirect("/Farmstory_JSP/market/cart.do");
    	    
    }
}
