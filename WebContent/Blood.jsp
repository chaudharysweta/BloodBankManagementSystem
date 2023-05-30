<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Blood Bank</title>

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
	
background:#ff4081  ;
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

.back-image{
background: url("img/book.jpg")fixed;
width:100%;
height: 100vh;
background-repeat: no-repeat;
background-size: cover;
}
	</style>

</head>
<body>



<nav class="navbar navbar-expand-lg navbar-dark bg-custom navbar-custom">
  <a class="navbar-brand" href="#"><i class="fa fa-tint" aria-hidden="true"></i> BBMS</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="Blood.jsp"><i class="fa fa-home" aria-hidden="true"></i> Home <span class="sr-only">(current)</span></a>
      </li>
      
      <li class="nav-item active" style="padding-left: 1100px">
        <a class="nav-link" href="adminLogin.jsp"><i class="fa fa-user-circle-o" aria-hidden="true"></i> Admin Login <span class="sr-only">(current)</span></a>
      </li>
      
      
     
    
    
   
  </div>
</nav>

<div class="container-fluid back-image"style="background-image: linear-gradient(to right top, #050637, #001261, #00178e, #0019bc, #1214eb);height: 630px;">
		<div class="text-center">
		<br><br><br>
		<h1 class="text-white"><i class="fa fa-tint" aria-hidden="true"style="color: red";></i> Blood Bank Management System</h1>
		<br>
		<a href="login.jsp" class="btn btn-light mr-3"><i class="fa fa-user" aria-hidden="true"></i> Login</a>
		<a href="register.jsp" class="btn btn-light"><i class="fa fa-user-plus" aria-hidden="true"></i> Register</a>
		</div>
	</div>



<div class="container-fluid " style="background-color: #ff4081 ;">

<p class="text-center text-white" style="font-size: 25px;">Designed and Developed by Sweta Raj Chaudhary</p>

</div>


</body>
</html>