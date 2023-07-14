<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>  

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

<body style="background-color:white;">



	<%@ include file="header.jsp"%>
<img src="images/covertwo.png" alt="CAR" style="width:100%;">

<div class="m-5 p-3">
	<div class="container my-5">

		<c:if test="${success_register != null}">

			<div class="alert alert-success">${success_register} Click here to <a href="login">
			Sign In</a> </div>

		</c:if>
		<h3>Register</h3>

		
		<sf:form action="register" method="post" class="was-validated" modelAttribute="user">
			
			<div class="mb-3 mt-3">
				<label for="firstName" class="form-label">First Name:</label> <sf:input
					type="text" class="form-control" 
					placeholder="Enter first name" name="firstName" path="firstName" required="true" />
				<div class="valid-feedback">Valid.</div>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div>
			<div class="mb-3">
				<label for="lastName" class="form-label">Last Name:</label> <sf:input
					type="text" class="form-control" 
					placeholder="Enter last name" name="lastName" path="lastName" required="true" />
				<div class="valid-feedback">Valid.</div>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div>
			<div class="mb-3">
				<label for="userName" class="form-label">Username:</label> <sf:input
					type="text" class="form-control" id="userName"
					placeholder="Enter username" name="userName" path="userName" required="true" />
				<div class="valid-feedback">Valid.</div>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div>
			<div class="mb-3">
				<label for="email" class="form-label">Email:</label> <sf:input
					type="email" class="form-control" 
					placeholder="Enter username" name="email" path="email" required="true" />
				<div class="valid-feedback">Valid.</div>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div>
			<div class="mb-3">
				<label for="password" class="form-label">Password:</label> <sf:input
					type="password" class="form-control" id="password"
					placeholder="Enter password" name="password" path="password" required="true" />
				<div class="valid-feedback">Valid.</div>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div>
			<div class="mb-3">
				<label for="mobile" class="form-label">Mobile Number:</label> <sf:input
					type="text" class="form-control" 
					placeholder="Enter mobile number" name="mobile" path="mobile" required="true" />
				<div class="valid-feedback">Valid.</div>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div>
			<div class="mb-3">
				<label for="address" class="form-label">Address:</label> <sf:input
					type="text" class="form-control" id="userName"
					placeholder="Enter address" name="address" path="address" required="true" />
				<div class="valid-feedback">Valid.</div>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div>

			<input type="submit" value="Register"
				class="btn btn-primary" />
		</sf:form>

	</div>
</div>
	<%@ include file="footer.jsp"%>

</body>
</html>
