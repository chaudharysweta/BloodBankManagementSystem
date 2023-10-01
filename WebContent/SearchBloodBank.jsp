<%@page import="com.Users.UserDetails"%>
<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Blood Bank</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="style.css">


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
	
	
	
	<style type="text/css">
	.bg-custom{
	
background-image: linear-gradient(to right top, #050637, #001261, #00178e, #0019bc, #1214eb);
}

.navbar .nav-item .nav-link{
	font-size: 21px;
	color: white;
}

.navbar-custom .nav-item:hover .nav-link{
	background: white;
	color: black;
	border-radius: 15px;
}


	</style>

</head>
<body style="background-image: linear-gradient(to right top, #051937, #004d7a, #008793, #00bf72, #a8eb12");"background-repeat: no-repeat";>

<nav class="navbar navbar-expand-lg navbar-dark bg-custom navbar-custom">
  <a class="navbar-brand" href="#"><i class="fa fa-tint" aria-hidden="true"></i> BBMS</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="home1.jsp"><i class="fa fa-home" aria-hidden="true"></i> Home <span class="sr-only">(current)</span></a>
      </li>
      
      <li class="nav-item active">
        <a class="nav-link" href="Gallery.jsp"><i class="fa fa-picture-o" aria-hidden="true"></i> Gallery<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="Dashboard.jsp"><i class="fa fa-area-chart" aria-hidden="true"></i> Dashboard <span class="sr-only">(current)</span></a>
      </li>
      

    </ul>
    
    <%
    
    UserDetails user =(UserDetails)session.getAttribute("userD");
    
    if(user!=null)
    {%>
    	<a href="" class="btn btn-light my-2 my-sm-0 mr-3"data-toggle="modal" data-target="#exampleModal" type="submit"><i class="fa fa-user" aria-hidden="true"></i><%=user.getName() %></a>
      <a href="Blood.jsp" class="btn btn-light my-2 my-sm-0" type="submit"><i class="fa fa-user-plus" aria-hidden="true"></i> Logout</a>
      
      
      
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">User Details</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      
        <div class="container text-center">
        <i class="fa fa-user fa-3x"></i>
        <h5></h5>
        <table class="table">
        
        <tbody>
        <tr>
        <th>User Id</th>
        <td><%=user.getId()%></td>
        </tr>
        <tr>
        <th>Full Name</th>
        <td><%=user.getName() %></td>
        </tr>
        <tr>
        <th>Email Id</th>
        <td><%=user.getEmail() %></td>
        </tr>
        </tbody>
        </table>
        <div>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
        </div>
        
      </div>
      
    </div>
  </div>
</div>
   
   
    <%}
    else
    {%>
      <a href="login.jsp" class="btn btn-light my-2 my-sm-0 mr-3" type="submit"><i class="fa fa-user" aria-hidden="true"></i> Login</a>
      <a href="register.jsp" class="btn btn-light my-2 my-sm-0" type="submit"><i class="fa fa-user-plus" aria-hidden="true"></i> Register</a>
   
    <%}
    
    %>
      
      
  </div>
  
</nav>


<div class="container-fluid back-image">
		<div class="text-center">
		<br><br>
		<h1 class="text-white"><i class="fa fa-tint" aria-hidden="true"></i>  Search Blood Bank</h1>
		<br>
		

	<input style="font-size: 20px;border-radius: 10px;width: 40%; text-align: center;" type="text" name="" id="myInput" placeholder="Search Location of Blood Bank"onkeyup="searchFun()"><br><br>
<b>
<div style="background-image: linear-gradient(to right top, #172232, #0f252e, #142627, #1d2622, #242621);background-repeat: no-repeat; ">
	<table id="myTable">
		<tr class="header" style="font-size: 20px;color: black;">
		    <th style="width: 20%;">SN</th>
			<th style="width: 30%;">Blood Bank Name</th>
			<th style="width: 50%;">Address</th>
			<th style="width: 40%;">ContactNumber</th>
		</tr>
		<tr>
<%
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from bloodbankdetails");
	while(rs.next())
	{
%>
<td style="color: white;"><%=rs.getString(1) %></td>
<td style="color: white;"><%=rs.getString(2) %></td>
<td style="color: white;"><%=rs.getString(3) %></td>
<td style="color: white;"><%=rs.getString(4) %></td>


</tr>
<%
}
}
catch(Exception e)
{
	System.out.println(e);
}
%>
	</table>
	
	</div>
	</b>
	
	
<script type="text/javascript">
const searchFun=() => {
	let filter = document.getElementById('myInput').value.toUpperCase();
	
	let myTable = document.getElementById('myTable');
	
	let tr = myTable.getElementsByTagName('tr');
	
	for(var i=0; i<tr.length; i++){
		let td = tr[i].getElementsByTagName('td')[2];
		
		if(td){
			let textvalue = td.textContent || td.innerHTML;
			
			if(textvalue.toUpperCase().indexOf(filter) > -1){
				tr[i].style.display="";
			}
			else{
				tr[i].style.display="none";
			}
		}
	}
}
</script>
		
		</div>
	</div>





</body><br>

<center><p style="font-size: 25px;color: white;">Developed By Sweta Raj Chaudhary</p></center>
</html>