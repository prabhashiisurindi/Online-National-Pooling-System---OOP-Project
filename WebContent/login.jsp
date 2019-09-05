<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="style.css" rel="stylesheet">

        
		<style>
	#main-sec{
		background-image: url("eb.jpg");
		height: 100%;
		padding-top:200px;
		padding-bottom:200px;
		background-position:center;
		background-repeat: no-repeat;
		background-size: cover;
	}
	</style>

</head>
<body>
<section id="main-sec">
	<div class="o-container">
	
	
	<form action="loginServlet" method="post">

	Enter username :<input type="text" name="username"> <br>
	Enter password :<input type="password" name="password"><br>
	<input type="submit" class="login-button" value="Login">
	</form>
	</div>
</section>

</form>

</body>
</html>