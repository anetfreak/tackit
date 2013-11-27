package com.tackit.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.tackit.domain.User;

public class UserDaoImpl extends JdbcDaoSupport implements UserDao {

	private static final String GET_USER = "select id, password, istester from user where username = ?";
	
	private static final String INSERT_USER = "INSERT into user (username, password, istester ) values (?, ?, ?)";
	
	private static final String UPDATE_USER = "UPDATE user set username =? , password =? where id = ?";
	
	public void updateUser(User user) {
		// TODO Auto-generated method stub
	}
	
	public void createUser(User user) {
		// TODO Auto-generated method stub
		//Make DB call to insert user here
		getJdbcTemplate().update(INSERT_USER, new Object[]{user.getUserName(), user.getPassword()});
//		int userId = getJdbcTemplate().queryForInt("select last_insert_id()");
		
	}

	public User getUser(final String username) {
		
		User user = getJdbcTemplate().queryForObject(GET_USER, new Object[]{username}, new RowMapper<User>(){
			@Override
			public User mapRow(ResultSet rs, int rowNum) throws SQLException {
				User user = new User();
				user.setId(rs.getInt("id"));
				user.setUserName(username);
				user.setPassword(rs.getString("password"));
				return user;
			}
		});
		
		return user;
	}

}
