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
	
<!---------- About -------------------->
    
    <section class="about">
        <div class="container--about">
            <div class="about--left">
                <h1>About Us</h1> 
                    <p>
                        Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolorum 
                        modi, eveniet a illum aut animi asperiores accusamus libero. Repellendus 
                        modi ratione eos autem? Officiis fugiat repellat deserunt sint dolore sequi?
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Et ipsum accusamus 
                        reiciendis voluptatum natus, expedita fugiat eos eaque, voluptates beatae, 
                        dolorem a tempore minus eum! Obcaecati repudiandae itaque porro veniam.
                    </p>
            </div>

            <div class="about--right">
                    <img src="images/Saly-12.png" class="mx-auto" alt="">
            </div>
        
        </div>    
                 
    </section>

    <center> <hr size="3px" width="70%" color="#bf0909"></center>


    <!------------- Our Mission ------------------------->

    <section class="mission p-3">
        <div class="container--mission">
            <div class="mission--left">
                <img src="images/1.png" alt="">
                <img src="images/2.png" alt="" id="hall">
                <img class="m3" src="images/blue.png" alt="">
            </div>

            <div class="mission--right m-5">
                <h1>Our Mission</h1>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias, facilis? Explicabo 
                    exercitationem nulla aliquam esse voluptatum fugiat porro inventore cum quaerat molestias 
                    voluptatem, vel deserunt quam saepe consectetur! Facilis ipsum fugiat deserunt 
                    facere architecto repudiandae distinctio earum necessitatibus accusantium soluta!
                </p>
            </div>

        </div>
    </section>

    <center> <hr size="3px" width="70%" color="#bf0909"></center>

<!------------- Our Vision ------------------------->

    <section class="vision">
        <div class="container--vision">
            <h1 class="pt-5">Our Vision</h1>
            <p>
                Lorem, ipsum dolor sit amet consectetur adipisicing elit. Excepturi culpa iusto 
                nostrum dolorum quod sunt, ea laboriosam tempore neque! Cum at omnis deleniti, fuga 
                sunt repellat. Iure quos labore assumenda eum laborum laboriosam. Fugiat laudantium 
                voluptatibus deleniti nam ipsam eos veritatis nemo quod tempore. Non, cupiditate? 
                Praesentium, delectus totam. Ut.
            </p>
            <div class="vision--img pb-5">
                <img src="images/goggles.png" alt="">
                <img src="images/women.png" alt="">
            </div>
        </div>
    </section>
    
    <center> <hr size="3px" width="70%" color="#bf0909"></center>

    <!------------- Our Goals ------------------------->
    <section class="goals">
        <div class="container--goals">
            <div class="goals--left">
                <h1>Our Goals</h1>
            <p>
                Lorem ipsum dolor, sit amet consectetur adipisicing elit. 
                Voluptatem fugit architecto soluta eum blanditiis. Quibusdam 
                nam, commodi odio nisi esse illum eos perferendis accusantium
                quo veniam, sapiente labore unde necessitatibus rem incidunt 
                reiciendis adipisci velit nemo qui corporis facilis quas a 
                eligendi! Voluptatum eius voluptate recusandae error reiciendis  
                quam odit.
            </p>
            </div>
            
            <div class="goals--right mb-5 text-center"">
                <img src="images/checkbook.png" class="goals--img mx-auto" alt="">
            </div>
        </div>
    </section>

	<%@ include file="footer.jsp"%>
</body>
</html>
