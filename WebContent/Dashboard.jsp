<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@include file="header1.html"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>

<style>
  .flex-container {
    display: flex;
    flex-direction: row;
    justify-content: space-between;
  }
</style>

</head>
<body>

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

  int totalRequests = pendingCount + completedCount;

  // Close the database connection
  rs.close();
  stmt.close();
  conn.close();
%>


<div class="main-content">
  <div class="wrapper">
    <h1>DASHBOARD</h1>
    <br><br>
    <div class="flex-container">
      <div class="col-4 text-center" style="background-color: white;height: 200px; width: 380px; font-size: 25px;"><br>
       <b><%= completedCount %><br> <br>Total Blood Managed</b>
      </div>
      <div class="col-4 text-center" style="background-color: white;height: 200px;font-size: 25px;color: red;"><br>
        <b> <%= pendingCount %> <br><br>Blood Request</b>
      </div>
      <div class="col-4 text-center" style="background-color: white;height: 200px;font-size: 25px;"><br>
        <b>  <br><br> Total Users</b>
      </div>
      
    </div>
  </div>
</div>

</body>
<br>
<br>

</html>
