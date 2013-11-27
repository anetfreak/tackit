package com.tackit.facade;

import com.tackit.domain.User;

public interface UserFacade {
	
	void createUser(User user);
	
	User getUser(String userName);
	
	void updateUser(User user);
	
}
