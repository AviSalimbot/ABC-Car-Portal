<!-- Navbar -->
<div class="my-0 sticky-top" style="margin-bottom: 0px;">
	<nav class="navbar navbar-expand-lg navbar bg-dark pe-3">
		<div class="container-fluid">
			<a href="cars" class="navbar-brand col-1 text-center" data-toggle="tooltip"
				data-placement="top" title="Home" > 
				<img class="d-inline d-none d-lg-block d-xl-block d-xxl-block" width="90%" src="images/CarIcon.png">
				<img class="d-inline d-none d-md-block d-sm-block d-lg-none d-xl-none d-xxl-none" width="180%" src="images/CarIcon.png">
				<img class="d-inline d-block d-sm-none d-md-none d-lg-none d-xl-none d-xxl-none" width="300%" src="images/CarIcon.png">
			</a>
			<div class="vr d-none d-lg-block d-xl-block d-xxl-block me-5" style="color:white;"></div>
			
			<button type="button" class="navbar-toggler"
				data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
				<i class="bi bi-list text-white"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarCollapse">
			
				<sec:authorize access="!isAuthenticated()">
					<div class="navbar-nav">
						<a href="about_us" class="nav-item nav-link text-white">About Us</a> 
						<a href="contact_us" class="nav-item nav-link text-white">Contact Us</a>
					</div>
					<div class="navbar-nav ms-auto">
						<a href="register_user" class="nav-item nav-link text-white">Register</a> 
						<a href="login" class="nav-item nav-link text-white">Login</a>
					</div>
				</sec:authorize>


				<sec:authorize access="isAuthenticated()">

					<sec:authorize access="hasAnyRole('Administrator','Users')">

						<div class="navbar-nav col-lg-4 p-2">
							<sf:form action="search" method="get" style="width: 100%;">
								<div class="input-group">
									<input type="search" class="form-control rounded"
										placeholder="Search" aria-label="Search" name="keyword"
										aria-describedby="search-addon" />
									<button type="submit" class="btn btn-outline-light">search</button>
								</div>
							</sf:form>
						</div>

						<!-- /logout must be a POST request, as csrf is enabled.
			        This ensures that log out requires a CSRF token and that a malicious user cannot forcibly log out your users.-->
						<div class="navbar-nav ms-auto">

							<sec:authorize access="hasRole('Users')">
								<div class="navbar-nav">
									<a class="nav-item nav-link p-3 text-white" href="cars">Home</a>
								</div>
		
							</sec:authorize>
		
							<sec:authorize access="hasRole('Administrator')">
								<div class="navbar-nav">
									<a class="nav-item nav-link p-3 text-white" href="all_cars">Car Management</a> 
									<a class="nav-item nav-link p-3 text-white" href="users">User Management</a>
									<a class="nav-item nav-link p-3 text-white" href="cars">Home</a> 
								</div>
		
							</sec:authorize>

							<a class="nav-item nav-link p-3 text-white" href="profile">Profile</a>

							<form action="logout" method="post" style="padding: 7px;">
								<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}" /> <input type="submit" name="Logout"
									value="Logout" class="btn btn-light"></input>
							</form>
						</div>
					</sec:authorize>
				</sec:authorize>
			</div>
		</div>
	</nav>
</div>
