package com.horaoen;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class UserDao {
	Connection conn;

	public UserDao() {
		conn = JDBCConnectionFactory.getConnection();
	}

	public boolean userLogin(User loginUser) throws SQLException {
		String sql = String.format("select * from users where username = '%s' and password = '%s'",
				loginUser.getUsername(), loginUser.getPassword());
		Statement stmtStatement = conn.createStatement();
		ResultSet rs = stmtStatement.executeQuery(sql);
		if (rs.next())
			return true;
		return false;
	}
}
