package com.sj.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sj.mapper.DigitalMapper;
import com.sj.po.Digital;
import com.sj.service.DigitalService;
@Service
public class DigitalServiceImpl implements DigitalService {
    @Autowired
    DigitalMapper digitalMapper;
	@Override
	public void add(Digital digital) {
		// TODO 自动生成的方法存根
		digitalMapper.add(digital);

	}

	@Override
	public void update(Digital digital) {
		// TODO 自动生成的方法存根
        digitalMapper.update(digital);
	}

	@Override
	public void delete(String did) {
		// TODO 自动生成的方法存根
		digitalMapper.delete(did);

	}

	@Override
	public Digital get(String did) {
		// TODO 自动生成的方法存根
		return digitalMapper.get(did);
	}

	@Override
	public List<Digital> list() {
		// TODO 自动生成的方法存根
		return digitalMapper.list();
	}

	@Override
	public List<Digital> searchname(String name) {
		// TODO 自动生成的方法存根
		return digitalMapper.searchname(name);
	}

	@Override
	public List<Digital> listById(String rid) {
		// TODO 自动生成的方法存根
		return digitalMapper.listById(rid);
	}

}
