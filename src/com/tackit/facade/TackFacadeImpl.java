package com.tackit.facade;

import java.util.List;

import com.tackit.dao.TackDao;
import com.tackit.domain.Category;
import com.tackit.domain.Tack;

public class TackFacadeImpl implements TackFacade{

	private TackDao tackDao;
	
	public List<Tack> getTacks() {
		return tackDao.getTacks();
	}
	
	public List<Category> getCategories() {
		return tackDao.getCategories();
	}
	
	public void setTackDao(TackDao tackDao) {
		this.tackDao = tackDao;
	}

	@Override
	public List<Tack> getTacksForCategory(int category_id) {
		return tackDao.getTacksForCategory(category_id);
	}

	@Override
	public List<Tack> getTacksForUser(int user_id) {
		return tackDao.getTacksForUser(user_id);
	}

}
