<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
	}	
	
	button{
		font-size: 40px;
		padding: 14px 40px;
		border-radius: 12px;
	}
	
</style>
</head>
<body>
	<h1>*** Admin Panal ***</h1>
	
	<h2>Click on Results to see Results of the election</h2> <br>
	<button onclick="window.location.href = 'results.jsp';">Results</button>
	<br><br><br><br>
	
	<h2>Click on Register Details to see Register table data</h2> <br>
	<button onclick="window.location.href = 'registerDetails.jsp';">Register Details</button><br><br><br>
	
	<h2>Click on Contact us Details to see Contact us table data</h2> <br>
	<button onclick="window.location.href = 'contactusDetails.jsp';">Contact us Details</button>
	
	
</body>
</html>