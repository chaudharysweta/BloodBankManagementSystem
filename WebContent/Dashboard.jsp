<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
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
.bg-custom {
	background-image: linear-gradient(to right top, #050637, #001261, #00178e, #0019bc,
		#1214eb);
}

.navbar .nav-item .nav-link {
	font-size: 21px;
	color: white;
}

.navbar-custom .nav-item:hover .nav-link {
	background: white;
	color: black;
	border-radius: 15px;
}
</style>
<style>
.flex-container {
	display: flex;
	flex-direction: row;
	justify-content: space-between;
}
</style>
</head>
<body
	style="background-image: linear-gradient(to right top, #051937, #004d7a, #008793, #00bf72, #a8eb12"
	);background-repeat:no-repeat;">

	<nav
		class="navbar navbar-expand-lg navbar-dark bg-custom navbar-custom">
		<a class="navbar-brand" href="#"><i class="fa fa-tint"
			aria-hidden="true"></i> BBMS</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="home1.jsp"><i class="fa fa-home" aria-hidden="true"></i>
						Home <span class="sr-only">(current)</span></a></li>

				<li class="nav-item active"><a class="nav-link"
					href="Gallery.jsp"><i class="fa fa-picture-o"
						aria-hidden="true"></i> Gallery<span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item active"><a class="nav-link"
					href="Dashboard.jsp"><i class="fa fa-area-chart"
						aria-hidden="true"></i> Dashboard <span class="sr-only">(current)</span></a>
				</li>


			</ul>

			<%
			UserDetails user = (UserDetails) session.getAttribute("userD");

			if (user != null) {
			%>
			<a href="" class="btn btn-light my-2 my-sm-0 mr-3"
				data-toggle="modal" data-target="#exampleModal" type="submit"><i
				class="fa fa-user" aria-hidden="true"></i><%=user.getName()%></a> <a
				href="Blood.jsp" class="btn btn-light my-2 my-sm-0" type="submit"><i
				class="fa fa-user-plus" aria-hidden="true"></i> Logout</a>



			<!-- Modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">User Details</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
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
											<td><%=user.getName()%></td>
										</tr>
										<tr>
											<th>Email Id</th>
											<td><%=user.getEmail()%></td>
										</tr>
									</tbody>
								</table>
								<div>
									<button type="button" class="btn btn-secondary"
										data-dismiss="modal">Close</button>
								</div>
							</div>

						</div>

					</div>
				</div>
			</div>


			<%
			} else {
			%>
			<a href="login.jsp" class="btn btn-light my-2 my-sm-0 mr-3"
				type="submit"><i class="fa fa-user" aria-hidden="true"></i>
				Login</a> <a href="register.jsp" class="btn btn-light my-2 my-sm-0"
				type="submit"><i class="fa fa-user-plus" aria-hidden="true"></i>
				Register</a>

			<%
			}
			%>


		</div>

	</nav>

	<%
	// Import the necessary Java classes

	// Establish a database connection
	String url = "jdbc:mysql://localhost:3306/bloodbank";
	String username = "root";
	String password = "sweta@12R";
	Connection conn = DriverManager.getConnection(url, username, password);

	// Query the database to get the counts of blood requests by status
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery("SELECT COUNT(*) FROM bloodrequest WHERE status='Pending'");
	rs.next();
	int pendingCount = rs.getInt(1);

	rs = stmt.executeQuery("SELECT COUNT(*) FROM bloodrequest WHERE status='Completed'");
	rs.next();
	int completedCount = rs.getInt(1);

	// Query the database to get the count of users
	rs = stmt.executeQuery("SELECT COUNT(*) FROM user");
	rs.next();
	int totalUsers = rs.getInt(1);

	// Close the database connection
	rs.close();
	stmt.close();
	conn.close();
	%>


	<div class="main-content">
		<div class="wrapper" style="padding-bottom: 12%">
			<h1 style="text-align: center; color: white; padding-top: 50px;">DASHBOARD</h1>
			<br>
			<br>
			<div class="flex-container">
				<div class="col-4 text-center"
					style="background-color: white; height: 200px; width: 380px; font-size: 25px;">
					<br> <b><%=completedCount%><br> <br>Total
						Blood Managed</b>
				</div>
				<div class="col-4 text-center"
					style="background-color: white; height: 200px; font-size: 25px; color: red;">
					<br> <b> <%=pendingCount%> <br>
					<br>Blood Request
					</b>
				</div>


			</div>

		</div>
	</div>
	<br><br>
	 <div style="background-image: linear-gradient(to right top, #050637, #001261, #00178e, #0019bc, #1214eb);padding-top: 20px;padding-bottom: 30px; ">
    <center><p style="font-size: 25px;color: white;">Developed By Sweta Raj Chaudhary</p></center>
    </div>

</body>
<br>
<br>

</html>


