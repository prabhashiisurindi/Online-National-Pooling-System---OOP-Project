<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Contactus</title>
		
		<style>
			form{
				background-color: yellow;
	 			width:550px;
	 			height:550px;
	 			border:5px solid #000;
			}

			h1{
				color:red;
				text-align: center;
				text-decoration: underline;
				text-transform: uppercase;
			}

			h2{
				color:green;
				text-align: center;
				text-transform: uppercase;
			}
			
			body{
				background-color: lightblue;
			}
			
			button{
				font-size: 20px;
				padding: 14px 40px;
				border-radius: 12px;
			}
	
		</style>
	</head>
	
	<body>
	<br><br>
	
		<center><h1>contact - us</h1> </center>
		
				<button onclick="window.location.href = 'updateDelete.jsp';">Update & Delete</button>
				
				If you want to update or delete your details please press this button
				
				<br><br>
				
		<center>

			

			<form name="contactusServlet" action="contactusServlet" method="POST">
		 	
		 	<br><br><br>
		 	
		 			 NIC : <input type="text" name = "nic" placeholder="NIC" required>
				 	<br><br><br><br>
		 		
       				 Name : <input type="text" name = "name" placeholder="Name" required >
				 	<br><br><br><br>
				 
				 	 Email : <input type="text" name = "email" placeholder="Email" required pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"><br>
				 	 characters followed by an @ sign, followed by more characters,<br> and then a "." After the "." sign, add at least 2 letters from a to z
				 	 <br><br><br><br>
				 
				 	 Subject : <input type="text" name = "subject"  placeholder="Subject" required>
				 	<br><br><br><br>

				 	 Message : <input type="text" name = "message"  placeholder="Message" required>    
				 	<br><br><br><br>
				 	
	          	     <input type="hidden" name = "type"  value="insert">   
	          	          	
				 	 <input type="submit" value="Send ">
				
			</form>
		
		</center>
		
			<br><br><br><br>
		
			<h2><marquee>When you press Send button, your message will send to us!</marquee></h2>
	
		
	</body>
	
</html>