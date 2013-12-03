package com.tackit.dao;

import com.tackit.domain.User;

public interface UserDao {
	
	int createUser(User user);
	
	User getUser(String userName);
	
	void updateUser(User user);

}
