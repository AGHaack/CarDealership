<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page import="com.objs.Customer" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sales Report</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>
<a href="profile.jsp">Go Back</a>
<h1>Tracy Chapman's Fast Car Sales Report</h1>
<div class="table-responsive">
  <table class="table">
    <thead>
      <tr>
        <td>Date of Sale</td>
        <td>Sales Rep</td>
        <td>VIN Sold</td>
        <td>New/Used</td>
        <td>Make</td>
        <td>Model</td>
        <td>Year</td>
        <td>Selling Price</td>
        <td>Customer Name</td>
        <td>Customer Email</td>
        <td>Customer Phone</td>
      </tr>
    </thead>
    <c:forEach var="customer" items="${customers}">
    <% Customer customer = (Customer) session.getAttribute("customer"); %>
      <tr>
        <td>${customer.dateOfSale}</td>
        <td>${customer.salesRep}</td>
        <td>${customer.vinSold}</td>
        <td>
          <c:if test="${customer.preOwned = true}">Used</c:if>
          <c:if test="${customer.preOwned = false}">New</c:if>
        </td>
        <td>${customer.makeSold}</td>
        <td>${customer.modelSold}</td>
        <td>${customer.yearSold}</td>
        <td><strong>$</strong>${customer.salePrice}</td>
        <td>${customer.firstName} ${customer.lastName}</td>
        <td>${customer.email}</td>
        <td>${customer.phoneNum}</td>
      </tr>
    </c:forEach>
  </table>
</div>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>