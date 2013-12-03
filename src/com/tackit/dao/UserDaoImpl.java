package com.tackit.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.tackit.domain.User;

public class UserDaoImpl extends JdbcDaoSupport implements UserDao {

	private static final String GET_USER = "select id, password , first_name from users where email = ?";
	
	private static final String INSERT_USER = "INSERT into users (email, password , first_name , last_name ) values (?, ? , ? , ?)";
	
	private static final String UPDATE_USER = "UPDATE users set email =? , password =? where id = ?";
	
	public void updateUser(User user) {
		// TODO Auto-generated method stub
	}
	
	public int createUser(User user) {
		// TODO Auto-generated method stub
		//Make DB call to insert user here
		getJdbcTemplate().update(INSERT_USER, new Object[]{user.getEmail(), user.getPassword(), user.getFirst_name(),user.getLast_name()});
		int userId = getJdbcTemplate().queryForInt("select last_insert_id()");
		return userId;
		
	}

	public User getUser(final String username) {
		
		User user = getJdbcTemplate().queryForObject(GET_USER, new Object[]{username}, new RowMapper<User>(){
			@Override
			public User mapRow(ResultSet rs, int rowNum) throws SQLException {
				User user = new User();
				user.setId(rs.getInt("id"));
				user.setEmail(username);
				user.setPassword(rs.getString("password"));
				user.setFirst_name(rs.getString("first_name"));
				return user;
			}
		});
		
		return user;
	}

}
