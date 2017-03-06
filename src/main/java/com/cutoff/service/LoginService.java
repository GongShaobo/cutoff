package com.cutoff.service;

import com.cutoff.pojo.UserPOJO;

public interface LoginService {

	public int login(UserPOJO user);

	public int signUp(UserPOJO user);
}
