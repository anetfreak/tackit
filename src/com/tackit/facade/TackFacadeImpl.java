package com.tackit.facade;

import java.util.List;

import com.tackit.dao.TackDao;
import com.tackit.domain.Tack;

public class TackFacadeImpl implements TackFacade{

	private TackDao tackDao;
	
	public List<Tack> getTacks() {
		return tackDao.getTacks();
	}
	public void setTackDao(TackDao tackDao) {
		this.tackDao = tackDao;
	}

}
