<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shawl List</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<a href="index.html">Home</a> |
	<a href="addShawl.html">Add Shawl</a> |
	<a href="ListShawlController">Shawl List</a><br><br>
	<h1>Shawl List</h1>
	<table border='1'>
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Brand</th>
			<th>Color</th>
			<th>Price</th>
			<th>Quantity</th>
			<th colspan="3">Action</th>
		</tr>
		<c:forEach items="${shawls}" var="shawl" varStatus="shawls">
		<tr>
        	<td><c:out value="${shawl.id}"/></td>
            <td><c:out value="${shawl.name}"/></td>
            <td><c:out value="${shawl.brand}"/></td>    
            <td><c:out value="${shawl.color}"/></td>   
            <td><fmt:formatNumber value="${shawl.price}" pattern="0.00"/></td>   
            <td><c:out value="${shawl.quantity}"/></td>         
            <td><a class="btn btn-info" href="ViewShawlController?id=<c:out value="${shawl.id}"/>">View</a></td>
            <td><a class="btn btn-primary" href="UpdateShawlController?id=<c:out value="${shawl.id}"/>">Update</a></td>
            <td><button class="btn btn-danger" id="<c:out value="${shawl.id}"/>" onclick="confirmation(this.id)">Delete</button></td>    
        </tr>
        </c:forEach>
	</table>
	<script>
	function confirmation(id){					  		 
		  console.log(id);
		  var r = confirm("Are you sure you want to delete?");
		  if (r == true) {				 		  
			  location.href = 'DeleteShawlController?id=' + id;
			  alert("Shawl successfully deleted");			
		  } else {				  
		      return false;	
		  }
	}
	</script>
</body>
</html>
<!-- Author: FES -->