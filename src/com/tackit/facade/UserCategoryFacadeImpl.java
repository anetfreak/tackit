package com.tackit.facade;

import com.tackit.dao.UserCategoryDao;
import com.tackit.domain.UserCategory;

public class UserCategoryFacadeImpl implements UserCategoryFacade{
	private UserCategoryDao userCategoryDao;
	
	@Override
	public Boolean createUserCategoryMapping(int user_id, String category_ids) {
		String[] categories = category_ids.split(",");
		for (String string : categories) {
			UserCategory uc = new UserCategory();
			uc.setUser_id(user_id);
			uc.setCategory_id(Integer.decode(string));
			userCategoryDao.insertUserCategoryMap(uc);
		}
		return true;
	}
	
	public void setUserCategoryDao(UserCategoryDao userCatDao) {
		this.userCategoryDao = userCatDao;
	}

}
