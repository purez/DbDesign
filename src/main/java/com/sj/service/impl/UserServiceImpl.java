package com.sj.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sj.mapper.UserMapper;
import com.sj.po.User;
import com.sj.service.UserService;
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;
	@Override
	public void insert(User user) {
		// TODO 自动生成的方法存根
		userMapper.insert(user);

	}

	@Override
	public void update(User user) {
		// TODO 自动生成的方法存根
        userMapper.update(user);
	}

	@Override
	public void delete(String uid) {
		// TODO 自动生成的方法存根
		userMapper.delete(uid);

	}

	@Override
	public User get(String uid) {
		// TODO 自动生成的方法存根
		return userMapper.get(uid);
	}

	@Override
	public List<User> list() {
		// TODO 自动生成的方法存根
		return userMapper.list();
	}

	@Override
	public List<User> searchname(String name) {
		// TODO 自动生成的方法存根
		return userMapper.searchname(name);
	}

	@Override
	public User check(String did, String password) {
		// TODO 自动生成的方法存根
		return userMapper.check(did, password);
	}

}
