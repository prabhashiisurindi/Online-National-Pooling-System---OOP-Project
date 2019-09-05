<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

	<title>Voting</title>
	<link rel="stylesheet" type="text/css" href="style3.css">
    
	
	<style>
	
	#container{
		font-family:Ariel, Helvetica, sans-serif; 
		
	}
	
	#con7{
	    position: absolute;
		top: 30px;
	}
	
	</style>
</head>
<body>
	<header>
		
		<a href="home.jsp"><img src="ima/sl.jpg" width="30" height="32" alt="logo"></a> 
         <button class="help">HELP</button>
		<a href="home.jsp"><button class="signout">LOG OUT</button></a>
		
       
	</header>
	
	
	<nav>

	<div class="topnav">
		<ul>
			<li><a href="home.jsp"><b>Home</a></li>
			<li><a href="register.jsp">Registation</a></li>
			<li><a href="contactus.jsp">Contact Us</a></li>
			<li><a href="register.jsp">Admin Panel</b></a></li>
			<br>
		</ul>
	</div>
	
	</nav>
	
	
	<!--LEFT NAVIGATION STARTS HERE-->

	<div id="container">
		
	<div id="main">	
	
		<div class="leftnav">
		<ul>
		<li><a href="https://www.parliament.lk/" ><b>About Parliment </a></li><br>
		<li><a href="https://www.president.gov.lk/">Sri Lanka President</a></li><br>
		<li><a href="https://en.m.wikipedia.org">List Of Presidents</a></li><br>
		<li><a href="https://www.pmoffice.gov.lk/">Sri Lanka Prime Minister</a></li><br>
		<li><a href="https://www.cabinetoffice.gov.lk/">Sri Lanka Cabinet Of Minister</b></a></li><br>
		
		</ul>
		</div>
        
        
	
	</div>
	<form action="voteServlet" method="post">	
				<div id="a1"><p><b>&nbsp;&nbsp;&nbsp;&nbsp;LOCAL&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; AUTHORITY&nbsp;&nbsp;&nbsp;&nbsp; ELECTION &nbsp;&nbsp;&nbsp;&nbsp;2019</b></p>

				</div>
                <div id="a11"><button name="party" value="UNP"><img src="ima/unp1.png"height="200" width="200"><br><br><font face="Baskerville Old Face">UnitedNationalParty</button><br></font>
                </div>
                
           
                
                <div id="a13"><button name="party" value="JVP"><img src="ima/jvp.jpg"height="200" width="200"><br><br><font face="Baskerville Old Face">JVP<br>JanathaVimukthiPeramuna</button></font>
                </div>
                
                
                
                <div id="a111"><button name="party" value="SLPP"><img src="ima/slpp.jpg" width="200"><br><br><font face="Baskerville Old Face">SLPP<br>SriLankaPodujanaPeramuna</button></font>
                </div>
               
                <div id="a113"><button name="party" value="UPFA"><img src="ima/upfa.jpg"height="200"width="200"><br><br><font face="Baskerville Old Face">UPFA<br>UnitedPeople'sFreedomAlliance</button></font>
                </div>
    </form>
    <div id="con7" style="margin-left:210px; right:0px; top:00px; ">
	
	

	</div>
		<div id="hr"><hr color="#000000" ></div>
		<div class="vl1"></div>
        
        
    			
               
              
                
	
	<!--PAGE CONTENT HERE-->
	
	
	
	<!--PAGE CONTENT END-->
	

	
	<!--FOOTER START-->
	
	
	
	<div id="footer">
		<p><b>Contact : (+94)11 2354354</p><br>
		<p>Fax : (+94)11 2340340 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp<a href="" >Facebook : www.facebook.com</a></b></p>

	
	</div>

	
</body>
</html>