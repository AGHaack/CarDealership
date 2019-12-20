<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sell A Car</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script>
$(function() {
	$("#datepicker").datepicker();
});
</script>
<style type="text/css">
	.ui-datepicker {
    background: #333;
    border: 1px solid #555;
    color: #EEE;
}
</style>
</head>
<body>
<a href="profile.jsp">Go Back</a>
<h2>${msg}</h2>
<h3>Enter Car and Customer Info</h3>
<form action="SellCarServlet" method="post">
	<select class="form-control form-control-lg" name="salesRep">
 		<option value="Dale Denton">Dale Denton</option>
 		<option value="Michael Bay">Michael Bay</option>
 		<option value="Chris Tucker">Chris Tucker</option>
 		<option value="Emma Watson">Emma Watson</option>
 		<option value="Whitney Houston">Whitney Houston</option>
 		<option value="Fleetwood Mac">Fleetwood Mac</option>
 		<option value="Stevie Nicks">Stevie Nicks</option>
 		<option value="Nikki Sixx">Nikki Sixx</option>
 		<option value="Biggie Smalls">Biggie Smalls</option>
	</select>
	<br>
	<p>Date of Sale: <input type="text" id="datepicker" name="dateOfSale"></p>
	<div class="form-row">
      <div class="form-group col-md-6">
        <label for="vinNum">VIN Number</label>
        <input type="text" class="form-control" id="vinNum" placeholder="vinNum" name="vinNum">
      </div>
      <div class="form-group col-md-6">
        <label for="salePrice">Selling Price</label>
        <input type="text" class="form-control" id="salePrice" placeholder="Selling Price" name="salePrice">
      </div>
    </div>
    <br>
    <div class="form-row">
      <div class="col">
        <input type="text" class="form-control" placeholder="Customer's first name" name="firstName">
      </div>
      <div class="col">
        <input type="text" class="form-control" placeholder="Customer's last name" name="lastName">
      </div>
    </div>
    <br>
    <div class="form-row">
      <div class="col">
        <input type="text" class="form-control" placeholder="Customer's phone Number" name="phoneNum">
      </div>
      <div class="col">
        <input type="text" class="form-control" placeholder="Customer's email" name="email">
      </div>
    </div>
    <br>
    <button type="submit" class="btn btn-primary">Submit</button>
</form>


<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>