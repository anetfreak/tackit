package com.tackit.dao;

import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.tackit.domain.UserCategory;

public class UserCategoryDaoImpl extends JdbcDaoSupport implements UserCategoryDao{
	private static final String INSERT_USER_CAT_MAP = "INSERT into user_categories_mapping (user_id, category_id) values (?, ? )";
	
	@Override
	public Boolean insertUserCategoryMap(UserCategory uc) {
		getJdbcTemplate().update(INSERT_USER_CAT_MAP, new Object[]{uc.getUser_id(),uc.getCategory_id()});
		return true;
	}

}
