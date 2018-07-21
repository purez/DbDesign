package com.sj.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sj.mapper.DigitalviewMapper;
import com.sj.po.Digitalview;
import com.sj.service.DigitalviewService;
@Service
public class DigitalviewServiceImpl implements DigitalviewService {
    @Autowired
    DigitalviewMapper digitalviewMapper;
	@Override
	public void add(Digitalview digitalview) {
		// TODO 自动生成的方法存根
		digitalviewMapper.add(digitalview);

	}

	@Override
	public void update(Digitalview digitalview) {
		// TODO 自动生成的方法存根
        digitalviewMapper.update(digitalview);
	}

	@Override
	public void delete(String did) {
		// TODO 自动生成的方法存根
		digitalviewMapper.delete(did);

	}

	@Override
	public Digitalview get(String did) {
		// TODO 自动生成的方法存根
		return digitalviewMapper.get(did);
	}

	@Override
	public List<Digitalview> list() {
		// TODO 自动生成的方法存根
		return digitalviewMapper.list();
	}

	@Override
	public List<Digitalview> searchname(String gname) {
		// TODO 自动生成的方法存根
		return digitalviewMapper.searchname(gname);
	}

	@Override
	public List<Digitalview> listById(String did) {
		// TODO 自动生成的方法存根
		return digitalviewMapper.listById(did);
	}

}
