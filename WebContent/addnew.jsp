<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<title>Add Inventory</title>
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
<h3>Enter the New Car's Info</h3>
<form action="AddNewServlet" method="post">
  <p><strong>New or Used:</strong></p>
  <div class="btn-group btn-group-toggle" data-toggle="buttons">
    <label class="btn btn-secondary">
      <input type="radio" name="preOwned" id="used" value="used">Pre-Owned
    </label>
    <label class="btn btn-secondary">
      <input type="radio" name="preOwned" id="new" value="new">New Car
    </label>
  </div>
  <div class="form-group">
    <label for="vinNum">VIN Number</label>
    <input type="text" class="form-control" id="vinNum" placeholder="VIN Number" name="vinNum">
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="make">Make</label>
      <input type="text" class="form-control" id="make" placeholder="Make" name="make">
    </div>
    <div class="form-group col-md-6">
      <label for="model">Model</label>
      <input type="text" class="form-control" id="model" placeholder="Model" name="model">
    </div>
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="year">Year</label>
      <input type="text" class="form-control" id="year" placeholder="Year" name="year">
    </div>
    <div class="form-group col-md-6">
      <label for="color">Color</label>
      <input type="text" class="form-control" id="color" placeholder="Color" name="color">
    </div>
    <div class="form-group col-md-6">
      <label for="price">Price</label>
      <input type="text" class="form-control" id="price" placeholder="Price" name="price">
    </div>
  </div>
  <div class="form-group">
    <label for="description">Car Description</label>
    <textarea class="form-control" id="description" rows="3" name="description"></textarea>
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="mileage">Mileage (if car is pre-owned)</label>
      <input type="text" class="form-control" id="mileage" placeholder="Mileage" name="mileage">
    </div>
    <div class="form-group col-md-6">
      <label for="mainPicFile">"Upload" the car picture</label>
      <input type="text" class="form-control" id="mainPicFile" placeholder="example.jpg" name="mainPicFile">
    </div>
  </div>
  <p>Date Purchased: <input type="text" id="datepicker" name="purchaseDate"></p>
  <button class="btn btn-primary" type="submit">Submit</button>
</form>


<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>