package com.sj.mapper;

import java.util.List;

import com.sj.po.Supplier;

public interface SupplierMapper {
	
	void add(Supplier supplier);
	 void update(Supplier supplier);
	 void delete(String sid);
	 Supplier get(String sid);	
	 List<Supplier> list();
	 List<Supplier> searchname(String name);

}
