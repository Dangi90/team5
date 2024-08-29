package com.farmstory.service;

import com.farmstory.DAO.OrderDAO;
import com.farmstory.DTO.OrderDTO;

import java.util.List;

public class OrderService {
	private static OrderService instance = new OrderService();

	public static OrderService getInstance() {
		return instance;
	}
	
	private OrderService() {}
	
	private OrderDAO dao = OrderDAO.getInstance();
	
	// 주문 등록
	public void addOrder(OrderDTO OrderDTO) {
		dao.insertOrder(OrderDTO);
	}

	// 주문 업데이트
	public boolean updateOrder(OrderDTO OrderDTO) {
		return dao.updateOrder(OrderDTO);
	}

	// 주문 삭제
	public boolean deleteOrder(int no) {
		return dao.deleteOrder(no);
	}

	// 주문 조회 (단일)
	public OrderDTO getOrder(int no) {
		return dao.getOrder(String.valueOf(no));
	}

    // 주문 조회 (단일)
    public OrderDTO getOrder(String no) {
        return dao.getOrder(no);
    }

    // 모든 주문 조회
    public List<OrderDTO> getAllOrders() {
        return dao.getAllOrders();
    }
}
