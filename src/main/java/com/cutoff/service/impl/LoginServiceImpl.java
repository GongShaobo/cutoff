package com.cutoff.service.impl;

import com.cutoff.dao.UserDao;
import com.cutoff.pojo.UserPOJO;
import com.cutoff.service.LoginService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class LoginServiceImpl implements LoginService {

	@Resource
	private UserDao userDao;
	
	public int login(UserPOJO user) {
		int result = 0;
		UserPOJO userDb = new UserPOJO();
		userDb = userDao.getUserInfoByUserName(user.getUserName());
		if(null != userDb && null != userDb.getUserName() && null != userDb.getPassword()){
			if(userDb.getPassword().equals(user.getPassword())){
				result = 1;
			}
		}
		return result;
	}

	public int signUp(UserPOJO user) {
		int result = 0;
		UserPOJO userDb = new UserPOJO();
		userDb = userDao.getUserInfoByUserName(user.getUserName());
		if(null == userDb){
			result = userDao.signUp(user);
		}
		return result;
	}

}
