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

<sec:authorize access="hasRole('Administrator')">
	<div>
	  <img src="images/cover.png" alt="CAR" style="width:100%;">
	  
	  <div class="d-inline d-none d-lg-block d-xl-block d-xxl-block" style="position:absolute;top:35%;left:5%">
	  	<a style="font-family: 'Playfair Display', serif; font-size: 3rem;">FIND THE CAR OF YOUR DREAM</a>
	  	<br>
	  	<p style="font-size: 1.3rem;'">Experience hassle-free car shopping with ABC Cars Portal<br>and find the car of your dreams today!</p>
	  </div>
	
	  <div class="d-inline d-none d-md-block d-sm-block d-lg-none d-xl-none d-xxl-none" style="position:absolute;top:18%;left:5%">
	  	<a style="font-family: 'Playfair Display', serif; font-size: 2rem;">FIND THE CAR OF YOUR DREAM</a>
	  	<br>
	  	<p style="font-size: 1rem;">Experience hassle-free car shopping with ABC Cars Portal<br>and find the car of your dreams today!</p>
	  </div>
	  
	  <div class="d-inline d-block d-sm-none d-md-none d-lg-none d-xl-none d-xxl-none" style="position:absolute;top:15%;left:5%">
	  	<a style="font-family: 'Playfair Display', serif; font-size: 1rem;">FIND THE CAR OF YOUR DREAM</a>
	  	<br>
	  	<p style="font-size: 0.7rem;">Experience hassle-free car shopping with ABC Cars Portal<br>and find the car of your dreams today!</p>
	  </div>
	</div>
	
</sec:authorize>

	<div class="container mt-5">
		<c:forEach items="${user}" var="u">
			<c:set var="id" value="${u.id}"></c:set>
			<c:set var="firstName" value="${u.firstName}"></c:set>
			<c:set var="lastName" value="${u.lastName}"></c:set>
			<c:set var="uname" value="${u.userName}"></c:set>
			<c:set var="email" value="${u.email}"></c:set>
			<c:set var="mobile" value="${u.mobile}"></c:set>
			<c:set var="address" value="${u.address}"></c:set>
		</c:forEach>
		
	
		<sec:authorize access="hasRole('Users')">
			<!-- post car link-->
			<div class="row mb-5 border">
			
				<img src="images/coverone.png" class="p-0 border border-bottom-0 " height="200">
			
				<div style="height: 200px; width: 200px;"
					class="border border-5 border-white rounded-circle bg-dark mx-auto col-1 mt-2"> 
					<div class="h-100 fs-1 text-white d-flex justify-content-center"
						style="width: 166px;">
						<span style="font-size: 2em;" class="mt-4 d-none d-lg-block d-xl-block d-xxl-block">${firstName.charAt(0)}</span> 
						<span style="font-size: 2em;" class="mt-4 d-none d-lg-block d-xl-block d-xxl-block">${lastName.charAt(0)}</span>
						
						<span style="font-size: 2.5em;" class="mt-4 d-none d-md-block d-sm-block d-lg-none d-xl-none d-xxl-none">${firstName.charAt(0)}</span> 
						<span style="font-size: 2.5em;" class="mt-4 d-none d-md-block d-sm-block d-lg-none d-xl-none d-xxl-none">${lastName.charAt(0)}</span>
						
						<span style="font-size: 3em;" class="mt-4 d-block d-sm-none d-md-none d-lg-none d-xl-none d-xxl-none">${firstName.charAt(0)}</span> 
						<span style="font-size: 3em;" class="mt-4 d-block d-sm-none d-md-none d-lg-none d-xl-none d-xxl-none">${lastName.charAt(0)}</span>
					</div>
				</div>
				
				<div class="col-9 d-none d-lg-block d-xl-block d-xxl-block pb-3 pe-3 pt-3">
					<h1>Welcome to ABC Cars Portal</h1>
					<h1>${firstName} ${lastName}</h1>
					<p class="font-weight-bold"
						style="margin-bottom: 0px; font-weight: bolder;">Sell Your Car
						Today!</p>
					<span class="border border-white"> <!-- Button trigger modal -->
						<button type="button" class="btn border px-5 mt-2" data-bs-toggle="modal"
							data-bs-target="#exampleModal" style="font-color: white;">
							Sell Now</button>
					</span>
				</div>
				
				<div class="d-flex justify-content-center pb-3 pe-3 pt-3">
					<div class="col-9 d-block d-md-block d-sm-block d-lg-none d-xl-none d-xxl-none text-center">
						<h1>Welcome to ABC Cars Portal</h1>
						<h1>${firstName} ${lastName}</h1>
						<p class="font-weight-bold"
							style="margin-bottom: 0px; font-weight: bolder;">Sell Your Car
							Today!</p>
						<span class="border border-white"> <!-- Button trigger modal -->
							<button type="button" class="btn border px-5 mt-2" data-bs-toggle="modal"
								data-bs-target="#exampleModal" style="font-color: white;">
								Sell Now</button>
						</span>
					</div>
				</div>
				
					<!-- Modal -->

					<div class="modal fade" id="exampleModal" tabindex="-1"
						aria-labelledby="exampleModalLabel" aria-hidden="true"
						role="dialog">
						<div class="modal-dialog">
							<div class="modal-content">

								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabel">Sell Your
										Car Today!</h5>
									<button type="button" class="btn-close" data-bs-dismiss="modal"
										aria-label="Close"></button>
								</div>
								<div class="modal-body">
									<c:if test="${success_post != null}">
										<div class="alert alert-success">${success_post}</div>
									</c:if>

									<!-- Car Post Form -->
									<sf:form action="car_post" method="post" class="was-validated"
										modelAttribute="car" enctype="multipart/form-data">
										<div class="mb-3 mt-3">
											<label for="name" class="d-flex form-label">Name:</label>
											<sf:input type="text" class="form-control"
												placeholder="Enter car name" name="name" path="name"
												required="true" />
											<div class="valid-feedback">Valid.</div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
										</div>
										<div class="mb-3">
											<label for="model" class="d-flex form-label">Model:</label>
											<sf:input type="text" class="form-control"
												placeholder="Enter model" name="model" path="model"
												required="true" />
											<div class="valid-feedback">Valid.</div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
										</div>
										<div class="mb-3">
											<label for="price" class="d-flex form-label">Price
												(RM):</label>
											<sf:input type="text" class="form-control" id="price"
												placeholder="Enter car price" name="price" path="price"
												required="true" />
											<div class="valid-feedback">Valid.</div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
										</div>
										<div class="mb-3">
											<label for="make" class="d-flex form-label">Make
												Year:</label>
											<sf:input type="text" class="form-control"
												placeholder="Enter make year" name="make" path="make"
												required="true" />
											<div class="valid-feedback">Valid.</div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
										</div>
										<div class="mb-3">
											<label for="registeration" class="d-flex form-label">Registration
												Date:</label>
											<sf:input type="text" class="form-control" id="registeration"
												placeholder="Enter registeration date" name="registeration"
												path="registeration" required="true" />
											<div class="valid-feedback">Valid.</div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
										</div>
										<div class="mb-3">
											<label class="d-flex form-label">Photo:</label> <input
												type="file" class="form-control" name="fileImage" id="photo"
												accept="image/png, image/jpeg" required="true" />
											<div class="valid-feedback">Valid.</div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
										</div>

										<div class="holder"
											style="height: 300px; width: 300px; margin: auto;">
											<img id="imgPreview" src="#" alt="image preview"
												style="width: inherit;" />
										</div>

										<button type="submit" class="btn btn-primary d-flex">Post</button>
									</sf:form>
									<script>
						            $(document).ready(() => {
						            	
						                $("#photo").change(function () {
						                    const file = this.files[0];
						                    if (file) {
						                        let reader = new FileReader();
						                        reader.onload = function (event) {
						                            $("#imgPreview")
						                              .attr("src", event.target.result);
						                        };
						                        reader.readAsDataURL(file);
						                    }
						                });
						            });
						        </script>
									<!-- Car Post Form -->
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary"
										data-bs-dismiss="modal">Close</button>

								</div>
							</div>
						</div>

					</div>
			</div>
		</sec:authorize>
		<!-- post car link-->


		<!-- list of all cars posted -->
		<div class="row mb-5" style="gap: 60px;">
			<c:forEach items="${cars}" var="c">
				<c:set var="id" value="${c.id}"></c:set>
				<c:if test="${success_post == null}">

					<c:if test="${c.status != 'sold'}">
						<div class="card" style="width: 400px">
							<img class="card-img-top" src="${c.photoImagePath}"
								alt="${c.photos}" style="width: 100%">
								
							<div class="card-body">
								<h4 class="card-title">${c.name}</h4>
								<p class="card-text mb-1">
									<i class="fas fa-tags"></i>&nbsp;PHP ${c.price}
								</p>
								<c:forEach items="${seller}" var="s">
									<c:if test="${c.getSellerId() eq s.getId()}">
										<i class="bi bi-person-fill"></i>
										<span>${s.firstName} ${s.lastName}</span><br>
									</c:if>
								</c:forEach>
								<div class="d-grid">
									<a href="/car_detail?cid=${c.id}" class="btn btn-dark mt-3">View
									Car Details</a>
								</div>
							</div>
						</div>
					</c:if>

				</c:if>
			</c:forEach>
			<c:if test="${success_post != null}">
				<div class="alert alert-success">${success_post}
					Click here to <a href="/car_detail?cid=${id}">View</a> your car
					post
				</div>
			</c:if>
		</div>
		<!-- list of all cars posted -->
	</div>



	<%@ include file="footer.jsp"%>
</body>
</html>