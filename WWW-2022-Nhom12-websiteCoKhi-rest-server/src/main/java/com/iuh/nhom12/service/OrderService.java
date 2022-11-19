package com.iuh.nhom12.service;

import java.util.List;

import com.iuh.nhom12.entity.Order;
/*
 * Author: Nguyen Hong Quan
 */
public interface OrderService {
public List<Order> findAll();
	
	public Order findById(int id);
	
	public void saveOrder(Order order);
	
	public Order findByCustomerId(int customerId, int status);
	
	public List<Order> findAllByCustomerId(int customerId, int status);
	
	public void deleteById(int orderId);
}
