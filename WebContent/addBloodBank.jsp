<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@include file="header.html"%>
<%@ page import="java.sql.*" %>
<%@ page import="Project.ConnectionProvider" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Blood Bank</title>
<style>
body {
  background-image: linear-gradient(to right top, #051937, #004d7a, #008793, #00bf72, #a8eb12);
  background-repeat: no-repeat;
}

.container {
  background-color: white;
  padding: 20px;
  border-radius: 5px;
  width: 400px;
  margin-top: 50px;
}

h1 {
  text-align: center;
  font-size: 40px;
}

form {
  margin-top: 20px;
}

form input[type="text"] {
  width: 100%;
  padding: 10px;
  margin-bottom: 10px;
  border: none;
  border-radius: 3px;
  box-sizing: border-box;
}

button.button {
  background-color: #4CAF50;
  color: white;
  padding: 10px 20px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  width: 100%;
}

button.button:hover {
  background-color: #45a049;
}

h3 {
  color: white;
  font-size: 22px;
  text-align: center;
  margin-top: 50px;
}
</style>
</head>
<body>

<%
String msg = request.getParameter("msg");
if ("valid".equals(msg)) {
%>
<center><font color="red" size="5">Record Inserted Successfully.</font></center>
<%
} else if ("invalid".equals(msg)) {
%>
<center><font color="red" size="5">Something Went Wrong! Please Try Again...</font></center>
<%
}
%>

<center>
<div class="container">
  <h1>Add Blood Bank</h1>
  <br>
  <form action="insertData.jsp" method="post">
    <h2>Enter Blood Bank Name</h2>
    <input type="text" placeholder="Enter Blood Bank Name " name="name" style="text-align: center;" required>

    <h2>Enter Address</h2>
    <input type="text" placeholder="Enter Address" name="address"style="text-align: center;" required>
    
    <h2>Contact Number</h2>
    <input type="text" placeholder="Enter Contact Number" name="mobilenumber"style="text-align: center;" required>

    <br>
    <center><button type="submit" class="button">Save</button></center>
  </form>
</div>
</center>

<h3>All Right Reserved @Sweta Raj :: 2023</h3>

</body>
</html>
