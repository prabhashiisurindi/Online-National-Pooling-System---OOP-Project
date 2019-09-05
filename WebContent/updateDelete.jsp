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
<title>Update Delete</title>

<style>
	body{
		background-color: pink;
	}
</style>
</head>
<body>
<h1>Update and Delete data in contact us</h1>
<table border="2">
<tr>
<td>nic</td>
<td>name</td>
<td>email</td>
<td>subject</td>
<td>message</td>
<td>Update</td>
<td>Delete</td>
</tr>
<%
try{
	Class.forName("com.mysql.jdbc.Driver");

	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_national_polling_system", "root", "12345");
	Statement st = conn.createStatement();
	String sql ="select * from contactus";
	ResultSet rs = st.executeQuery(sql);
	int i=0;
	
	while(rs.next()){
%>
<tr>
<td><%=rs.getString("nic") %></td>
<td><%=rs.getString("name") %></td>
<td><%=rs.getString("email") %></td>
<td><%=rs.getString("subject") %></td>
<td><%=rs.getString("message") %></td>
<td><a href="update1.jsp?nic=<%=rs.getString("nic") %>" ><button type="button" class="update">Update</button></a></td>
<td>
<form action="contactusServlet"  method="POST">
<input type="hidden" name="nic" value="<%=rs.getString("nic") %>" >
<input type="hidden" name="type" value="delete" >
<button type="submit" class="delete">Delete</button>
</form>
</td>

</tr>
<%
i++;
}
conn.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>