<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<title>Admin Home Page</title>
</head>
<body>
<h1>${msg}</h1>
<a href="sellacar.jsp" class="btn btn-primary btn-lg btn-block active" type="button" role="button" aria-pressed="true">Sell a Car</a>
<br>
<form action="DisplaySalesReportServlet" method="get">
	<button class="btn btn-primary btn-lg btn-block active" type="submit" role="button" aria-pressed="true">Display Sales Report</button>
</form>
<br>
<a href="addnew.jsp" class="btn btn-primary btn-lg btn-block active" type="button" role="button" aria-pressed="true">Add a Car to Inventory</a>
<br>
<a href="update.jsp" class="btn btn-primary btn-lg btn-block active" type="button" role="button" aria-pressed="true">Update Car in Inventory</a>
<br>
<a href="index.jsp" class="btn btn-primary btn-lg btn-block active" type="button" role="button" aria-pressed="true">Logout</a>


<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>