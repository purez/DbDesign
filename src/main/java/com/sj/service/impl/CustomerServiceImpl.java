package com.sj.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sj.mapper.CustomerMapper;
import com.sj.po.Customer;
import com.sj.service.CustomerService;
@Service
public class CustomerServiceImpl implements CustomerService {
    @Autowired
    CustomerMapper customerMapper;
	@Override
	public void add(Customer customer) {
		// TODO 自动生成的方法存根
		customerMapper.add(customer);

	}

	@Override
	public void update(Customer customer) {
		// TODO 自动生成的方法存根
        customerMapper.update(customer);
	}

	@Override
	public void delete(String uid) {
		// TODO 自动生成的方法存根
		customerMapper.delete(uid);

	}

	@Override
	public Customer get(String uid) {
		// TODO 自动生成的方法存根
		return customerMapper.get(uid);
	}

	@Override
	public List<Customer> list() {
		// TODO 自动生成的方法存根
		return customerMapper.list();
	}

	@Override
	public List<Customer> searchname(String cname) {
		// TODO 自动生成的方法存根
		return customerMapper.searchname(cname);
	}



}
