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
<body>
	<%@include file="AdminHeader.jsp" %>

<div style="padding-top: 2%;padding-bottom: 15%">

<center>
<input style="color: black;" type="text" name="" id="myInput" placeholder="names..."  onkeyup="searchFun()">



<table id="customers">
<tr>
<th>Name</th>
<th>Father Name</th>
<th>Mother Name</th>
<th>Mobile Number</th>
<th>Gender</th>
<th>Email</th>
<th>Blood Group</th>
<th>Address</th>


</tr>

<tr >
<%
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from donation");
	while(rs.next())
	{
%>
<td style="color: black;"><%=rs.getString(1) %></td>
<td style="color: black;"><%=rs.getString(2) %></td>
<td style="color: black;"><%=rs.getString(3) %></td>
<td style="color: black;"><%=rs.getString(4) %></td>
<td style="color: black;"><%=rs.getString(5) %></td>
<td style="color: black;"><%=rs.getString(6) %></td>
<td style="color: black;"><%=rs.getString(7) %></td>
<td style="color: black;"><%=rs.getString(8) %></td>
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
		let td = tr[i].getElementsByTagName('td')[5];
		
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

<script type="text/javascript">
const searchFun = () => {
    let filter = document.getElementById('myInput').value.toUpperCase();
    let myTable = document.getElementById('customers');
    let tr = myTable.getElementsByTagName('tr');
    let nameCount = 0; // Initialize the name count variable

    for (var i = 0; i < tr.length; i++) {
        let tdEmail = tr[i].getElementsByTagName('td')[5]; // Column index for email

        if (tdEmail) {
            let emailText = tdEmail.textContent || tdEmail.innerHTML;

            if (emailText.toUpperCase().indexOf(filter) > -1) {
                tr[i].style.display = "";
                // Increment the name count when the email matches the search filter
                nameCount++;
            } else {
                tr[i].style.display = "none";
            }
        }
    }

    // Display the name count on the right side of the search input field
    document.getElementById('countDiv').innerText = "Name Count: " + nameCount;
}
</script>


</div>

	<%@include file="AdminFooter.jsp" %>
</body>
</html>