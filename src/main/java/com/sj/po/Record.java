package com.sj.po;

import java.util.List;

public class Record {
	private String rid;
	private String datetime;
	private double allmoney;
	private String  cid;
	List<Goods> goods;
	public String getRid() {
		return rid;
	}
	public List<Goods> getGoods() {
		return goods;
	}
	public void setGoods(List<Goods> goods) {
		this.goods = goods;
	}
	public void setRid(String rid) {
		this.rid = rid;
	}
	public String getDatetime() {
		return datetime;
	}
	public void setDatetime(String datetime) {
		this.datetime = datetime;
	}
	public double getAllmoney() {
		return allmoney;
	}
	public void setAllmoney(double allmoney) {
		this.allmoney = allmoney;
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	

}
