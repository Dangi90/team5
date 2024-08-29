package com.farmstory.DAO;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.farmstory.DTO.ProductDTO;
import com.farmstory.DTO.UserDTO;
import com.farmstory.Util.DBHelper;
import com.farmstory.Util.SQL;

public class ProductDAO extends DBHelper {
	private static ProductDAO instance = new ProductDAO();
	public static ProductDAO getInstance() {
		return instance;
	}
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	public ProductDAO() {}

    // 상품 등록
    public void insertProduct(ProductDTO productDTO) {
        String sql = "INSERT INTO product (name, type, price, point, discount, delivery_fee, stack, thumb_img, info_img, explain_img, regdate, user_uid) "
                   + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, NOW(),?)";
        try {
            conn = getConnection();
            psmt = conn.prepareStatement(sql);
             
            psmt.setString(1, productDTO.getName());
            psmt.setString(2, productDTO.getType());
            psmt.setInt(3, productDTO.getPrice());
            psmt.setInt(4, productDTO.getPoint());
            psmt.setInt(5, productDTO.getDiscount());
            psmt.setInt(6, productDTO.getDelivery_fee());
            psmt.setInt(7, productDTO.getStack());
            psmt.setString(8, productDTO.getThumb_img());
            psmt.setString(9, productDTO.getInfo_img());
            psmt.setString(10, productDTO.getExplain_img());
            psmt.setString(11, productDTO.getUser_uid());
            
            psmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeAll(); // 자원 해제
        }
    }

    // 상품 업데이트
    public boolean updateProduct(ProductDTO productDTO) {
        String sql = "UPDATE products SET name=?, type=?, price=?, point=?, discount=?, delivery_fee=?, stack=?, thumb_img=?, info_img=?, explain_img=?, datetime=? WHERE no=?";
        try {
            conn = getConnection();
            psmt = conn.prepareStatement(sql);

            psmt.setString(1, productDTO.getName());
            psmt.setString(2, productDTO.getType());
            psmt.setInt(3, productDTO.getPrice());
            psmt.setInt(4, productDTO.getPoint());
            psmt.setInt(5, productDTO.getDiscount());
            psmt.setInt(6, productDTO.getDelivery_fee());
            psmt.setInt(7, productDTO.getStack());
            psmt.setString(8, productDTO.getThumb_img());
            psmt.setString(9, productDTO.getInfo_img());
            psmt.setString(10, productDTO.getExplain_img());
            psmt.setString(11, productDTO.getRegdate());
            psmt.setInt(12, productDTO.getNo());
            
            int result = psmt.executeUpdate();
            return result > 0;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeAll();
        }
        return false;
    }

    // 상품 삭제
    public boolean deleteProduct(int no) {
        String sql = "DELETE FROM products WHERE no=?";
        try {
            conn = getConnection();
            psmt = conn.prepareStatement(sql);
            psmt.setInt(1, no);
            
            int result = psmt.executeUpdate();
            return result > 0;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeAll();
        }
        return false;
    }
    
    // 상품 조회 (단일)
    public ProductDTO getProduct(String no) {
        ProductDTO productDTO = null;
        String sql = "SELECT * FROM product WHERE no=?";
        try {
            conn = getConnection();
            psmt = conn.prepareStatement(sql);
            psmt.setString(1, no);
            rs = psmt.executeQuery();

            if (rs.next()) {
            	productDTO = new ProductDTO();
            	productDTO.setNo(rs.getInt("no"));
            	productDTO.setName(rs.getString("name"));
            	productDTO.setType(rs.getString("type"));
            	productDTO.setPrice(rs.getInt("price"));
            	productDTO.setPoint(rs.getInt("point"));
            	productDTO.setDiscount(rs.getInt("discount"));
            	productDTO.setDelivery_fee(rs.getInt("delivery_fee"));
            	productDTO.setStack(rs.getInt("stack"));
            	productDTO.setThumb_img(rs.getString("thumb_img"));
            	productDTO.setInfo_img(rs.getString("info_img"));
            	productDTO.setExplain_img(rs.getString("explain_img"));
            	productDTO.setRegdate(rs.getString("regdate"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeAll();
        }
        return productDTO;
    }
    
	 // AdminDAO 클래스에 추가
	    public List<ProductDTO> getAllProducts() {
	        List<ProductDTO> productList = new ArrayList<>();
	        String sql = "SELECT * FROM product";
	        
	        try {
	            conn = getConnection();
	            stmt = conn.createStatement();
	            rs = stmt.executeQuery(sql);
	            
	            while (rs.next()) {
	                ProductDTO product = new ProductDTO();
	                product.setNo(rs.getInt("no"));
	                product.setName(rs.getString("name"));
	                product.setType(rs.getString("type"));
	                product.setPrice(rs.getInt("price"));
	                product.setPoint(rs.getInt("point"));
	                product.setDiscount(rs.getInt("discount"));
	                product.setDelivery_fee(rs.getInt("delivery_fee"));
	                product.setStack(rs.getInt("stack"));
	                product.setThumb_img(rs.getString("thumb_img"));
	                product.setInfo_img(rs.getString("info_img"));
	                product.setExplain_img(rs.getString("explain_img"));
	                product.setRegdate(rs.getString("regdate"));
	                productList.add(product);
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        } finally {
	            closeAll();
	        }
	        return productList;
    }
	    
	    public List<ProductDTO> selectProducts() {
		    List<ProductDTO> products = new ArrayList<>();
		    
		    try {
		        conn = getConnection();
		        psmt = conn.prepareStatement(SQL.SELECT_PRODUCTS);  // SQL.SELECT_USERS 는 아래 SQL 클래스에 정의합니다.
		        rs = psmt.executeQuery();
		        
		        while (rs.next()) {
		            ProductDTO product = new ProductDTO();
		            product.setNo(rs.getInt("no"));
		            product.setName(rs.getString("name"));
		            product.setType(rs.getString("type"));
		            product.setPrice(rs.getInt("price"));
		            product.setPoint(rs.getInt("point"));
		            product.setDiscount(rs.getInt("discount"));
		            product.setDelivery_fee(rs.getInt("delivery_fee"));
		            product.setStack(rs.getInt("stack"));
		            product.setThumb_img(rs.getString("thumb_img"));
		            product.setInfo_img(rs.getString("info_img"));
		            product.setExplain_img(rs.getString("explain_img"));
		            product.setRegdate(rs.getString("regdate"));
		            product.setEtc(rs.getString("etc"));
		            product.setUser_uid(rs.getString("user_uid"));
		            
		            products.add(product);
		        }
		        closeAll();
		    } catch (Exception e) {
		        logger.error("selectProducts Exception", e);
		    }
		    
		    return products;
		}

}
