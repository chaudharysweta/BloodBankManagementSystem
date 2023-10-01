<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>


<html>
<head>
<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 95%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
body{
background-image: linear-gradient(to right top, #034c55, #005f62, #007369, #008669, #029963);
background-repeat: no-repeat;

}
</style>
</head>
<body >
	<%@include file="AdminHeader.jsp" %>

<div style="padding-top: 2%;padding-bottom: 15%">

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

if("deleted".equals(msg))
{
	%>
	<center><font color="red" size="5">Successfully Deleted</font></center>
	<%
}
%>



<center>
<table id="customers">
<tr>
<th>ID</th>
<th>Name</th>
<th>Father Name</th>
<th>Mother Name</th>
<th>Mobile Number</th>
<th>Gender</th>
<th>Email</th>
<th>Blood Group</th>
<th>Address</th>
<th>Edit</th>
<th>Delete</th>
</tr>

<tr>
<%
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from donor");
	while(rs.next())
	{
%>
<td style="color: black;"><%=rs.getInt(1) %></td>
<td style="color: black;"><%=rs.getString(2) %></td>
<td style="color: black;"><%=rs.getString(3) %></td>
<td style="color: black;"><%=rs.getString(4) %></td>
<td style="color: black;"><%=rs.getString(5) %></td>
<td style="color: black;"><%=rs.getString(6) %></td>
<td style="color: black;"><%=rs.getString(7) %></td>
<td style="color: black;"><%=rs.getString(8) %></td>
<td style="color: black;"><%=rs.getString(9) %></td>
<td ><a style="color: black;" href="updateDonor.jsp?id=<%=rs.getString(1)%>">Edit</a></td>
<td><a style="color: black;" href="deleteDonor.jsp?id=<%=rs.getString(1)%>">Delete</a></td>
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
</center>

</div>

<%@include file="AdminFooter.jsp" %>
</body>
</html>
