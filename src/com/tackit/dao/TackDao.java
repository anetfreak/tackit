package com.tackit.dao;

import java.util.List;

import com.tackit.domain.Category;
import com.tackit.domain.Tack;


public interface TackDao {

	List<Tack> getTacks();
	
	List<Tack> getTacksForCategory(int category_id);
	
	List<Tack> getTacksForUser(int user_id);
	
	List<Category> getCategories();
	
	Boolean createUserTack(int user_id, int category_id, String title, String description, String link, String imageSrc);
}
