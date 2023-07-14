<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Learning Center</title>
    <link rel="stylesheet" href="style/home.css">
    <!--  Enable Bootstrap -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    
</head>

<body>
  
    <!---------- Header -------------------->

    <%@ include file="header.jsp"%>

    <!---------- Banner -------------------->
	
<div>
  <img src="images/cover.png" alt="CAR" style="width:100%;">
  
  <div class="d-inline d-none d-lg-block d-xl-block d-xxl-block" style="position:absolute;top:43%;left:5%;font-family: 'Playfair Display', serif;">
  	<a style="font-size: 4rem;">HAVE A USED CAR?</a>
  	<br>
  	<button class="btn btn-outline-dark px-5 py-2 fs-3">SELL NOW</button>
  </div>

  <div class="d-inline d-none d-md-block d-sm-block d-lg-none d-xl-none d-xxl-none" style="position:absolute;top:23%;left:5%;font-family: 'Playfair Display', serif;">
  	<a style="font-size: 3rem;">HAVE A USED CAR?</a>
  	<br>
  	<button class="btn btn-outline-dark px-5 py-2 fs-4">SELL NOW</button>
  </div>
  
  <div class="d-inline d-block d-sm-none d-md-none d-lg-none d-xl-none d-xxl-none" style="position:absolute;top:22%;left:5%;font-family: 'Playfair Display', serif;">
  	<a style="font-size: 2rem;">HAVE A USED CAR?</a>
  	<br>
  <button class="btn btn-outline-dark px-5 py-2 fs-5">SELL NOW</button>
</div>

    <!---------- Advertisement -------------------->

<div class="d-inline d-none d-md-block d-sm-block d-lg-none d-xl-none d-xxl-none text-center">
	<section class="mb-5">
        <div class="">
        <br><br><br><br>
        <h1 class="fs-2 text-center">ABC CARS: Your Trusted Used Car Sales Portal</h1>
        <p class="mx-5 my-3">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed 
            do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do 
            eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
        </div>
        <img class="rounded" src="images/ad-image.jpg" width="50%">
    </section>
</div>



    <section class="advertise my-5 py-5 d-inline d-block d-md-none d-sm-none">
        <div class="adtext">
        <h1>ABC CARS: Your Trusted Used Car Sales Portal</h1>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed 
            do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do 
            eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
        </div>
        <img src="images/ad-image.jpg">
    </section>

    <!---------- Attainment -------------------->

    <center> <hr size="3px" width="90%" color="#bf0909"></center>
<div class="container">
    <section class="rank my-5 pt-5" >
        <h3>A Used Car Portal You Can Trust</h3>
        <div class="row gap-3 pt-5">
           <div class="col">
            <h2>7,000+</h2>
            <h5>Sellers</h5>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit
            </p>
           </div>
           <div class="col">
            <h2>10,000+</h2>
            <h5>Users</h5>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit
            </p>
           </div>
           <div class="col">
            <h2>57,000+</h2>
            <h5>Visitors</h5>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit
            </p>
           </div>
        </div>
    </section>
</div>
    <center> <hr size="3px" width="100%" color="#bf0909"></center>

    <!------------ START OF GALLERY --------------->

    <section class="album" id="album">

        <div class="gal-head">
            <h1>Institutional Gallery</h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed 
            do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed 
            do eiusmod tempor incididunt<br> ut labore et dolore magna aliqua.</p>
        </div>
        
    <div class="container d-inline d-none d-lg-block d-xl-block d-xxl-block">
        <div class="row d-flex justify-content-center">
        	<div class="col-2">
            	<img class="rounded" src="images/galp1.jpg" width="180"  style="position:relative;top:110px;left:20px;">
            </div>
       		<div class="col-4">
    	        <img class="rounded" src="images/gal3.jpg" width="430" style="position:relative;top:80px;left:-10px;">
	        </div>
        	<div class="col-2">
    	        <img class="rounded" src="images/gal1.jfif" width="210" style="position:relative;top:181px;left:-10px;">
	        </div>
        	<div class="col-2">
    	        <img class="rounded" src="images/galp2.jpg" width="180" style="position:relative;top:210px;right:7px;">
	        </div>
        </div>
        <div class="row d-flex justify-content-center pb-5 mb-5">
        	<div class="col-2">
            	<img class="rounded" src="images/gal1.jfif" width="210"  style="position:relative;top:10px;left:-10px;">
            </div>
       		<div class="col-4">
    	        <img class="rounded" src="images/gal4.jpg" width="430" style="position:relative;top:10px;left:-10px;">
	        </div>
        </div>
	</div>
	
	<div class="container d-inline d-none d-md-block d-sm-block d-lg-none d-xl-none d-xxl-none">
        <div class="row d-flex justify-content-center">
        	<div class="col-2">
            	<img class="rounded" src="images/galp1.jpg" width="120"  style="position:relative;top:50px;">
            </div>
       		<div class="col-4">
    	        <img class="rounded" src="images/gal3.jpg" width="230" style="position:relative;top:75px;left:10px;">
	        </div>
        	<div class="col-2">
    	        <img class="rounded" src="images/gal1.jfif" width="100" style="position:relative;top:138px;left:10px;">
	        </div>
        	<div class="col-2">
    	        <img class="rounded" src="images/galp2.jpg" width="120" style="position:relative;top:160px;">
	        </div>
        </div>
        <div class="row d-flex justify-content-center pb-5 mb-5">
        	<div class="col-2">
            	<img class="rounded" src="images/gal1.jfif" width="100"  style="position:relative;top:0px;left:10px;">
            </div>
       		<div class="col-4">
    	        <img class="rounded" src="images/gal4.jpg" width="230" style="position:relative;top:0px;">
	        </div>
        </div>
	</div>
	
	<div class="container d-inline d-block d-sm-none d-md-none d-lg-none d-xl-none d-xxl-none">
        <div class="row d-flex justify-content-center">
        	<div class="col-2">
            	<img class="rounded" src="images/galp1.jpg" width="70"  style="position:relative;top:70px;">
            </div>
       		<div class="col-4">
    	        <img class="rounded" src="images/gal3.jpg" width="150" style="position:relative;top:75px;">
	        </div>
        	<div class="col-2">
    	        <img class="rounded" src="images/gal1.jfif" width="70" style="position:relative;top:112px;">
	        </div>
        	<div class="col-2">
    	        <img class="rounded" src="images/galp2.jpg" width="70" style="position:relative;top:140px;">
	        </div>
        </div>
        <div class="row d-flex justify-content-center pb-5 mb-5">
        	<div class="col-2">
            	<img class="rounded" src="images/gal1.jfif" width="70"  style="position:relative;top:40px;">
            </div>
       		<div class="col-4">
    	        <img class="rounded" src="images/gal4.jpg" width="150" style="position:relative;top:40px;left:-4px">
	        </div>
        </div>
	</div>
	
    </section>

    <!------------ START OF FOOTER --------------->

    <%@ include file="footer.jsp"%>

</body>
</html>