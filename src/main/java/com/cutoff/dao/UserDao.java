package com.cutoff.dao;

import com.cutoff.pojo.UserPOJO;

public interface UserDao {

	public UserPOJO getUserInfoByUserName(String userName);

	public int signUp(UserPOJO user);
}
