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
<title>Results</title>

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
</style>
</head>
<body>
	<center>
	<h1>Results</h1>
	
	<table border="3">
	<tr>
		<td>Party</td>
		<td>Number of Votes</td>
	</tr>	
	
	<%
try{
	Class.forName("com.mysql.jdbc.Driver").newInstance();

	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_national_polling_system", "root", "12345");
	Statement st = conn.createStatement();
	String sql ="select * from vote order by votes desc";
	ResultSet rs = st.executeQuery(sql);
	
	while(rs.next()){
%>
<tr>
<td><%=rs.getString("party") %></td>
<td><%=rs.getString("votes") %></td>
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