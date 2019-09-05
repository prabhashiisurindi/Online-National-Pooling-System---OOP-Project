<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AdminPanalLogin</title>
<style>
	body{
		background-image: url("ima/17.png");
		background-repeat: repeat-x;
		max-width: 100%;
		height: -100%;
		background-size: cover;
	}
	
	form{
				background-color: grey;
	 			width:200px;
	 			height:300px;
	 			border:5px solid #000;
			}
</style>
</head>
<body>
<button onclick="window.location.href = 'home.jsp';">Home</button>
<center>
<br><br><br><br>
	<form action="adminPanalServlet" method="post"><br><br><br>

	Enter username :<input type="text" name="username"> <br><br><br>
	Enter password :<input type="password" name="password"><br><br><br>
	<input type="submit" value="Login">


</form>
</center>	
</body>
</html>