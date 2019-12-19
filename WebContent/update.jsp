<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update a Car in Inventory</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>
<a href="profile.jsp">Go back</a>
<h3>Enter the info you'd like updated:</h3>
<form action="UpdateServlet" method="post">
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="vinNum">VIN to Update</label>
      <input type="text" class="form-control" id="vinNum" placeholder="vinNum" name="vinNum">
    </div>
    <div class="form-group col-md-6">
      <label for="newPic">Updated Picture</label>
      <input type="text" class="form-control" id="newPic" placeholder="newPic" name="newPic">
    </div>
   </div>
   <div class="form-group">
    <label for="newDescription">Car Description</label>
    <textarea class="form-control" id="newDescription" rows="3" name="newDescription"></textarea>
  </div>
  <button class="btn btn-primary" type="submit">Submit</button>
</form>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>