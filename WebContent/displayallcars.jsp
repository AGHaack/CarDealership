<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page import="com.objs.Car" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fast Cars In Stock</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

</head>
<body>
  <nav class="navbar navbar-dark bg-dark">
		<form action="DisplayAllServlet" method="get">
			<button type="submit" class="btn btn-primary btn-lg">Tracy Chapman's Fast Cars</button>
		</form>
  		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    		<span class="navbar-toggler-icon"></span>
  		</button>
  		<div class="collapse navbar-collapse" id="navbarSupportedContent">
    		<ul class="navbar-nav mr-auto">
      			<li class="nav-item active">
        			<a class="nav-link" href="index.jsp">Home</a>
      			</li>
      			<li class="nav-item">
        			<form action="AuctionServlet" method="get">
        				<button type="submit" class="btn btn-link">Bid on Fast Cars</button>
        			</form>
      			</li>
      			<li class="nav-item">
        			<a class="nav-link text-white" href="login.jsp">Employee Login</a>
      			</li>
    		</ul>
    		<form class="form-inline my-2 my-lg-0">
      			<input class="form-control mr-sm-2" type="search" placeholder="Search Fast Cars" aria-label="Search">
      			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    		</form>
  		</div>
	</nav>
	<c:forEach var="car" items="${cars}">
	
	  <figure class="figure">
        <img src="${car.mainPicFile}" class="figure-img img-fluid rounded" alt="Some Vroom-Vroom">
        <figcaption class="figure-caption">
          <c:if test="${not car.inAuction}">
            <h1>Check Out this Fast Car!</h1>
          </c:if>
          <c:if test="${car.preOwned eq true}">
        	<h5>Used</h5>
          </c:if>
          <c:if test="${not car.preOwned}">
        	<h5>New</h5>
          </c:if>
          <c:if test="${car.inAuction eq true}">
          	<h3>In Auction!</h3>
          </c:if>
          <h6>${car.make}</h6>
          <h6>${car.model}</h6>
          <form action="GetCarInfo" method="get">
          	<button type="submit" class="btn btn-outline-dark" name="vin" value="${car.vinNum}">Get More Info</button>
          </form>
        </figcaption>
       </figure>
	 </c:forEach>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>