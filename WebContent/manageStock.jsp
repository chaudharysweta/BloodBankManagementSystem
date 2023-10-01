<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<html>
<head>
<link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"], input[type="password"], input[type="submit"], select
	{
	border: none;
	background: white;
	height: 50px;
	font-size: 16px;
	margin-left: 35%;
	padding: 15px;
	width: 33%;
	border-radius: 25px;
}

#customers {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 55%;
}

#customers td, #customers th {
	border: 1px solid #ddd;
	padding: 8px;
}

#customers tr:nth-child(even) {
	background-color: #f2f2f2;
}

#customers tr:hover {
	background-color: #ddd;
}

#customers th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	background-color: #4CAF50;
	color: white;
}

body {
	background-image: linear-gradient(to right top, #034c55, #005f62, #007369, #008669,
		#029963);
	background-repeat: no-repeat;
	
}
</style>

</head>
<body>
<%@include file="AdminHeader.jsp" %>
	<%
	String msg = request.getParameter("msg");
	if ("invalid".equals(msg)) {
	%>
	<center>
		<font color="red" size="5">Something Went Wrong! Try Again...</font>
		<%
		}
		%>
		<%
		if ("valid".equals(msg)) {
		%>
		<center>
			<font color="red" size="5">Successfully Updated...</font>
			<%
			}
			%>
			<form action="manageStockAction.jsp" method="post">
				<div class="form-group">
					<center>
						<h2 style="color: white; font-size: 30px; padding-top: 15px">Select Blood Group</h2>
					</center>
					<select name="bloodgroup" style="color: black; ">
						<option value="A+" style="color: black; ">A+</option>
						<option value="A-" style="color: black; ">A-</option>
						<option value="B+" style="color: black; ">B+</option>
						<option value="B-" style="color: black; ">B-</option>
						<option value="O+" style="color: black; ">O+</option>
						<option value="O-" style="color: black; ">O-</option>
						<option value="AB+" style="color: black; ">AB+</option>
						<option value="AB-" style="color: black; ">AB-</option>
					</select>

					<center>
						<h2 style="color: white; font-size: 30px; padding-top: 15px">Select Increase/Decrease</h2>
					</center>
					<select name="incdec" style="color: black; ">
						<option value="inc"  style="color: black; ">Increase</option>
						<option value="dec"  style="color: black; ">Decrease</option>
					</select>

					<center>
						<h2 style="color: white; font-size: 30px; padding-top: 15px">Units</h2>
					</center>
					<input  style="color: black; " type="text" placeholder="Enter Units"
						placeholder="Enter Units" name="units">
					<center>
						<button type="submit" class="button">Save</button>
					</center>
				</div>
			</form>
			<br>
			<center>


				<table class="table table-striped" id="customers">

					<tr>
						<th>Blood Groups</th>
						<th>Units</th>
					</tr>

					<tbody>
						<tr >
							<%
							try {
								Connection con = ConnectionProvider.getCon();
								Statement st = con.createStatement();
								ResultSet rs = st.executeQuery("select * from stock");
								while (rs.next()) {
							%>
							<td ><b style="color: black;"><%=rs.getString(1)%></b>
							<td ><b style="color: black;"><%=rs.getString(2)%></b>
						</tr>
						<%
						}
						} catch (Exception e) {
						System.out.println(e);
						}
						%>
					</tbody>
				</table>

			</center>
			<br> <br> <br> <br>
			<%@include file="AdminFooter.jsp" %>
</body>


<script type="text/javascript">

$('th').on('click',function(){
	console.log('Column is clicked')
})

</script>





<!-- 
<script type="text/javascript">
	function sortTable(n, evt) {
		var table = document.querySelector('table'), 
		    thead = document.querySelector('thead'), 
		    tbody = table.querySelector('tbody'),
		    bRows = [...tbody.rows],
		    hData = [...thead.querySelectorAll('th')],
		    desc = false;
		
		hData.map ((head) => {
			if(head != evt ){
				head.classList.remove('asc','desc');
			}
		});
		
		desc =evt.classList.contains ('asc')? true : false;
		evt.classList[desc ? 'remove' : 'add']('asc');
		evt.classList[desc ? 'add' : 'remove']('desc');
		tbody.innerHTML = '';
		bRows.sort((a,b)=>{
			let x = a.getElementsByTagName('td')[n].innerHTML.toLowerCase(),
			    y = b.getElementsByTagName('td')[n].innerHTML.toLowerCase();
			return desc ? ( x < y ? 1 : -1) : ( x < y ? -1 : 1);
		});
		bRows.map((bRow)=>{
			tbody.appendChild(bRow);
		});
	}
</script>
 -->




</html>













