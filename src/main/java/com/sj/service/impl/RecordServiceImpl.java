package com.sj.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sj.mapper.RecordMapper;
import com.sj.po.Record;
import com.sj.service.RecordService;
@Service
public class RecordServiceImpl implements RecordService {
    @Autowired
    RecordMapper recordMapper;
	@Override
	public void add(Record record) {
		// TODO 自动生成的方法存根
		recordMapper.add(record);

	}



	@Override
	public void delete(String rid) {
		// TODO 自动生成的方法存根
		recordMapper.delete(rid);

	}

	@Override
	public Record get(String rid) {
		// TODO 自动生成的方法存根
		return recordMapper.get(rid);
	}

	@Override
	public List<Record> list() {
		// TODO 自动生成的方法存根
		return recordMapper.list();
	}

	@Override
	public List<Record> searchname(String name) {
		// TODO 自动生成的方法存根
		return recordMapper.searchname(name);
	}

	@Override
	public void update(Double allmoney, String rid) {
		// TODO 自动生成的方法存根
		recordMapper.update(allmoney, rid);
	}

}
