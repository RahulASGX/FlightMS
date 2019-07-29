package com.dbConnection;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnection {
		public Connection getConnection() throws Exception {
				Class.forName("com.mysql.cj.jdbc.Driver");// load driver
				Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/flightmsdb?useSSL=false","root","root");
			return connection;
		}
}
