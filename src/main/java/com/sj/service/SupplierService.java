package com.sj.service;

import java.util.List;

import com.sj.po.Supplier;

public interface SupplierService {
	 void add(Supplier supplier);
	 void update(Supplier supplier);
	 void delete(String sid);
	 Supplier get(String sid);	
	 List<Supplier> list();
	 List<Supplier> searchname(String name);
}
