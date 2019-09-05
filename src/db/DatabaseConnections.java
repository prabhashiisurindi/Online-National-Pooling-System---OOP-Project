package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DatabaseConnections {

	public static Connection getConnection() throws ClassNotFoundException, SQLException{
	
	String url = "jdbc:mysql://localhost/online_national_polling_system";
	String user = "root";
	String pass = "12345";
	String driver = "com.mysql.jdbc.Driver";
	
	
	Class.forName(driver);
	Connection con = DriverManager.getConnection(url,user,pass);
	
	return con;
	
	}
}

