<!DOCTYPE html>
<%@page import="com.shop.model.Product"%>
<%@page import="java.util.List"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PM</title>
<link href="css/bootstrap.css" rel="stylesheet" />
</head>
<body class="container">
	<hr />
	<h1>PM</h1>
	<hr />
	
	<div class="col-sm-8 col-md-8">
		<div class="card">
			<div class="card-header">Product Form</div>
			<div class="card-body">
				<form action="save" method="post">
					<div class="row">
						<div class="col">
							<input type="text" name="name"
							       class="form-control" 
							       placeholder="name">
						</div>
						<div class="col">
							<input type="number" name="price" 
							       class="form-control" 
							       placeholder="price">
						</div>
						<div class="col">
							<input type="date" name="date"
							       class="form-control" 
							       placeholder="make-date">
						</div>
					</div>
					<hr />
					<div class="row">
						<div class="col">
							<textarea class="form-control" name="description"
							          placeholder="description">
							</textarea>
						</div>
					</div>
					<hr />
					<button class="btn btn-primary">save</button>
				</form>
			</div>
		</div>
	</div>
	<hr/>
	
	<div class="card">
		<div class="card-header">Products List</div>
		<div class="card-body">
			<table class="table table-sm table-bordered">
				<thead>
					<tr>
						<th>Id</th>
						<th>Name</th>
						<th>Price</th>
						<th>Date</th>
						<th></th>
						<th></th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var="product" items="${products}">
					<tr>
						<td>${product.id}</td>
						<td>${product.name}</td>
						<td>&#8377;${product.price}</td>
						<td>${product.date}</td>
						<td><a href="edit?id=${product.id}">edit</a></td>
						<td><a href="delete?id=${product.id}">delete</a></td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<hr/>
	

</body>
</html>