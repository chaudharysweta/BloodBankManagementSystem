<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
	
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Filter Product</title>
	<link rel="stylesheet" type="text/css" href="fontawesome-5/fontawesome-css/all.css">
	<link rel="stylesheet" type="text/css" href="Sorting1.css">
</head>
<body>



	<form action="manageStockAction.jsp" method="post">
	<main>
		<div class="nav">
		<header>
			<ul class="indicator">
				<li data-filter="all" class="active"><a href="#">All</a></li>
				<li data-filter="A+"><a href="#">A+</a></li>
				<li data-filter="A-"><a href="#">A-</a></li>
				<li data-filter="O+"><a href="#">O+</a></li>
				<li data-filter="O-"><a href="#">O-</a></li>
				<li data-filter="AB+"><a href="#">AB+</a></li>
				<li data-filter="AB-"><a href="#">AB-</a></li>
				<li data-filter="B+"><a href="#">B+</a></li>
				<li data-filter="B-"><a href="#">B-</a></li>
				<li data-filter="all" class="active"><a href="home1.jsp">Home</a></li>
				
			</ul>
			<div class="filter-condition">
				<span>View As a</span>
				<select name="" id="select">
					<option value="Default">Default</option>
					<option value="LowToHigh">Low to high</option>
					<option value="HighToLow">High to low</option>
				</select>
			</div>
		</header>
		</div>
		<div class="product-field">
			<ul class="items">
			
			               <%
							try {
								Connection con = ConnectionProvider.getCon();
								Statement st = con.createStatement();
								ResultSet rs = st.executeQuery("select * from stock");
								while (rs.next()) {
							%>
			
				<li data-category="" data-price="">
					<picture>
						<img src="img/BloodImage.jfif" alt="">
					</picture>
					<div class="detail">
						<p class="icon">
						   <span><i class="far fa-heart"></i></span>
						   <span><i class="far fa-share-square"></i></span>
						   <span><i class="fas fa-shopping-basket"></i></span>
						</p>
						<strong><%=rs.getString(1)%></strong>
						<span>Lorem, ipsum dolor sit amet consectetur.</span>
						<small>Details</small>
					</div>
					<h4><%=rs.getString(2)%></h4>
				</li>
				<%
						}
						} catch (Exception e) {
						System.out.println(e);
						}
						%>
				
				
				
				
				
			</ul>
		</div>
		
	</main>
	
	</form>
	
</body>
</html>
<script type="text/javascript" src="Shorting.js"></script>
