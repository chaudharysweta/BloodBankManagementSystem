
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.*"%>
<%@page import="Project.ConnectionProvider"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
.mySlides {display:none;}

input[type="text"], input[type="mail"]
{
    border: none;
    background:white;
    height: 50px;
    font-size: 16px;
	margin-left:2%;
	padding:15px;	
}
</style>
<style>
  .form-container {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    align-items: center;
  }
  
  .form-container > div {
    flex-basis: 48%;
    margin-bottom: 10px;
  }
  
  .form-container > div input {
    width: 70%;
     border-radius: 20px;
  }
  
  .form-container > div:first-child input {
    margin-right: 10px;
  }
  
  .form-container > div:last-child input {
    margin-left: 10px;
  }
  
  .form-container > button {
    margin-top: 10px;
  }
  .button1 {
  display: block;
  margin: 0 auto;
}

body{
background-image: linear-gradient(to right top, #051937, #004d7a, #008793, #00bf72, #a8eb12);
background-repeat: no-repeat;
}
</style>
</head>
<body>


<div class="header"style="padding-bottom: 10px;padding-top: 7px;background-image: linear-gradient(to right top, #050637, #001261, #00178e, #0019bc, #1214eb);">
  <a href="#default" class="logo"><img class="logo" src="Logo1.png"style="height: 80px;width: 80px"></a>
  <div class="header-right"style="padding-bottom: 10px;padding-top: 20px">
    <a  href="home1.jsp">Home</a>
    <a class="active" href="DonateBlood.jsp">Blood Donate</a>
  </div>
</div>



<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<center><font color="red" size="5">Record Inserted Successfull.</font></center>
<%
}
%>
<%

if("invalid".equals(msg))
{
%>
<center><font color="red" size="5">Something Went Wrong! Please Try Again...</font></center>
<%
}
%>



<h1>Enter Your Details For Blood Donation</h1>
<br>
<div class="container">
<form action="DonateBloodAction.jsp" method="post">
<h2>Name</h2>
<input type="text" placeholder="Enter Your Name" name="name" required>
<hr>
<h2>Father Name</h2>
<input type="text" placeholder="Enter Your Father Name" name="father" required>
<h2>Mother Name</h2>
<input type="text" placeholder="Enter Your Mother Name" name="mother" required>
<hr>
<h2>Mobile Number</h2>
<input type="number" placeholder="Enter Your Mobile Number" name="mobilenumber" required>
<hr>
<h2>Gender</h2>
<select style="font-size: 15px" name="gender" required>
<option value="Male">Male</option>
<option value="Female">Female</option>
<option value="Others">Others</option>
</select>
<hr>
<h2>Email</h2>
<input type="email" placeholder="Enter Your Email" name="email" required>
<hr>
<h2>Blood Group</h2>
<select style="font-size: 15px" name="bloodgroup" required>
<option value="A+">A+</option>
<option value="A-">A-</option>
<option value="B+">B+</option>
<option value="B-">B-</option>
<option value="O+">O+</option>
<option value="O-">O-</option>
<option value="AB+">AB+</option>
<option value="AB-">AB-</option>
</select>
<hr>
<h2>Address</h2>
<input type="text" placeholder="Enter Address" name="address" required>
<br>
<center><button type="submit" class="button">Save</button></center>
</form>
</div>
<br>
<br>
<%@include file="footer.html"%>