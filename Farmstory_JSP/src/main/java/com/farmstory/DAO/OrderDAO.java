package com.farmstory.DAO;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.farmstory.DTO.OrderDTO;
import com.farmstory.Util.DBHelper;

public class OrderDAO extends DBHelper {
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	private static OrderDAO instance = new OrderDAO();
	
	public static OrderDAO getInstance() {
		return instance;
	}
	
	public OrderDAO() {}

    // 상품 등록
	public void insertOrder(OrderDTO OrderDTO) {
	    String sql = "INSERT INTO `Order` "
	    		+ "set product_no = ?, product_name = ?, product_price = ?, count = ?, product_delivery_fee = ?, total_price = ?, user_id = ?, receiver = ?, receive_addr = ?";
	    try {
	        conn = getConnection();
	        psmt = conn.prepareStatement(sql);
	         
	        psmt.setInt(1, OrderDTO.getProduct_no());
	        psmt.setString(2, OrderDTO.getProduct_name());
	        psmt.setInt(3, OrderDTO.getProduct_price());
	        psmt.setInt(4, OrderDTO.getCount());
	        psmt.setInt(5, OrderDTO.getProduct_delivery_fee());
	        psmt.setInt(6, OrderDTO.getTotal_price());
	        psmt.setString(7, OrderDTO.getUser_id());
	        psmt.setString(8, OrderDTO.getReceiver());
	        psmt.setString(9, OrderDTO.getReceive_addr());
	        
	        psmt.executeUpdate();
	    } catch (Exception e) {
	        logger.debug(e.getMessage());
	    } finally {
	        closeAll(); 
	    }
	}

    // 상품 업데이트
    public boolean updateOrder(OrderDTO OrderDTO) {
        String sql = "UPDATE Orders SET product_no=?, Product_name=?, Product_price=?, Count=?, Product_delivery_fee=?, Total_price=?, User_id=?, hp=?, Receiver=?, Receive_addr=? WHERE no=?";
        try {
            conn = getConnection();
            psmt = conn.prepareStatement(sql);


            psmt.setInt(1, OrderDTO.getProduct_no());
            psmt.setString(2, OrderDTO.getProduct_name());
            psmt.setInt(3, OrderDTO.getProduct_price());
            psmt.setInt(4, OrderDTO.getCount());
            psmt.setInt(5, OrderDTO.getProduct_delivery_fee());
            psmt.setInt(6, OrderDTO.getTotal_price());
            psmt.setString(7, OrderDTO.getUser_id());
            psmt.setString(8, OrderDTO.getHp());
            psmt.setString(9, OrderDTO.getReceiver());
            psmt.setString(10, OrderDTO.getReceive_addr());
            psmt.setInt(11, OrderDTO.getNo());
            
            int result = psmt.executeUpdate();
            return result > 0;
        } catch (Exception e) {
        	logger.debug(e.getMessage());
        } finally {
            closeAll();
        }
        return false;
    }

    // 상품 삭제
    public boolean deleteOrder(int no) {
        String sql = "DELETE FROM Orders WHERE no=?";
        try {
            conn = getConnection();
            psmt = conn.prepareStatement(sql);
            psmt.setInt(1, no);
            
            int result = psmt.executeUpdate();
            return result > 0;
        } catch (Exception e) {
        	logger.debug(e.getMessage());
        } finally {
            closeAll();
        }
        return false;
    }
    
    // 상품 조회 (단일)
    public OrderDTO getOrder(String no) {
        OrderDTO OrderDTO = null;
        String sql = "SELECT * FROM Order WHERE no=?";
        try {
            conn = getConnection();
            psmt = conn.prepareStatement(sql);
            psmt.setString(1, no);
            rs = psmt.executeQuery();

            if (rs.next()) {
            	OrderDTO = new OrderDTO();
            	OrderDTO.setNo(rs.getInt("no"));
            	OrderDTO.setProduct_no(rs.getInt("product_no"));
            	OrderDTO.setProduct_name(rs.getString("product_name"));
            	OrderDTO.setProduct_price(rs.getInt("product_price"));
            	OrderDTO.setCount(rs.getInt("count"));
            	OrderDTO.setProduct_delivery_fee(rs.getInt("product_delivery_fee"));
            	OrderDTO.setTotal_price(rs.getInt("total_price"));
            	OrderDTO.setUser_id(rs.getString("user_id"));
            	OrderDTO.setHp(rs.getString("hp"));
            	OrderDTO.setReceiver(rs.getString("receiver"));
            	OrderDTO.setReceive_addr(rs.getString("receive_addr"));
            }
        } catch (Exception e) {
        	logger.debug(e.getMessage());
        } finally {
            closeAll();
        }
        return OrderDTO;
    }
    
	 // 전체 조회
	    public List<OrderDTO> getAllOrders() {
	        List<OrderDTO> OrderList = new ArrayList<>();
	        String sql = "SELECT * FROM Order";
	        
	        try {
	            conn = getConnection();
	            stmt = conn.createStatement();
	            rs = stmt.executeQuery(sql);
	            
	            while (rs.next()) {
	                OrderDTO OrderDTO = new OrderDTO();
	                OrderDTO.setNo(rs.getInt("no"));
	            	OrderDTO.setProduct_no(rs.getInt("product_no"));
	            	OrderDTO.setProduct_name(rs.getString("product_name"));
	            	OrderDTO.setProduct_price(rs.getInt("product_price"));
	            	OrderDTO.setCount(rs.getInt("count"));
	            	OrderDTO.setProduct_delivery_fee(rs.getInt("product_delivery_fee"));
	            	OrderDTO.setTotal_price(rs.getInt("total_price"));
	            	OrderDTO.setUser_id(rs.getString("user_id"));
	            	OrderDTO.setHp(rs.getString("hp"));
	            	OrderDTO.setReceiver(rs.getString("receiver"));
	            	OrderDTO.setReceive_addr(rs.getString("receive_addr"));
	                OrderList.add(OrderDTO);
	            }
	        } catch (Exception e) {
	        	logger.debug(e.getMessage());
	        } finally {
	            closeAll();
	        }
	        return OrderList;
    }

	    
	    //cart 전체 조회
	    public List<OrderDTO> selectCartOrders() {
	        List<OrderDTO> OrderList = new ArrayList<>();
	        String sql = "SELECT a.*, b.`name`, b.`hp`, c.`type`, c.`thumb_img` FROM `Order` AS a "
	        			+ "JOIN `User` AS b "
	        			+ "ON a.`user_id` = b.`uid` "
	        			+ "JOIN `Product` AS c "
	        			+ "ON a.`product_no` = c.`no` "
	        			+ "ORDER BY a.`no` desc "
	        			+ "LIMIT 0, 5" ;
	        
	        try {
	            conn = getConnection();
	            stmt = conn.createStatement();
	            rs = stmt.executeQuery(sql);
	            
	            while (rs.next()) {
	                OrderDTO OrderDTO = new OrderDTO();
	                OrderDTO.setNo(rs.getInt("no"));
	            	OrderDTO.setProduct_no(rs.getInt("product_no"));
	            	OrderDTO.setProduct_name(rs.getString("product_name"));
	            	OrderDTO.setProduct_price(rs.getInt("product_price"));
	            	OrderDTO.setCount(rs.getInt("count"));
	            	OrderDTO.setProduct_delivery_fee(rs.getInt("product_delivery_fee"));
	            	OrderDTO.setTotal_price(rs.getInt("total_price"));
	            	OrderDTO.setUser_id(rs.getString("user_id"));
	            	OrderDTO.setHp(rs.getString("hp"));
	            	OrderDTO.setReceiver(rs.getString("receiver"));
	            	OrderDTO.setReceive_addr(rs.getString("receive_addr"));
	            	OrderDTO.setUser_name(rs.getString("b.name"));
	            	OrderDTO.setType(rs.getString("type"));
	            	OrderDTO.setThumb_img(rs.getString("thumb_img"));
	                OrderList.add(OrderDTO);
	            }
	        } catch (Exception e) {
	        	logger.debug(e.getMessage());
	        	logger.error("error",e);
	        } finally {
	            closeAll();
	        }
	        return OrderList;
    }

	    
}
