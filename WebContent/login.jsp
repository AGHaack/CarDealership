<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<title>Employee Login</title>
</head>
<body>
	<nav class="navbar navbar-dark bg-dark">
		<a class="navbar-brand text-white" href="#">Tracy Chapman's "Fast Cars"</a>
  		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    		<span class="navbar-toggler-icon"></span>
  		</button>
  		<div class="collapse navbar-collapse" id="navbarSupportedContent">
    		<ul class="navbar-nav mr-auto">
      			<li class="nav-item active">
        			<a class="nav-link" href="index.jsp">Home</a>
      			</li>
      			<li class="nav-item">
        			<a class="nav-link text-white" href="#">Bid on Fast Cars</a>
      			</li>
      			<li class="nav-item">
        			<a class="nav-link text-white" href="login.jsp">Employee Login <span class="sr-only">(current)</span></a>
      			</li>
    		</ul>
    		<form class="form-inline my-2 my-lg-0">
      			<input class="form-control mr-sm-2" type="search" placeholder="Search Fast Cars" aria-label="Search">
      			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    		</form>
  		</div>
	</nav>
	<h1>${msg}</h1>
	<form action="loginServlet" method="post">
  		<div class="form-group">
    		<label for="email">Email address</label>
    		<input type="email" class="form-control" id="email" name="email" aria-describedby="emailHelp">
    		<small id="emailHelp" class="form-text text-muted">HINT: admin@admin.com & password</small>
  		</div>
  		<div class="form-group">
    		<label for="pass">Password</label>
    		<input type="password" class="form-control" id="pass" name="pass">
  		</div>
		<button type="submit" class="btn btn-primary">Submit</button>
	</form>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>