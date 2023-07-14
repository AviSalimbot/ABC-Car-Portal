<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link href="/css/style.css" rel="stylesheet" />
<script src="/js/script.js"></script>

</head>

<body>

	<%@ include file="header.jsp"%>

	<section> <c:forEach items="${user}" var="u">
		<c:set var="id" value="${u.id}"></c:set>
		<c:set var="firstName" value="${u.firstName}"></c:set>
		<c:set var="lastName" value="${u.lastName}"></c:set>
		<c:set var="uname" value="${u.userName}"></c:set>
		<c:set var="email" value="${u.email}"></c:set>
		<c:set var="mobile" value="${u.mobile}"></c:set>
		<c:set var="address" value="${u.address}"></c:set>
	</c:forEach>
	
<div class="container pt-5">
	<div
		class="alert alert-success alert-dismissible fade show ${message == null ? "
		d-none" : "d-flex" }"
        role="alert">
		${message}
		<button type="button" class="btn-close" data-bs-dismiss="alert"
			aria-label="Close"></button>
	</div>

	<div class="row mx-1">
		<img src="images/coverone.png"
			class="p-0 border border-bottom-0 " height="200">
	</div>

	<div class="border border-top-0  p-3 px-5 mx-1"
		style="position: relative; top: -100px;">
		<div style="height: 200px; width: 200px;"
			class="border border-5 border-white rounded-circle bg-dark mx-auto">
			<div class="h-100 fs-1 text-white d-flex justify-content-center"
				style="width: 190px;">
				<span style="font-size: 2em;" class="mt-4 d-none d-lg-block d-xl-block d-xxl-block">${firstName.charAt(0)}</span> 
				<span style="font-size: 2em;" class="mt-4 d-none d-lg-block d-xl-block d-xxl-block">${lastName.charAt(0)}</span>
						
				<span style="font-size: 2.5em;" class="mt-4 d-none d-md-block d-sm-block d-lg-none d-xl-none d-xxl-none">${firstName.charAt(0)}</span> 
				<span style="font-size: 2.5em;" class="mt-4 d-none d-md-block d-sm-block d-lg-none d-xl-none d-xxl-none">${lastName.charAt(0)}</span>
						
				<span style="font-size: 3em;" class="mt-4 d-block d-sm-none d-md-none d-lg-none d-xl-none d-xxl-none">${firstName.charAt(0)}</span> 
				<span style="font-size: 3em;" class="mt-4 d-block d-sm-none d-md-none d-lg-none d-xl-none d-xxl-none">${lastName.charAt(0)}</span>
			</div>
		</div>
		<div class="px-5 text-center pt-2">
			<h2>${firstName} ${lastName}</h2>
		 	<p>${uname}</p> 
		</div>
		<div class="row text-center d-flex justify-content-center">
			<div class="col-lg-3 col-md-5">
				<div class="d-grid mb-3">
					<button type="button" class="btn btn-secondary py-0" data-bs-toggle="modal"
					data-bs-target="#exampleModal">
						Edit Profile
					</button>
				</div>
			</div>
		</div>
		
		<div class="my-3 row border px-3 d-flex justify-content-evenly">
			<h4 class="my-2">Contacts</h4>
			<hr>
			<div class="col-lg-3 col-md-3 col-sm-12 d-flex align-items-center">
				<i class='bx bx-envelope fs-2'></i>
				<div class="p-2 ms-2">
					<small>Email</small>
					<h6>${email}</h6>
				</div>
			</div>
					
			<div class="col-lg-3 col-md-3 col-sm-12 d-flex align-items-center">
				<i class='bx bx-phone fs-2'></i>
				<div class="p-2 ms-2">
					<small>Phone</small>
					<h6>${mobile}</h6>
				</div>
			</div>
					
			<div class="col-lg-3 col-md-3 col-sm-12 d-flex align-items-center">
				<i class='bx bx-home fs-2'></i>
				<div class="p-2 ms-2">
					<small>Address</small>
					<h6>${address}</h6>
				</div>
			</div>
		</div>
	</div>
</div>
	
			<!-- Modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Update User</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body">

							<!-- User Update Form -->
							<sf:form action="update" method="post" class="was-validated"
								modelAttribute="user">
								<div class="mb-3 mt-3">
									<label for="firstName" class="form-label">First Name:</label> <input
										type="text" class="form-control" placeholder="Enter first name"
										name="firstName" path="firstName" value="${firstName}" required="true" />
									<div class="valid-feedback">Valid.</div>
									<div class="invalid-feedback">Please fill out this field.</div>
								</div>
								<div class="mb-3 mt-3">
									<label for="lastName" class="form-label">Last Name:</label> <input
										type="text" class="form-control" placeholder="Enter last name"
										name="lastName" path="lastName" value="${lastName}" required="true" />
									<div class="valid-feedback">Valid.</div>
									<div class="invalid-feedback">Please fill out this field.</div>
								</div>
								<div class="mb-3">
									<label for="userName" class="form-label">Username:</label> <input
										type="text" class="form-control" id="userName"
										placeholder="Enter username" name="userName" path="userName"
										value="${uname}" required="true" />
									<div class="valid-feedback">Valid.</div>
									<div class="invalid-feedback">Please fill out this field.</div>
								</div>
								<div class="mb-3">
									<label for="email" class="form-label">Email:</label> <input
										type="email" class="form-control" placeholder="Enter username"
										name="email" path="email" value="${email}" required="true" />
									<div class="valid-feedback">Valid.</div>
									<div class="invalid-feedback">Please fill out this field.</div>
								</div>
								<div class="mb-3">
									<label for="mobile" class="form-label">Mobile:</label> <input
										type="text" class="form-control" id="mobile"
										placeholder="Enter mobile" name="mobile" path="mobile"
										value="${mobile}" required="true" />
									<div class="valid-feedback">Valid.</div>
									<div class="invalid-feedback">Please fill out this field.</div>
								</div>
								<div class="mb-3">
									<label for="address" class="form-label">Address:</label> <input
										type="text" class="form-control" id="address"
										placeholder="Enter address" name="address" path="address"
										value="${address}" required="true" />
									<div class="valid-feedback">Valid.</div>
									<div class="invalid-feedback">Please fill out this field.</div>
								</div>
								<div class="d-grid">
									<button type="submit" class="btn btn-primary">Update</button>
								</div>
							</sf:form>
							<!-- User Update Form -->
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">Close</button>
						</div>
					</div>
				</div>

			</div>

	<div class="container mt-0 mb-5" style="position: relative; top: -50px;">
		<div class="row p-3">
			<nav>
			<div class="nav nav-tabs" id="nav-tab" role="tablist">
				<button class="nav-link active" id="nav-home-tab"
					data-bs-toggle="tab" data-bs-target="#nav-home" type="button"
					role="tab" aria-controls="nav-home" aria-selected="true">Post
					Status</button>
				<button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab"
					data-bs-target="#nav-profile" type="button" role="tab"
					aria-controls="nav-profile" aria-selected="false">Booking
					Status</button>

			</div>
			</nav>
			<div class="tab-content" id="nav-tabContent">
				<div class="tab-pane fade show active" id="nav-home" role="tabpanel"
					aria-labelledby="nav-home-tab">
					<c:if test="${not empty cars}">
						<div class="container">
							<div class="row">
								<div class="col-12">
									<table class="table table-bordered">
										<thead>
											<tr>
												<th scope="col">Post</th>
												<th scope="col">Car</th>
												<th scope="col">Post Date</th>
												<th scope="col">Action</th>
												<th scope="col">Current Bid (PHP)</th>
												<th scope="col">Bidder Name</th>
												<th scope="col">Sale status</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${cars}" var="c" varStatus="status">
												<tr>
													<th scope="row">${status.count}</th>
													<td>${c.name}</td>
													<td>${c.postDate}</td>
													<td>
														<a type="button" class="btn btn-secondary" 
														href="/car_detail?cid=${c.id}"> <i class="far fa-eye"></i>
														</a> 
														<a type="button" class="btn btn-secondary"
														href="/deletecar?cid=${c.id}"> <i
															class="far fa-trash-alt"></i>
														</a>
													</td>
													<c:forEach items="${c.biddings}" var="b" begin="0" end="0">
														<c:set var="bidPrice" value="${b.bid}"></c:set>
														<c:if test="${bidPrice > 0}">
															<td>${b.bid}</td>
															<td>${b.bidder}</td>

														</c:if>
														<td>${c.status}</td>
													</c:forEach>

												</tr>
											</c:forEach>

										</tbody>
									</table>
								</div>
							</div>

							<!-- end of row -->
						</div>
					</c:if>
				</div>
				<div class="tab-pane fade" id="nav-profile" role="tabpanel"
					aria-labelledby="nav-profile-tab">
					<c:if test="${not empty cars}">
						<div class="container">
							<div class="row">
								<div class="col-12">
									<table class="table table-bordered">
										<thead>
											<tr>
												<th scope="col">No.</th>
												<th scope="col">Car</th>
												<th scope="col">Book Date</th>
												<th scope="col">Book By</th>
												<th scope="col">Book Status</th>

											</tr>
										</thead>
										<tbody>
											<c:forEach items="${cars}" var="c" varStatus="status">
												<c:forEach items="${c.biddings}" var="b">
													<c:set var="bookDate" value="${b.bookDate}"></c:set>
													<c:if test="${bookDate != null}">
														<tr>
															<th scope="row">${status.count}</th>
															<td>${c.name}</td>
															<td>${b.bookDate}</td>
															<td>${b.bidder}</td>
															<td>${b.bookStatus}</td>
														</tr>
													</c:if>
												</c:forEach>
											</c:forEach>

										</tbody>
									</table>
								</div>
							</div>
						</div>
					</c:if>

					<c:if test="${empty cars}">
						<div class="container">
							<div class="row">
								<div class="col-12">
									<table class="table table-bordered">
										<thead>
											<tr>
												<th scope="col">No.</th>
												<th scope="col">Book Date</th>
												<th scope="col">Car</th>
												<th scope="col">Book Status</th>
												<th scope="col">View Car</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${bids}" var="b" varStatus="status">
												<c:set var="bookDate" value="${b.bookDate}"></c:set>
												<c:if test="${bookDate != null}">
													<tr>
														<th scope="row">${status.count}</th>
														<td>${b.bookDate}</td>
														<td>${b.car.name}</td>
														<td>${b.bookStatus}</td>
														<td>
															<!-- view car --> <a type="button"
															class="btn btn-primary" href="/car_detail?cid=${b.car.id}">
																<i class="far fa-eye"></i>
														</a> <!-- view car -->
														</td>
													</tr>
												</c:if>
											</c:forEach>

										</tbody>
									</table>
								</div>
							</div>
						</div>
					</c:if>
				</div>
			</div>
		</div>
	</div>
	</section>


	<%@ include file="footer.jsp"%>
</body>
</html>