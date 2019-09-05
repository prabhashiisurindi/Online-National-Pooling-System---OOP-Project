<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Register</title>
	<img src = "ima/logo.jpg" width = "100px" height = "150px">
				&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp

			<a href = "home.jsp"><button>Home</button></a>
			<a href = "register.jsp"><button>Voting</button></a>
			<a href = "adminPanalLogin.jsp"><button>Admin Panal</button></a>
			<a href = "contactus.jsp"><button>Contact Us</button></a>
			<a href = "login.jsp"><button>Login</button></a>
			
			
</head>
	<style>
	
		body{
			background-image: url("ima/17.png");
			background-repeat: repeat-x;
			max-width: 100%;
			height: -100%;
			background-size: cover;
		}
	
	
		button {
			background-color: #262626;
			border: none;
			color: white;
			padding: 10px 28px;
			text-align: center;
			text-decoration: none;
			display: inline-block;
			font-size: 16px;
			margin: 4px 2px;
			cursor: pointer;
			-webkit-transition-duration: 0.4s;
			transition-duration: 0.4s;
			border-radius: 4px;
		}
	
		button:hover {
			box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
			background-color:#004d99;
		}
		
		.footer{
			background-color: #262626;
			position: fixed;
			left: 0;
			bottom: 0%;
			width: 100%;
			height: 20%;
			
		}
	
		.pre1{
			font-size: 16px;
			color: white;
		}
		
		.pre2{
			font-size: 16px;
			color: #66b3ff;
		}
		text{
			font-size: 25px;
			color:black;
			margin-left: 38%;
		}
		.submit{
			background-color: #262626;
			border: none;
			color: white;
			padding: 10px 28px;
			text-align: center;
			text-decoration: none;
			display: inline-block;
			font-size: 16px;
			margin: 4px 2px;
			cursor: pointer;
			-webkit-transition-duration: 0.4s;
			transition-duration: 0.4s;
			border-radius: 4px;
			margin-left: 48%;
		}
		.submit:hover {
			box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
			background-color:#004d99;
		}
	
	</style>
<body>
<form action="registerServlet" method="post">
	</br>
	</br>
	</br>
	<text>Username : <input type="text" name = "username" placeholder="Username" size="40px"></text>
	<br><br>
	
	<text>NIC : <input type="text" name = "nic" placeholder="NIC" size="49px"></text>
	<br><br>
	
	<text>Address : <input type="text" name = "address" placeholder="Address" size="43px"></text>
	<br><br>
	
	<text>Email : <input type="text" name = "email" placeholder="Email" size="46px"></text>
	<br><br>
	
	<text>City : <input type="text" name = "city" placeholder="City" size="49px"></text>
	<br><br>
	
	<text>Phone-number : <input type="text" name = "phone" placeholder="Phone-number" size="33px"></text>
	<br><br>
	
	<text>Password :<input type="password" name="password" placeholder="Password" size="42px"></text></br>
	</br>
	<input class ="submit" type="submit" value="Register">
	<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>


</form>
</body>
	<!-- footer  -->
		<br/>
		<br/>
		<br/>

		<div class="footer">
		
	
			<div class="pre1">
					<pre>
					
					ADDRESS					PHONE				EMAIL</pre><div class="pre2"><pre> 
					* Name: Md. Donale Trump		* +94778236608			* The.Election.2019.th@gmail.com
					* Year: 2019				* +94769854332
					* Department: SE</pre></div>
			</div>
		</div>
	
	<!-- End of footer -->
</html>
<!--%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
</head>
<body>
	<center>

			

			<form name="registert" action="registerServlet" method="POST">
		 	
		 	<br><br><br>
		 	
		 			 NIC : <input type="text" name = "nic" placeholder="NIC">
				 	<br><br><br><br>
		 		
       				 Username : <input type="text" name = "username" placeholder="Username">
				 	<br><br><br><br>
				 
				 	 Email : <input type="text" name = "email" placeholder="Email">
				 	<br><br><br><br>
				 
				 	 Address : <input type="text" name = "address"  placeholder="Address">
				 	<br><br><br><br>
				 	
				 	 City : <input type="text" name = "city"  placeholder="City">
				 	<br><br><br><br>
				 	
				 	 Phone Number : <input type="text" name = "phone"  placeholder="Phone Number">    
				 	<br><br>
	          	         	
	          	     Password : <input type="password" name = "password"  placeholder="Password">
				 	<br><br><br><br>
				 	
				 	<input type="submit" value="Register ">
				
			</form>
		
		</center>
</body>
</html-->