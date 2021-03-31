<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link  href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-3.5.1.js" ></script>
<script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script >
$(document).ready(function() {
    $('#contact_Table').DataTable({
        "pagingType": "full_numbers"
    });
});

	function deleteConform(){
		return confirm ("Are u want to delete");
		}
</script>
</head>
<body >
	<h3>View of Contact Details</h3>
	<h2> <a href="addContact">AddContact</a></h2>
<table border="1" id="#contact_Table">
	<thead>
		<tr>
			<th>S.NO </th>
			<th>NAME</th>
			<th>EMAIL</th>
			<th>Phone Number</th>
			<th>Action </th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${contacts}"
				var="c"  
				varStatus="index">
			<tr>
				<td>${c.contactId}</td>
				<td>${c.contactName}</td>
				<td>${c.contactEmail}</td>
				<td>${c.contactNumber}</td>
				<td>
					<a href="editContract?cid=${c.contactId }">edit</a>
					<a href="deleteContact?cid=${c.contactId }" onclick="deleteConform()">Delete</a>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</body>
</html>