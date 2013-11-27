package com.tackit.dao;

import java.util.List;

import com.tackit.domain.Category;
import com.tackit.domain.Tack;


public interface TackDao {

	List<Tack> getTacks();
	
	List<Category> getCategories();
}
