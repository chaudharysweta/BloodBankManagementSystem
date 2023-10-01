<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@include file="header.html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"], input[type="password"], input[type="email"], select,input[type="number"]
{
    border: none;
    background:white;
    height: 50px;
    font-size: 16px;
	padding:15px;
	width:60%;	
	border-radius: 25px;
	margin-left:20%;
}
h2,h1
{	
	margin-left:20%;
	color: white;
}
hr
{
width:60%;	
}
</style>
</head>
<body style="background-image: linear-gradient(to right top, #034c55, #005f62, #007369, #008669, #029963);">

<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
	%>
	<center><font color="red" size="5">Successfully Updated</font></center>
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

<%
int id=1;
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("Select max(id) from Donate");
	if(rs.next())
	{
		id=rs.getInt(1);
		id=id+1;
	}%>
	<div class="container">
	<h1 style="color:white;">Donor ID: <%out.println(id); %></h1>
<% 
}
catch(Exception e){
	
}
%>


<div class="container">
<form action="DONATEaction.jsp" method="post">
<input type="hidden" name="id" value="<% out.println(id); %>">
<h2>Name</h2>
<input type="text" placeholder="Enter Name" name="name">
<hr>
<h2>Father Name</h2>
<input type="text" placeholder="Enter Father Name" name="father">
<h2>Mother Name</h2>
<input type="text" placeholder="Enter Mother Name" name="mother">
<hr>
<h2>Mobile Number</h2>
<input type="number" placeholder="Enter Mobile Number" name="mobilenumber">
<hr>
<h2>Gender</h2>
<select name="gender">
<option value="Male">Male</option>
<option value="Female">Female</option>
<option value="Male">Others</option>
</select>
<hr>
<h2>Email</h2>
<input type="email" placeholder="Enter Email" name="email">
<hr>
<h2>Blood Group</h2>
<select name="bloodgroup">
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
<input type="text" placeholder="Enter Address" name="address">
<br><br><br>
<center><button type="submit" class="button">Save</button></center>
</form>
</div>

<br>
<br>
<br>

<h3><center style="color: white;font-size: 22px">All Right Reserved @Sweta Raj :: 2023   </center></h3>

</body>
</html>