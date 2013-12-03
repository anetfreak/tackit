package com.tackit.facade;

import com.tackit.dao.UserDao;
import com.tackit.domain.User;

public class UserFacadeImpl implements UserFacade{

	private UserDao userDao;
	
	@Override
	public int createUser(User user) {
		// TODO Auto-generated method stub
		// Accept and insert all params in database
		return userDao.createUser(user);
	}

	@Override
	public User getUser(String userName) {
		return userDao.getUser(userName);
	}
	
	@Override
	public void updateUser(User user) {
		// TODO Auto-generated method stub
		userDao.updateUser(user);
		
	}
	
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

}
