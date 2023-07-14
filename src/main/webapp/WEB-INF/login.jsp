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

<body style="background-color:white;">



	<%@ include file="header.jsp"%>

<img src="images/covertwo.png" alt="CAR" style="width:100%;">
	
<div class="m-5 p-3">
	
	<div class="container my-5">

		<c:if test="${error_string != null}">

			<div class="alert alert-danger">${error_string} Click here to <a href="register_user">
			Register</a></div>

		</c:if>
		<h3>Sign In</h3>

		<c:url var="post_url" value="/login" />
		<form action="${post_url}" method="post" class="was-validated">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />

			<div class="mb-3 mt-3">
				<label for="username" class="form-label">Username:</label> <input
					type="text" class="form-control" id="userName"
					placeholder="Enter username" name="username" value="" required>
				<div class="valid-feedback">Valid.</div>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div>
			<div class="mb-3">
				<label for="password" class="form-label">Password:</label> <input
					type="password" class="form-control" id="password"
					placeholder="Enter password" name="password" value="" required>
				<div class="valid-feedback">Valid.</div>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div>

			<input type="submit" name="Login" value="Sign In"
				class="btn btn-primary"></input>
		</form>

		<p>New User? Click here to <a href="register_user" >Register</a></p>
		

	</div>
</div>




	<%@ include file="footer.jsp"%>

</body>
</html>
