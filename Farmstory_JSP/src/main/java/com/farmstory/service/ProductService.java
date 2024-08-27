package com.farmstory.service;

import com.farmstory.DAO.ProductDAO;
import com.farmstory.DTO.ProductDTO;

import java.util.List;

public class ProductService {
    
    private ProductDAO productDAO;

    public ProductService(ProductDAO productDAO) {
        this.productDAO = productDAO;
    }

    // 상품 등록
    public boolean addProduct(ProductDTO productDTO) {
        return productDAO.insertProduct(productDTO);
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
        return productDAO.getProduct(no);
    }

    // 모든 상품 조회
    public List<ProductDTO> getAllProducts() {
        return productDAO.getAllProducts();
    }
}
