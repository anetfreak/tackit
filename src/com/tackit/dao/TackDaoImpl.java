package com.tackit.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.tackit.domain.Category;
import com.tackit.domain.Tack;

public class TackDaoImpl extends JdbcDaoSupport implements TackDao {

	private static final String GET_TACKS = "select id, tack_category_id, title, description, url, is_active, created_date, modified_date, is_private, tack_rating from tack";
	private static final String GET_CATEORIES = "select tack_category_id, name, description from tack_category";
	
	public List<Tack> getTacks() {
		
		return getJdbcTemplate().query(GET_TACKS, new Object[]{}, new RowMapper<Tack>(){
			@Override
			public Tack mapRow(ResultSet rs, int rowNum) throws SQLException {
				Tack tack = new Tack();
				tack.setId(rs.getInt("id"));
				tack.setTitle(rs.getString("title"));
				tack.setDescription(rs.getString("description"));
				tack.setTackCategoryId(rs.getInt("tack_category_id"));
				tack.setTackRating(rs.getDouble("tack_rating"));
				tack.setActive(true);
				tack.setPrivate(false);
				tack.setLink(rs.getString("url"));
				tack.setCreateDate(rs.getDate("created_date"));
				tack.setUpdateDate(rs.getDate("update_date"));
				return tack;
			}
		});
	}
	
	public List<Category> getCategories() {
		
		return getJdbcTemplate().query(GET_CATEORIES, new Object[]{}, new RowMapper<Category>(){
			@Override
			public Category mapRow(ResultSet rs, int rowNum) throws SQLException {
				Category category = new Category();
				category.setId(rs.getInt("tack_category_id"));
				category.setName(rs.getString("name"));
				category.setDescription(rs.getString("description"));
				return category;
			}
		});
	}
}
