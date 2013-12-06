package com.tackit.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.tackit.domain.Category;
import com.tackit.domain.Tack;
import com.tackit.domain.UserCategory;

public class TackDaoImpl extends JdbcDaoSupport implements TackDao {

	private static final String GET_TACKS = "select id, tack_category_id, title, description, url, media, is_active, created_date, modified_date, is_private, tack_rating from tack";
	private static final String GET_TACKS_CATEGORY = "select id, tack_category_id, title, description, url, media, is_active, created_date, modified_date, is_private, tack_rating from tack where tack_category_id = ";
	private static final String GET_CATEORIES = "select tack_category_id, name, description from tack_category";
	private static final String GET_CATEGORIES_USER = "select category_id from user_categories_mapping where user_id=";

	public List<Tack> getTacks() {

		return getJdbcTemplate().query(GET_TACKS, new Object[] {},
				new RowMapper<Tack>() {
					@Override
					public Tack mapRow(ResultSet rs, int rowNum)
							throws SQLException {
						Tack tack = new Tack();
						tack.setId(rs.getInt("id"));
						tack.setTitle(rs.getString("title"));
						tack.setDescription(rs.getString("description"));
						tack.setTackCategoryId(rs.getInt("tack_category_id"));
						tack.setTackRating(rs.getDouble("tack_rating"));
						tack.setActive(true);
						tack.setPrivate(false);
						tack.setLink(rs.getString("url"));
						tack.setImageSrc(rs.getString("media"));
						tack.setCreateDate(rs.getDate("created_date"));
						tack.setUpdateDate(rs.getDate("modified_date"));
						return tack;
					}
				});
	}

	public List<Tack> getTacksForCategory(int category_id) {
		return getJdbcTemplate().query(GET_TACKS_CATEGORY + category_id,
				new Object[] {}, new RowMapper<Tack>() {
					@Override
					public Tack mapRow(ResultSet rs, int rowNum)
							throws SQLException {
						Tack tack = new Tack();
						tack.setId(rs.getInt("id"));
						tack.setTitle(rs.getString("title"));
						tack.setDescription(rs.getString("description"));
						tack.setTackCategoryId(rs.getInt("tack_category_id"));
						tack.setTackRating(rs.getDouble("tack_rating"));
						tack.setActive(true);
						tack.setPrivate(false);
						tack.setLink(rs.getString("url"));
						tack.setImageSrc(rs.getString("media"));
						tack.setCreateDate(rs.getDate("created_date"));
						tack.setUpdateDate(rs.getDate("modified_date"));
						return tack;
					}
				});
	}

	public List<Category> getCategories() {

		return getJdbcTemplate().query(GET_CATEORIES, new Object[] {},
				new RowMapper<Category>() {
					@Override
					public Category mapRow(ResultSet rs, int rowNum)
							throws SQLException {
						Category category = new Category();
						category.setId(rs.getInt("tack_category_id"));
						category.setName(rs.getString("name"));
						category.setDescription(rs.getString("description"));
						return category;
					}
				});
	}

	@Override
	public List<Tack> getTacksForUser(int user_id) {
		List<UserCategory> userCategories = getJdbcTemplate().query(
				GET_CATEGORIES_USER + user_id, new Object[] {},
				new RowMapper<UserCategory>() {

					@Override
					public UserCategory mapRow(ResultSet rs, int rowNum)
							throws SQLException {
						UserCategory uc = new UserCategory();
						uc.setCategory_id(rs.getInt("category_id"));
						return uc;
					}
				});

		List<Tack> resultTacks = new ArrayList<Tack>();
		if (!userCategories.isEmpty()) {
			for (UserCategory userCategory : userCategories) {
				resultTacks.addAll(getTacksForCategory(userCategory
						.getCategory_id()));
			}
		} else {
			resultTacks = getTacks();
		}

		return resultTacks;
	}

	private static final String INSERT_TACK = "INSERT into tack (tack_category_id,title, description, url, media, is_active, created_date, modified_date, is_private, tack_rating ) "
			+ "values (?, ?, ?, ?, ?, 1 , now() , now(),0, 5)";

	public Boolean createUserTack(int user_id, int category_id, String title,
			String description, String link, String imageSrc) {
		// Make DB call to insert user here

		getJdbcTemplate()
				.update(INSERT_TACK,
						new Object[] { category_id, title, description, link,
								imageSrc });
		return true;

	}
}
