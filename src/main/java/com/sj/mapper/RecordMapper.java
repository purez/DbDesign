package com.sj.mapper;

import java.util.List;

import com.sj.po.Record;

public interface RecordMapper {
	 void add(Record record);
	 void update(Double allmoney, String rid);
	 void delete(String rid);
	 Record get(String rid);	
	 List<Record> list();
	 List<Record> searchname(String name);
}
