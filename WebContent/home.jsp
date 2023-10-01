<%@include file="header.html"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>

img{
width:100%;
height:609px;
}</style>
</head>
<body style="background-image: linear-gradient(to right top, #051937, #004d7a, #008793, #00bf72, #a8eb12");"background-repeat: no-repeat";>
<br>
<div style="max-width:100%">
  <img class="mySlides"  src="home1.jpg" >
  <img class="mySlides"  src="home2.jpg" >
   <img class="mySlides"  src="home3.jpg" >
</div>
<script>
let slideIndex = 0;
carousel();

function carousel() {
  const slides = document.getElementsByClassName("mySlides");
  for (let i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  slideIndex++;
  if (slideIndex > slides.length) {
    slideIndex = 1;
  }
  slides[slideIndex - 1].style.display = "block";
  setTimeout(carousel, 2000);
}
</script>

<h3><center style="color: white;font-size: 22px">All Right Reserved @Sweta Raj :: 2023  </center></h3>
</body>
</html>