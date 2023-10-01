
<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="AdminHeader.jsp" %>
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
#customers td{
color: black;
font-size: 15px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: black;
}

body{
background-image: linear-gradient(to right top, #034c55, #005f62, #007369, #008669, #029963);
background-repeat: no-repeat;

}
</style>
</head>
<body>
<br>

<center>
<input type="text" name="" id="myInput" placeholder="names..."  onkeyup="searchFun()">

<table id="customers">
<tr>
<th>Name</th>
<th>Mobile Number</th>
<th>Email</th>
<th>Blood Group</th>
</tr>
<tr>
<%
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from bloodrequest where status='completed'");
	while(rs.next())
	{
%>
<td ><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
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


<script type="text/javascript">
const searchFun = () => {
	let filter = document.getElementById('myInput').value.toUpperCase();
	
	let myTable = document.getElementById('customers');
	
	let tr = myTable.getElementsByTagName('tr');
	
	for(var i=0; i<tr.length; i++){
		let td = tr[i].getElementsByTagName('td')[3];
		
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


</center>
<br>
<br>
<br>
<br>
<%@include file="AdminFooter.jsp" %>
</body>
</html>