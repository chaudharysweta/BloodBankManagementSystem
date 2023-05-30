<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
    <title>Main Page</title>
    <link rel="stylesheet" href="style2.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
    
    <script>
    
    function goToDonatePage1() {
      window.location.href = "DonateBlood.jsp";
    }
     </script>
    <script>
    
    function goToDonatePage2() {
      window.location.href = "index.jsp";
    }
     </script>
     <script>
    
    function goToDonatePage3() {
      window.location.href = "adminLogin.jsp";
    }
     </script>
    
  </head>
  <body class="p-3 m-0 border-0 bd-example">

    <!-- Example Code -->
    
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
      <div class="container-fluid">
       <a href="#default" class="logo"><img class="logo" src="Logo1.png" style="width: 200px; height: 150px;"></a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarScroll">
          <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="Main.jsp" style="font-size: 30px; padding-left: 60px;color: Red; "><p><b>Home</b></p></a>
            </li>
            <li class="nav-item">
              <a class="nav-link " href="#" style="padding-left: 60px; font-size: 30px; color: Red;"><p><b>About Us</b></p></a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                
              </a>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="#">Introduction</a></li>
                <li><a class="dropdown-item" href="#">Galary</a></li>
                <li><hr class="dropdown-divider"></li>
                <li><a class="dropdown-item" href="Dashboard.jsp">Dashboard</a></li>
              </ul>
            </li>
            
          </ul>
          <form class="d-flex" role="search">
           
           <button class="btn btn-outline-success" type="button" style="margin: 10px;" onclick="goToDonatePage1()">Donate Blood</button>

            <button class="btn btn-outline-success" type="button" style="margin: 10px;" onclick="goToDonatePage2()">Request Blood</button>

           <button class="btn btn-outline-success" type="button" style="margin: 10px;" onclick="goToDonatePage3()">Admin Login</button>

          </form>
        </div>
      </div>
    </nav>
    
    
    
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
   
  <div class="image-container">
  
  <img class="mySlides" src="home1.jpg" width="220%" height="250%">
  <div class="image-text">
  
  
  
    <h2 style="padding-bottom: 150px;font-size: 70px">Blood Bank Management System</h2>
   
  </div>
</div>

    
      <div class="container-fluid">
       
      </div>
    </nav>
    <!-- End Example Code -->
    <div class="footer">
            <div class="wrapper">
                <p class="text-center">developed by - <a href="#">Sweta Raj</a></p>
            </div>
        </div>
  </body>
</html>