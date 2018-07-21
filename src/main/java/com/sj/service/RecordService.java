package com.sj.service;

import java.util.List;

import com.sj.po.Record;


public interface RecordService {
	 void add(Record record);
	 void update(Double allmoney, String rid);
	 void delete(String rid);
	 Record get(String rid);	
	 List<Record> list();
	 List<Record> searchname(String name);
}
