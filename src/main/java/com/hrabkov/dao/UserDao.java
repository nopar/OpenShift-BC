package com.hrabkov.dao;

import com.hrabkov.model.User;

public interface UserDao {

	User getUser(Integer userId);
	User getByName(String userName);
}
