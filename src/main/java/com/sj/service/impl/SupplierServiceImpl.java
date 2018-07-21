package com.sj.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sj.mapper.SupplierMapper;
import com.sj.po.Supplier;
import com.sj.service.SupplierService;
@Service
public class SupplierServiceImpl implements SupplierService {
    @Autowired
    SupplierMapper supplierMapper;
	@Override
	public void add(Supplier supplier) {
		// TODO 自动生成的方法存根
		supplierMapper.add(supplier);

	}

	@Override
	public void update(Supplier supplier) {
		// TODO 自动生成的方法存根
        supplierMapper.update(supplier);
	}

	@Override
	public void delete(String sid) {
		// TODO 自动生成的方法存根
		supplierMapper.delete(sid);

	}

	@Override
	public Supplier get(String sid) {
		// TODO 自动生成的方法存根
		return supplierMapper.get(sid);
	}

	@Override
	public List<Supplier> list() {
		// TODO 自动生成的方法存根
		return supplierMapper.list();
	}

	@Override
	public List<Supplier> searchname(String name) {
		// TODO 自动生成的方法存根
		return supplierMapper.searchname(name);
	}

}
