<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
.mySlides {display:none;}

input[type="text"], input[type="mail"]
{
    border: none;
    background:white;
    height: 50px;
    font-size: 16px;
	margin-left:2%;
	padding:15px;	
}
</style>
<style>
  .form-container {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    align-items: center;
  }
  
  .form-container > div {
    flex-basis: 48%;
    margin-bottom: 10px;
  }
  
  .form-container > div input {
    width: 70%;
     border-radius: 20px;
  }
  
  .form-container > div:first-child input {
    margin-right: 10px;
  }
  
  .form-container > div:last-child input {
    margin-left: 10px;
  }
  
  .form-container > button {
    margin-top: 10px;
  }
  .button1 {
  display: block;
  margin: 0 auto;
}
body{
background-image: linear-gradient(to right top, #051937, #004d7a, #008793, #00bf72, #a8eb12);
background-repeat: no-repeat;
}
</style>

</head>
<body>

<div class="header"style="padding-bottom: 10px;padding-top: 7px;background-image: linear-gradient(to right top, #050637, #001261, #00178e, #0019bc, #1214eb);">
  <a href="#default" class="logo"><img class="logo" src="Logo1.png"style="height: 80px;width: 80px"></a>
  <div class="header-right"style="padding-bottom: 10px;padding-top: 20px">
    <a  href="home1.jsp">Home</a>
    <a class="active" href="index.jsp">Request Blood</a>
  </div>
</div>

<div style="max-width:100%">
  <img class="mySlides"  src="index1.jpg" >
  <img class="mySlides"  src="index2.jpg" >
  <img class="mySlides"  src="index4.jpg" >
  
</div>
<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 5000); // Change image every 2 seconds
   
}
</script>


<body>
  <br>
 
 <%
 String msg=request.getParameter("msg");
 if("valid".equals(msg))
 {
	 %>
	 <center><font color="red" size="5">Form Submitted Successfully. You will get notified within few hours...</font></center>
	 <% 
 }
 %>
  <%

 if("invalid".equals(msg))
 {
	 %>
	 <center><font color="red" size="5">Invalid Data!! Try Again...</font></center>
	 <% 
 }
 %>
 <br>
 
 
 <center style="color: white"><h1>Enter Your Details To Request For Blood</h1></center><br>
  <form action="indexFormAction.jsp" method="post">
  <center style="color: white">
  <input type="text" name="name" placeholder="Enter your name" required>
  <input type="text" name="mobilenumber" placeholder="Enter your number" required>
  <input type="mail" name="email" placeholder="Enter Email Address" required>
  <input type="text" name="bloodgroup" placeholder="Enter Blood Group" required>

  <button class="button1"><span>Submit</span></button>

  </center>
  </form>
  
  
  <br>
  <br>
  <br>
  

 
 
 
 
 
  <br>
  <br>
  </div>
</div>

<div > 
<div class="container"> 
<br>         
<br>
    </tbody>
  </table>
</div>
</div>
<hr>
<h3><center style="color: white;font-size: 22px">All Right Reserved @Sweta Raj :: 2023  </center></h3>

</body>
</html>

