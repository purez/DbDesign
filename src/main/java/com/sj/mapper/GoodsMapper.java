package com.sj.mapper;

import java.util.List;

import com.sj.po.Goods;

public interface GoodsMapper {
	 void add(Goods goods);
	 void update(int number,String gid);
	 void delete(String gid);
	 Goods get(String gid);	
	 List<Goods> list();
	 List<Goods> searchname(String name);
	void updateG(Goods g);
}
