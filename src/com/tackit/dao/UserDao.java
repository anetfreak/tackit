package com.tackit.dao;

import com.tackit.domain.User;

public interface UserDao {
	
	void createUser(User user);
	
	User getUser(String userName);
	
	void updateUser(User user);

}
