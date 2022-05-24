package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.User;
import util.JDBCConnectionFactory;

public class UserDao {
	Connection conn;

	public UserDao() {
		conn = JDBCConnectionFactory.getConnection();
	}

	public boolean userLogin(User loginUser) throws SQLException {
		String sql = String.format("select * from user where email = '%s' and password = '%s'",
				loginUser.getEmail(), loginUser.getPassword());
		Statement stmtStatement = conn.createStatement();
		ResultSet rs = stmtStatement.executeQuery(sql);
		while(rs.next()) {
			return true;
		}
		return false;
	}
	
	public boolean userRegister(User registerUser) throws SQLException {
		String sql = String.format("select * from user where realname = '%s'", registerUser.getUsername());
		Statement stmtStatement = conn.createStatement();
		ResultSet rs = stmtStatement.executeQuery(sql);
		if(rs.next()) {
			return false;
		} else {
			sql = String.format("insert into user(password, realname, email) values ('%s', '%s', '%s')", registerUser.getPassword(), registerUser.getUsername(), registerUser.getEmail());
			stmtStatement = conn.createStatement();
			stmtStatement.execute(sql);
			return true;
		}
	}
	
	public List<User> getUsers() throws SQLException {
		String sql = String.format("select * from user");
		Statement stmtStatement = conn.createStatement();
		ResultSet rs = stmtStatement.executeQuery(sql);
		List<User> result = new ArrayList<User>();
		
		while(rs.next()) {
			User user = new User();
			user.setEmail(rs.getString("email"));
			//user.setPassword(rs.getString("password"));
			user.setUsername(rs.getString("realname"));
			result.add(user);
		}
		
		return result;
	}
	
	
	
	
	
	
	
	
	
	
	
}
