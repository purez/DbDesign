package com.sj.service;

import java.util.List;

import com.sj.po.User;

public interface UserService {

	void insert(User user);
	 void update(User user);
	 void delete(String uid);
	 User get(String uid);	
	 List<User> list();
	 List<User> searchname(String name);
	 public User check(String did,String password);  
}
