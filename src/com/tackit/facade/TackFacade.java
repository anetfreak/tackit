package com.tackit.facade;

import java.util.List;

import com.tackit.domain.Category;
import com.tackit.domain.Tack;


public interface TackFacade {

	List<Tack> getTacks();
	List<Category> getCategories();
}
