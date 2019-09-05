<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Retrieve data</title>
<style>
	body{
		background-image: url("ima/17.png");
		background-repeat: repeat-x;
		max-width: 100%;
		height: -100%;
		background-size: cover;
	}
	h1{
		color:white;
		text-align: center;
		text-decoration: underline;
		text-transform: uppercase;
	}
	h2{
		color:white;
		font-size: 18px;
	
	}
</style>
</head>
<body>
	<h1>Retrieve data from register table</h1>
	<center>
	<table border="2">
	<tr>
		<td><h2>Username</h2></td>
		<td><h2>NIC</h2></td>
		<td><h2>Email</h2></td>
		<td><h2>Address</h2></td>
		<td><h2>City</h2></td>
		<td><h2>Phone</h2></td>
		<td><h2>Password</h2></td>

	</tr>	
	
	<%
try{
	Class.forName("com.mysql.jdbc.Driver").newInstance();

	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_national_polling_system", "root", "12345");
	Statement st = conn.createStatement();
	String sql ="select * from register";
	ResultSet rs = st.executeQuery(sql);
	
	while(rs.next()){
%>
<tr>
<td><%=rs.getString("username") %></td>
<td><%=rs.getString("nic") %></td>
<td><%=rs.getString("address") %></td>
<td><%=rs.getString("email") %></td>
<td><%=rs.getString("city") %></td>
<td><%=rs.getString("phone") %></td>
<td><%=rs.getString("password") %></td>
</tr>
<%
}
conn.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</center>
</table>
</body>
</html>