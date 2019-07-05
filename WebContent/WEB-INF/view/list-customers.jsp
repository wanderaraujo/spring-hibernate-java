<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>

<head>
	<title>List Custommers</title>
	
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />

</head>

<body>

	<img src="${pageContext.request.contextPath}/resources/img/Heisenberg.jpg" height="42" width="42"> 

	<div id="wrapper">
		<div id="header">
			<h2> CRM - Customer Relationship Manager</h2>
		</div>
	</div>
	
	<!-- add out html table here-->
	<table>
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Email</th>
		</tr>
		
		<!-- loop over and print our customers -->
		
		<c:forEach var="tempCustomer" items="${customers}">
			<tr>
				<td> ${tempCustomer.firstName} </td>
				<td> ${tempCustomer.lastName} </td>
				<td> ${tempCustomer.email} </td>
			</tr>
		</c:forEach>
	</table>

</body>


</html>
