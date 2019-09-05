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
<title>Insert title here</title>

<style>
		form{
				background-color: yellow;
	 			width:550px;
	 			height:550px;
	 			border:5px solid #000;
			}
</style>
</head>
<body>
<% String nic = request.getParameter("nic").toString();
	
try{
	Class.forName("com.mysql.jdbc.Driver");

	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_national_polling_system", "root", "12345");
	Statement st = conn.createStatement();
	String sql ="select * from contactus where nic = '"+ nic + "'";
	ResultSet rs = st.executeQuery(sql);
	int i=0;
	
	while(rs.next()){
%>

<center>
<form name="contactusServlet" action="contactusServlet" method="POST">
		 	
		 	<br><br><br>
		 	
		 			 NIC : <input type="text" name = "nic" placeholder="NIC" value="<%=rs.getString("nic")%> " readonly>
				 	<br><br><br><br>
		 		
       				 Name : <input type="text" name = "name" placeholder="Name" value="<%=rs.getString("name")%>">
				 	<br><br><br><br>
				 
				 	 Email : <input type="text" name = "email" placeholder="Email" value="<%=rs.getString("email")%>">
				 	<br><br><br><br>
				 
				 	 Subject : <input type="text" name = "subject"  placeholder="Subject" value="<%=rs.getString("subject")%>" >
				 	<br><br><br><br>

				 	 Message : <input type="text" name = "message"  placeholder="Message" value="<%=rs.getString("message")%>">    
				 	<br><br>
	          	      <input type="hidden"  name="type" value="update"> 	
				 	<input type="submit" value="Send ">
				
			</form>
</center>			
	
<%}conn.close();
} catch (Exception e) {
e.printStackTrace();
} %>
</body>
</html>