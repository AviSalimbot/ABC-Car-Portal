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

	<c:forEach items="${car}" var="c">
		<c:set var="carId" value="${c.id}"></c:set>
		<c:set var="name" value="${c.name}"></c:set>
		<c:set var="image" value="${c.photoImagePath}"></c:set>
		<c:set var="make" value="${c.make}"></c:set>
		<c:set var="model" value="${c.model}"></c:set>
		<c:set var="registeration" value="${c.registeration}"></c:set>
		<c:set var="price" value="${c.price}"></c:set>
		<c:set var="status" value="${c.status}"></c:set>
		<c:set var="sellerId" value="${c.sellerId}"></c:set>
	</c:forEach> 

	<div class="container mb-5 mt-5">
		<div class="card mb-5">
			<div class="row g-0">
				<div class="col-md-6 border-end">
					<div class="d-flex flex-column justify-content-center">
						<div class="main_image">
							<img src="${image}" id="main_product_image" width="100%">
						</div>

					</div>
				</div>
				<div class="col-md-6">
					<div class="p-3 right-side">
						<div class="d-flex justify-content-between align-items-center">
							<h3>${name}</h3>

						</div>
						<div class="my-3 mx-5 content">


							<div class="d-flex">
								<div style="width: 300px;">
									<span class="fw-bold">Condition</span>
									<p style="font-size: 16px;">
										<i class="fas fa-car"></i> Used Car
									</p>
								</div>

								<div>
									<span class="fw-bold">Manufacture Year</span>
									<p style="font-size: 16px;">
										<i class="fas fa-calendar"></i> ${make}
									</p>
								</div>
							</div>

							<div class="d-flex">
								<div style="width: 300px;">
									<span class="fw-bold">Model</span>
									<p style="font-size: 16px;">
										<i class="fas fa-tag"></i> ${model}
									</p>
								</div>

								<div>
									<span class="fw-bold">Registration Date</span>
									<p style="font-size: 16px;">
										<i class="fas fa-calendar"></i> ${registeration}
									</p>
								</div>
							</div>


						</div>

						<c:if test="${status == 'sold'}">
							<h3>Car Sold!</h3>
						</c:if>
						
						<c:if test="${status != 'sold'}">
							<div class="row mb-3">
								<div class="col-6">
									<span class="fw-bold">Current Price</span>
									<h3>PHP ${price}</h3>
								</div>
		
								<div class="col-6">
									<span class="fw-bold">Current Bid</span>
									<c:if test="${empty highest}">
										<h3>PHP 0</h3>
									</c:if>
									<c:if test="${not empty highest}">
										<h3>PHP ${highest}</h3>
									</c:if>
								</div>
							</div>
							
							<c:forEach items="${seller}" var="s">
								<c:if test="${sellerId eq s.getId()}">
									<div class="row">
										<div class="col-6">
											<span class="fw-bold">Seller</span>
											<p><i class="bi bi-person-fill"></i> ${s.firstName} ${s.lastName}</p>
										</div>
										<div class="col-6">
											<span class="fw-bold">Seller Information</span>
											<p><a class="text-decoration-none text-black" href="/view?uid=${sellerId}"><i class="bi bi-info-circle-fill"></i> View Seller Information </a></p>
											
										</div>
									</div>
								</c:if>
							</c:forEach>
									
							<div class="d-grid mt-3">
								<!-- Button trigger modal -->
								<button type="button" class="btn btn-outline-dark"
									data-bs-toggle="modal" data-bs-target="#exampleModal1"
									>Bid to Book for Test Drive</button>
	
								<!-- Modal -->
								<div class="modal fade" id="exampleModal1" tabindex="-1"
									aria-labelledby="exampleModal1Label" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title" id="exampleModal1Label">Book for
													Test Drive</h5>
												<button type="button" class="btn-close"
													data-bs-dismiss="modal" aria-label="Close"></button>
											</div>
											<div class="modal-body">
	
												<!-- Book Form -->
												<sf:form action="book" method="post" class="was-validated"
													modelAttribute="booking">
													<div class="mb-3 mt-3">
														<label for="bookDate" class="form-label">Booking
															Date:</label> <input type="date" class="form-control"
															name="bookDate" required="true" />
														<div class="valid-feedback">Valid.</div>
														<div class="invalid-feedback">Please fill out this
															field.</div>
													</div>
													<div class="mb-3 mt-3">
														<label for="bid" class="form-label">Bid Price
															(PHP):</label> <input type="text" class="form-control"
															placeholder="Enter bidding price" name="bid"
															required="true" />
														<div class="valid-feedback">Valid.</div>
														<div class="invalid-feedback">Please fill out this
															field.</div>
													</div>
	
													<input type="hidden" name="cid" value="${carId}">
	
													<button type="submit" class="btn btn-primary"
														style="width: auto;">Book on this Date</button>
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
							</div>
						</c:if>
						<!-- end of button options -->
					</div>
				</div>
			</div>
		</div>

		<!--list of car bidder -->
		<c:if test="${not empty bid}">
			<div class="row">
				<h3 style="margin-bottom: 20px;">Bidding & Booking Status</h3>
				<div class="col-12">
					<table class="table table-bordered">
						<thead>
							<tr>
								<th scope="col">Name</th>
								<th scope="col">Bidding Date</th>
								<th scope="col">Bidding Price (PHP)</th>
								<th scope="col">Test Drive Book Date</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${bid}" var="b">
								<tr>
									<td>${b.bidder}</td>
									<td>${b.bidDate}</td>
									<td>${b.bid}</td>
									<td>${b.bookDate}</td>
								</tr>

							</c:forEach>

						</tbody>
					</table>
				</div>
			</div>
		</c:if>

		<!--list of car bidder -->
	</div>


	<%@ include file="footer.jsp"%>
</body>
</html>