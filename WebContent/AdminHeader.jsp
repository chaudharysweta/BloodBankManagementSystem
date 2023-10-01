<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PROJECTBLOOD</title>
<link rel="stylesheet" href="PROJECTBLOOD.css" type="text/css">
<link rel="stylesheet" href="AdminHOME1.css" type="text/css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<script src="https://kit.fontawesome.com/a076d05399.js"
	crossorigin="anonymous"></script>
	
	<style type="text/css"></style>



</head>
<body>
	<nav>
		
		<div class="logo">BloodBank</div>
		<ul>
			<li><a href="AdminHOME.jsp">Home</a></li>
			<li><a href="#">Stocks</a>
				<ul>
					<li><a href="manageStock.jsp">Manages</a></li>
				</ul></li>
			<li><a href="#">Donors</a>
				<ul>
					<li><a href="addNewDonor.jsp">Add Donor</a></li>
					<li><a href="editDeleteList.jsp">Edit Donor</a></li>
					<li><a href="donorList.jsp">Donor List</a></li>
					
				</ul></li>
			<li><a href="#">Receiver</a>
				<ul>
					<li><a href="manageBloodRequest.jsp">Request List</a></li>
					<li><a href="requestCompleted.jsp">RequestCompleted</a></li>

				</ul></li>
			<li><a href="#">Blood Bank</a>
				<ul>
					<li><a href="addBloodBank.jsp">Add Blood Bank</a></li>
					<li><a href="BloodBankList.jsp">Blood Bank List</a></li>
				</ul></li>
			<li><a href="adminLogin.jsp">Logout</a></li>
		</ul>
	</nav>
</body>
</html>