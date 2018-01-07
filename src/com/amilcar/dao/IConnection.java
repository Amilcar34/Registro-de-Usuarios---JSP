package com.amilcar.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public interface IConnection {

	default Connection getConnection() {

		Connection con = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");

			String url = "jdbc:mysql://localhost/jsp";
			
			con = DriverManager.getConnection(url, "root", "");

		} catch (Exception e) {
			e.printStackTrace();
		}

		return con;
	}

}
