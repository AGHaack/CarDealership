<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page import="com.objs.Car" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Car Details</title>
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
	<div style="margin-bottom: 20px;">
	<img src="${car.mainPicFile}" alt="All that vroom!" style="width: 700px; height:500px; padding-top: 5px; ">
	<div style="float: right; font-size: 2em; padding-right:75px">
		<h1>Basic Info</h1>
		<table class="table table-bordered">
			<tr class="bg-primary">
				<td><strong>Make</strong></td>
				<td>${car.make}</td>
			</tr>
			<tr class="bg-success">
				<td><strong>Model</strong></td>
				<td>${car.model}</td>
			</tr>
			<tr class="bg-primary">
				<td><strong>Year</strong></td>
				<td>${car.year}</td>
			</tr>
			<tr class="bg-success">
				<td><strong>Color</strong></td>
				<td>${car.color}</td>
			</tr>
			<tr class="bg-primary">
				<td><strong>Price</strong></td>
				<td><strong>$</strong>${car.price}</td>
			</tr>
		</table>
		<c:if test="${car.preOwned eq true}">
        	<h1>Used</h1>
    	</c:if>
    	<c:if test="${not car.preOwned}">
        	<h1>New</h1>
    	</c:if>
    	<c:if test="${car.inAuction eq true}">
    		<h3>In Auction!</h3>
    	</c:if>
	</div>
	</div>
	
	<br>
	<table>
		<tr class="bg=primary">
			<td><h4>Description:</h4></td>
		</tr>
		<tr class="bg-success">
			<td>${car.description}</td>
		</tr>
	</table>
	


<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>