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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


<!--  Access the Static Resources without using spring URL -->
<link href="/css/style.css" rel="stylesheet" />
<script src="/js/script.js"></script>

</head>

<body>

	<%@ include file="header.jsp"%>

	<section>

<img src="images/covertwo.png" alt="CAR" style="width:100%;">

	<div class="container my-5 py-5">
		<h1 class="mb-5">User Management</h1>

		<div class="row">
			<div class="col-12">
				<table class="table table table-striped">
					<thead>
						<tr>
							<th scope="col">No.</th>
							<th scope="col">Name</th>
							<th scope="col">Username</th>
							<th scope="col">Email</th>
							<th scope="col">Role</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${user}" var="u" varStatus="status">
							<tr>
								<th scope="row">${status.count}</th>
								<td>${u.firstName}</td>
								<td>${u.userName}</td>
								<td>${u.email}</td>
								<c:forEach items="${u.roles}" var="r">
									<td>${r.name}<!-- Button trigger modal -->
										<button type="button" class="btn" data-bs-toggle="modal"
											data-bs-target="#exampleModal1${status.index}">
											<i class="fas fa-edit fa-sm"></i>
										</button> <!-- Modal -->

										<div class="modal fade" id="exampleModal1${status.index}"
											tabindex="-1" aria-labelledby="exampleModalLabel"
											aria-hidden="true" role="dialog">
											<div class="modal-dialog">
												<div class="modal-content">
													<div class="modal-header">
														<h5 class="modal-title" id="exampleModal1Label">Assign as Admin</h5>
														<button type="button" class="btn-close"
															data-bs-dismiss="modal" aria-label="Close"></button>
													</div>
													<div class="modal-body">

														<!-- Assign Admin Form -->
														<sf:form action="/assign_role?uid=${u.id}" method="post"
															class="was-validated" modelAttribute="user">
															<div class="mb-3 mt-3">
																<label for="name" class="form-label">Role:</label> <input
																	type="text" class="form-control"
																	placeholder="Enter role" name="name" value="${r.name}"
																	required="true" />
																<div class="valid-feedback">Valid.</div>
																<div class="invalid-feedback">Please fill out this
																	field.</div>
															</div>
															
															<button type="submit" class="btn btn-primary">Assign</button>
														</sf:form>
													</div>
												</div>
											</div>
										</div>
									</td>
								</c:forEach>


								<td><a type="button" class="btn btn-primary"
									href="/view?uid=${u.id}"> <i class="far fa-eye"></i>
								</a> <!-- Button trigger modal -->
									<button type="button" class="btn btn-success"
										data-bs-toggle="modal"
										data-bs-target="#exampleModal${status.index}">
										<i class="fas fa-edit"></i>
									</button> <!-- Modal -->

									<div class="modal fade" id="exampleModal${status.index}"
										tabindex="-1" aria-labelledby="exampleModalLabel"
										aria-hidden="true" role="dialog">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title" id="exampleModalLabel">Edit
														User</h5>
													<button type="button" class="btn-close"
														data-bs-dismiss="modal" aria-label="Close"></button>
												</div>
												<div class="modal-body">

													<!-- User Update Form -->
													<sf:form action="/edit?uid=${u.id}" method="post"
														class="was-validated" modelAttribute="user">
														<div class="mb-3 mt-3">
															<label for="firstName" class="form-label">First Name:</label> <input
																type="text" class="form-control"
																placeholder="Enter name" name="firstName" value="${u.firstName}"
																required="true" />
															<div class="valid-feedback">Valid.</div>
															<div class="invalid-feedback">Please fill out this
																field.</div>
														</div>
														<div class="mb-3">
															<label for="userName" class="form-label">Username:</label>
															<input type="text" class="form-control" id="userName"
																placeholder="Enter username" name="userName"
																value="${u.userName}" required="true" />
															<div class="valid-feedback">Valid.</div>
															<div class="invalid-feedback">Please fill out this
																field.</div>
														</div>
														
														<div class="mb-3">
															<label for="email" class="form-label">Email:</label> <input
																type="email" class="form-control"
																placeholder="Enter username" name="email"
																value="${u.email}" required="true" />
															<div class="valid-feedback">Valid.</div>
															<div class="invalid-feedback">Please fill out this
																field.</div>
														</div>
														<div class="mb-3">
															<label for="mobile" class="form-label">Mobile:</label> <input
																type="text" class="form-control" id="mobile"
																placeholder="Enter mobile" name="mobile"
																value="${u.mobile}" required="true" />
															<div class="valid-feedback">Valid.</div>
															<div class="invalid-feedback">Please fill out this
																field.</div>
														</div>
														<div class="mb-3">
															<label for="address" class="form-label">Address:</label>
															<input type="text" class="form-control" id="address"
																placeholder="Enter address" name="address"
																value="${u.address}" required="true" />
															<div class="valid-feedback">Valid.</div>
															<div class="invalid-feedback">Please fill out this
																field.</div>
														</div>

														<button type="submit" class="btn btn-primary">Edit</button>
													</sf:form>
													<!-- User Update Form -->
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-secondary"
														data-bs-dismiss="modal">Close</button>

												</div>
											</div>
										</div>

									</div> <a type="button" class="btn btn-danger"
									href="/delete?uid=${u.id}"> <i class="far fa-trash-alt"></i>
								</a></td>
							</tr>

						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>


	</div>
	</section>


	<%@ include file="footer.jsp"%>
</body>
</html>