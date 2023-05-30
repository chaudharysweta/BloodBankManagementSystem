<!DOCTYPE html>
<html lang="en">
<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"], input[type="password"], input[type="submit"]
{
    border: none;
    background:white;
    height: 50px;
    font-size: 16px;
	margin-left:35%;
	padding:15px;
	width:33%;	
	border-radius: 25px;
}
body{
background-image: linear-gradient(to right top, #051937, #004d7a, #008793, #00bf72, #a8eb12);
background-repeat: no-repeat;
}
</style>
</head>
<body>
<div class="header"style="padding-bottom: 10px;padding-top: 10px;background-image: linear-gradient(to right top, #050637, #001261, #00178e, #0019bc, #1214eb);">
  <a href="#default" class="logo"><img class="logo" src="Logo1.png"style="height: 80px;width: 80px"></a>
  <div class="header-right"style="padding-bottom: 10px;padding-top: 10px">
    <a href="Blood.jsp">Home</a>
    <a class="active" href="adminLogin.jsp">Admin Login</a>
  </div>
</div>
<body>
<div class="container">
<br>
	<br>
	
	
	<%
	String msg=request.getParameter("msg");
	if("invalid".equals(msg))
	{
	%>
	<center><font color="red" size="5">Invalid Username/Password</font></center>
	<%
	}
	%>
	
	
<form action="adminLoginAction.jsp" method="post">
<div class="form-group">
<center style="color: white;font-size: 22px"><h2>Username</h2></center>
<input type="text" placeholder="Enter Username" name="username" required>
<center style="color: white;font-size: 22px"><h2>Password</h2></center>
<input type="password" placeholder="Enter Password" name="password" required>
<br><br><br>
<center><button type="submit" class="button">Submit</button></center>

</form>
		
</div>
<br><br><br><br><br><br><br><br><br>

<h3><center style="color: white;font-size: 22px">All Right Reserved @Sweta Raj :: 2023  </center></h3><br>
</body>
</html>
