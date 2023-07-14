<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

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


<!--  Access the Static Resources without using spring URL -->
<link href="/style/avi.css" rel="stylesheet" />
<script src="/js/script.js"></script>

</head>

<body>



	<%@ include file="header.jsp"%>
   <!--------------- START OF CONTACT ------------------>
    
    <div class="contact--box">
        <h1>Contact Us</h1>
    </div>
    
    <!--------------- START OF CARD ---------------------->

    <div class="card_row p-5 pt-0">
        <div class="card">
            <img src="images/number.png" alt="" class="card-image">
            <p>#123-456 (+12) 345-6789-1234</p>
        </div>

        <div class="card">
            <img src="images/email.png" alt="" class="card-image">
            <p>abccars@gmail.com <br> abc_cars@gmail.com</p>

        </div>


        <div class="card">
            <img src="images/location.png" alt="" class="card-image">
            <p class="text-center">1st Street, City, Province, Region, Country, Postal Code</p>

        </div>

    </div>
    

    <div class="location--container pt-5">
        <h1 class="pt-5">Location Map</h1>
            <p class="p-3">
                Lorem, ipsum dolor sit amet consectetur adipisicing elit. Excepturi culpa iusto 
                nostrum dolorum quod sunt, ea laboriosam tempore neque! Cum at omnis deleniti, fuga 
                sunt repellat. Iure quos labore assumenda eum laborum laboriosam. Fugiat laudantium 
            </p>
            <div class="location--map pb-5">
                <iframe height="500px" width="80%" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3925.042801930715!2d123.9097436142324!3d10.338459892619623!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33a998e133925eeb%3A0xfeda037a6ba9d730!2sUniversity%20of%20Cebu%20-%20Banilad%20Campus!5e0!3m2!1sen!2sph!4v1664534042535!5m2!1sen!2sph"></iframe>
            </div>
    </div>
	<%@ include file="footer.jsp"%>
</body>
</html>
