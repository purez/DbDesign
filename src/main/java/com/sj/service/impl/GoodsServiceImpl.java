package com.sj.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sj.mapper.GoodsMapper;
import com.sj.po.Goods;
import com.sj.service.GoodsService;
@Service
public class GoodsServiceImpl implements GoodsService {
    @Autowired
    GoodsMapper goodsMapper;
	@Override
	public void add(Goods goods) {
		// TODO 自动生成的方法存根
		goodsMapper.add(goods);

	}

	@Override
	public 	 void update(int number,String gid){
		// TODO 自动生成的方法存根
        goodsMapper.update(number,gid);
	}

	@Override
	public void delete(String gid) {
		// TODO 自动生成的方法存根
		goodsMapper.delete(gid);

	}

	@Override
	public Goods get(String gid) {
		// TODO 自动生成的方法存根
		return goodsMapper.get(gid);
	}

	@Override
	public List<Goods> list() {
		// TODO 自动生成的方法存根
		return goodsMapper.list();
	}

	@Override
	public List<Goods> searchname(String name) {
		// TODO 自动生成的方法存根
		return goodsMapper.searchname(name);
	}

	@Override
	public void updateG(Goods g) {
		// TODO 自动生成的方法存根
		goodsMapper.updateG(g);
	}

}
