package com.sj.service;

import java.util.List;

import com.sj.po.Digitalview;


public interface DigitalviewService {
	 void add(Digitalview digitalview);
	 void update(Digitalview digitalview);
	 void delete(String did);
	 Digitalview get(String did);	
	 List<Digitalview> list();
	 List<Digitalview> listById(String did);
	 List<Digitalview> searchname(String gname);
}
