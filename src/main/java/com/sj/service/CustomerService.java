package com.sj.service;

import java.util.List;

import com.sj.po.Customer;

public interface CustomerService {
	
	void add(Customer customer);
	 void update(Customer customer);
	 void delete(String cid);
	 Customer get(String cid);	
	 List<Customer> list();
	 List<Customer> searchname(String cname);
}
