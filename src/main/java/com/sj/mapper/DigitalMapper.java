package com.sj.mapper;

import java.util.List;

import com.sj.po.Digital;

public interface DigitalMapper {
	 void add(Digital digital);
	 void update(Digital digital);
	 void delete(String did);
	 Digital get(String did);	
	 List<Digital> list();
	 List<Digital> listById(String rid);
	 List<Digital> searchname(String name);
}
