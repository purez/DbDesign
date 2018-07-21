package com.sj.service;

import java.util.List;

import com.sj.po.Digital;


public interface DigitalService {
	 void add(Digital digital);
	 void update(Digital digital);
	 void delete(String did);
	 Digital get(String did);	
	 List<Digital> list();
	 List<Digital> listById(String rid);
	 List<Digital> searchname(String name);
}
