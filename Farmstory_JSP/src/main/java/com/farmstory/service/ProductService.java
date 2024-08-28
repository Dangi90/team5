package com.farmstory.service;

import com.farmstory.DAO.ProductDAO;
import com.farmstory.DTO.ProductDTO;

import java.util.List;

public class ProductService {
	private static ProductService instance = new ProductService();

	public static ProductService getInstance() {
		return instance;
	}
	
	private ProductService() {}
	
	private ProductDAO productDAO = ProductDAO.getInstance();
	
	// 상품 등록
	public void addProduct(ProductDTO productDTO) {
		productDAO.insertProduct(productDTO);
	}

	// 상품 업데이트
	public boolean updateProduct(ProductDTO productDTO) {
		return productDAO.updateProduct(productDTO);
	}

	// 상품 삭제
	public boolean deleteProduct(int no) {
		return productDAO.deleteProduct(no);
	}

	// 상품 조회 (단일)
	public ProductDTO getProduct(int no) {
		return productDAO.getProduct(String.valueOf(no));
	}

    // 상품 조회 (단일)
    public ProductDTO getProduct(String no) {
        return productDAO.getProduct(no);
    }

    // 모든 상품 조회
    public List<ProductDTO> getAllProducts() {
        return productDAO.getAllProducts();
    }
}
