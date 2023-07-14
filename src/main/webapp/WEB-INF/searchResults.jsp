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



</head>

<body>

	<%@ include file="header.jsp"%>

	
<nav class="shadow-sm">
	<div class="container">
		<div class="row text-center py-3">
			<ul style="list-style-type: none" class="d-flex justify-content-evenly gap-1 mb-0">
	    	  	<li class="col d-grid">
	    	  		<a class="btn btn-dark tab" id="brandButton" data-id="brandFeed">Brand</a>
	    	  	</li>
	    	  	<li class="col d-grid">
	    	  		<a class="btn btn-light tab" id="modelButton" data-id="modelFeed">Model</a>
	    	  	</li>
	    	  	<li class="col d-grid">
	    	  		<a class="btn btn-light tab" id="priceButton" data-id="priceFeed">Price</a>
	    	  	</li>
	    	  	<li class="col d-grid">
	    	  		<a class="btn btn-light tab" id="makeButton" data-id="makeFeed">Make</a>
	    	  	</li>
	    	  	<li class="col d-grid">
	    	  		<a class="btn btn-light tab" id="sellerButton" data-id="sellerFeed">Seller</a>
	    	  	</li>
	    	  	<li class="col d-grid">
	    	  		<a class="btn btn-light tab" id="nameButton" data-id="nameFeed">User</a>
	    	  	</li>
	    	  	<li class="col d-grid">
	    	  		<a class="btn btn-light tab" id="firstNameButton" data-id="firstNameFeed">First Name</a>
	    	  	</li>
	    	  	<li class="col d-grid">
	    	  		<a class="btn btn-light tab" id="lastNameButton" data-id="lastNameFeed">Last Name</a>
	    	  	</li>
	    	</ul>
		</div>
	</div>
</nav>

<div>
  <img src="images/cover.png" alt="CAR" style="width:100%;">
  
  <div class="d-inline d-none d-lg-block d-xl-block d-xxl-block" style="position:absolute;top:43%;left:5%">
  	<a style="font-family: 'Playfair Display', serif; font-size: 3rem;">FIND THE CAR OF YOUR DREAM</a>
  	<br>
  	<p style="font-size: 1.3rem;'">Experience hassle-free car shopping with ABC Cars Portal<br>and find the car of your dreams today!</p>
  </div>

  <div class="d-inline d-none d-md-block d-sm-block d-lg-none d-xl-none d-xxl-none" style="position:absolute;top:32%;left:5%">
  	<a style="font-family: 'Playfair Display', serif; font-size: 2rem;">FIND THE CAR OF YOUR DREAM</a>
  	<br>
  	<p style="font-size: 1rem;">Experience hassle-free car shopping with ABC Cars Portal<br>and find the car of your dreams today!</p>
  </div>
  
  <div class="d-inline d-block d-sm-none d-md-none d-lg-none d-xl-none d-xxl-none" style="position:absolute;top:32%;left:5%">
  	<a style="font-family: 'Playfair Display', serif; font-size: 1rem;">FIND THE CAR OF YOUR DREAM</a>
  	<br>
  	<p style="font-size: 0.7rem;">Experience hassle-free car shopping with ABC Cars Portal<br>and find the car of your dreams today!</p>
  </div>
</div>


<div class="container">
	<div class="tab-content">
		<div class="border p-5 my-5 tab-pane active" id="brandFeed">
			<h3 class="mb-4">Brand</h3>
			<c:if test="${empty brandResult}">
				<div class="alert alert-danger">No search results found for ${keyword}</div>
	
			</c:if>
			<!-- list of all cars posted -->
			<div class="row" style="gap: 11px;">
	
				<c:forEach items="${brandResult}" var="c">
	
					<div class="card" style="width: 400px">
						<img class="card-img-top" src="${c.photoImagePath}"
							alt="${c.photos}" style="width: 100%">
						<div class="card-body">
							<h4 class="card-title">${c.name}</h4>
							<p class="card-text mb-1">
								<i class="fas fa-tags"></i>&nbsp;PHP ${c.price}
							</p>
							<c:forEach items="${seller}" var="s">
								<c:if test="${c.sellerId eq s.getId()}">
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
				</c:forEach>
			</div>
		</div>


		<div class="border p-5 my-5 tab-pane" id="modelFeed">
			<h3 class="mb-4">Model</h3>
			<c:if test="${empty modelResult}">
				<div class="alert alert-danger">No search results found for
				${keyword}</div>
	
			</c:if>
			<!-- list of all cars posted -->
			<div class="row" style="gap: 11px;">
	
				<c:forEach items="${modelResult}" var="c">
	
					<div class="card" style="width: 400px">
						<img class="card-img-top" src="${c.photoImagePath}"
							alt="${c.photos}" style="width: 100%">
						<div class="card-body">
							<h4 class="card-title">${c.name}</h4>
							<p class="card-text mb-1">
								<i class="fas fa-tags"></i>&nbsp;PHP ${c.price}
							</p>
							<c:forEach items="${seller}" var="s">
								<c:if test="${c.sellerId eq s.getId()}">
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
				</c:forEach>
			</div>
		</div>


		<div class="border p-5 my-5 tab-pane" id="priceFeed">
			<h3 class="mb-4">Price</h3>
			<c:if test="${empty priceResult}">
				<div class="alert alert-danger">No search results found for
				${keyword}</div>
	
			</c:if>
			<!-- list of all cars posted -->
			<div class="row" style="gap: 11px;">
	
				<c:forEach items="${priceResult}" var="c">
	
					<div class="card" style="width: 400px">
						<img class="card-img-top" src="${c.photoImagePath}"
							alt="${c.photos}" style="width: 100%">
						<div class="card-body">
							<h4 class="card-title">${c.name}</h4>
							<p class="card-text mb-1">
								<i class="fas fa-tags"></i>&nbsp;PHP ${c.price}
							</p>
							<c:forEach items="${seller}" var="s">
								<c:if test="${c.sellerId eq s.getId()}">
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
				</c:forEach>
			</div>
		</div>


		<div class="border p-5 my-5 tab-pane" id="makeFeed">
			<h3 class="mb-4">Make</h3>
			<c:if test="${empty makeResult}">
				<div class="alert alert-danger">No search results found for
				${keyword}</div>
	
			</c:if>
			<!-- list of all cars posted -->
			<div class="row" style="gap: 11px;">
	
				<c:forEach items="${makeResult}" var="c">
	
					<div class="card" style="width: 400px">
						<img class="card-img-top" src="${c.photoImagePath}"
							alt="${c.photos}" style="width: 100%">
						<div class="card-body">
							<h4 class="card-title">${c.name}</h4>
							<p class="card-text mb-1">
								<i class="fas fa-tags"></i>&nbsp;PHP ${c.price}
							</p>
							<c:forEach items="${seller}" var="s">
								<c:if test="${c.sellerId eq s.getId()}">
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
				</c:forEach>
			</div>
		</div>


		<div class="border p-5 my-5 tab-pane" id="sellerFeed">
			<h3 class="mb-4">Seller</h3>
			<c:if test="${empty sellerResult}">
				<div class="alert alert-danger">No search results found for
				${keyword}</div>
	
			</c:if>
			<!-- list of all cars posted -->
			<div class="row" style="gap: 11px;">
	
				<c:forEach items="${sellerResult}" var="c">
	
					<div class="card" style="width: 400px">
						<img class="card-img-top" src="${c.photoImagePath}"
							alt="${c.photos}" style="width: 100%">
						<div class="card-body">
							<h4 class="card-title">${c.name}</h4>
							<p class="card-text mb-1">
								<i class="fas fa-tags"></i>&nbsp;PHP ${c.price}
							</p>
							<c:forEach items="${seller}" var="s">
								<c:if test="${c.sellerId eq s.getId()}">
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
				</c:forEach>
			</div>
		</div>


		<div class="border p-5 my-5 tab-pane" id="nameFeed">
			<h3 class="mb-4">User</h3>
			<c:if test="${empty nameResult}">
				<div class="alert alert-danger">No search results found for
				${keyword}</div>
	
			</c:if>
			
			<c:forEach var="n" items="${nameResult}">
		       <div class="row d-flex align-items-center px-5">
		       			<div style="height: 100px; width: 100px;"
							class="rounded-circle bg-dark mx-auto col-2">
							<div class="h-100 fs-1 text-white d-flex justify-content-center"
								style="width: 100px;position:relative;right:12px">
								<span style="font-size: 1em;" class="my-auto">${n.getFirstName().charAt(0)}</span> 
								<span style="font-size: 1em;" class="my-auto">${n.getLastName().charAt(0)}</span>
							</div>
						</div>
		           <div class="col-8">
			           
			           <div>
			           		<h4>${n.getFirstName()} ${n.getLastName()}</h4>
			           		<p>${n.getEmail()}</p>
			           </div>
		           </div>
		           <form action="result" method="post" class="ms-auto col-2">
		           		<input type="hidden" name="uId" value="${n.getId()}">
			           	<button type="submit" class="btn btn-outline-dark ms-auto">View Profile</button>
				   </form>
				 <hr class="mt-3">
		       </div>
	     	</c:forEach>
		</div>


		<div class="border p-5 my-5 tab-pane" id="firstNameFeed">
			<h3 class="mb-4">First Name</h3>
			<c:if test="${empty firstNameResult}">
				<div class="alert alert-danger">No search results found for
				${keyword}</div>
	
			</c:if> 
			<c:forEach var="n" items="${firstNameResult}">
		       <div class="row d-flex align-items-center px-5">
		       			<div style="height: 100px; width: 100px;"
							class="rounded-circle bg-dark mx-auto col-2">
							<div class="h-100 fs-1 text-white d-flex justify-content-center"
								style="width: 100px;position:relative;right:12px">
								<span style="font-size: 1em;" class="my-auto">${n.getFirstName().charAt(0)}</span> 
								<span style="font-size: 1em;" class="my-auto">${n.getLastName().charAt(0)}</span>
							</div>
						</div>
		           <div class="col-8">
			           
			           <div>
			           		<h4>${n.getFirstName()} ${n.getLastName()}</h4>
			           		<p>${n.getEmail()}</p>
			           </div>
		           </div>
		           <form action="result" method="post" class="ms-auto col-2">
		           		<input type="hidden" name="uId" value="${n.getId()}">
			           	<button type="submit" class="btn btn-outline-dark ms-auto">View Profile</button>
				   </form>
				 <hr class="mt-3">
		       </div>
	     	</c:forEach>
		</div>


		<div class="border p-5 my-5 tab-pane" id="lastNameFeed">
			<h3 class="mb-4">Last Name</h3>
			<c:if test="${empty lastNameResult}">
				<div class="alert alert-danger">No search results found for
				${keyword}</div>
	
			</c:if>
			<!-- list of all cars posted -->
			<c:forEach var="n" items="${lastNameResult}">
		       <div class="row d-flex align-items-center px-5">
		       			<div style="height: 100px; width: 100px;"
							class="rounded-circle bg-dark mx-auto col-2">
							<div class="h-100 fs-1 text-white d-flex justify-content-center"
								style="width: 100px;position:relative;right:12px">
								<span style="font-size: 1em;" class="my-auto">${n.getFirstName().charAt(0)}</span> 
								<span style="font-size: 1em;" class="my-auto">${n.getLastName().charAt(0)}</span>
							</div>
						</div>
		           <div class="col-8">
			           
			           <div>
			           		<h4>${n.getFirstName()} ${n.getLastName()}</h4>
			           		<p>${n.getEmail()}</p>
			           </div>
		           </div>
		           <form action="result" method="post" class="ms-auto col-2">
		           		<input type="hidden" name="uId" value="${n.getId()}">
			           	<button type="submit" class="btn btn-outline-dark ms-auto">View Profile</button>
				   </form>
				 <hr class="mt-3">
		       </div>
	     	</c:forEach>
		</div>
		<!-- list of all cars posted -->
	</div>
</div>


	<%@ include file="footer.jsp"%>
</body>
<script>
const tabs = document.querySelectorAll(".tab");
tabs.forEach(function(tab) {
  tab.addEventListener("click", function() {
    const categoryId = this.getAttribute("data-id");
    const allTabs = document.querySelectorAll(".tab");
    const allTabPanes = document.querySelectorAll(".tab-pane");
    
    allTabs.forEach(function(tab) {
      tab.classList.remove("btn-dark");
      tab.classList.add("btn-light");
    });
    
    allTabPanes.forEach(function(tabPane) {
      tabPane.classList.remove("active");
    });
    
    this.classList.add("btn-dark");
    this.classList.remove("btn-light");
    document.querySelector("#" + categoryId).classList.add("active");
  });
});
</script>
</html>