<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body >
<h2>Save Contacts</h2>

	
	
<form:form action="saveContact" modelAttribute="contact" method="POST" align="center">
				<p><font color='green'>${succMsg}</font> </p>
				<p><font color='red'>${errMsg} </font> </p>
	<table>
		<tr>
			<form:hidden path="contactId"/>
			
			<td>Contact Name :</td>
			<td><form:input path="contactName" /> </td>
		</tr>
		<tr>
			<td>Contact Email: </td>
			<td><form:input path="contactEmail" /> </td>
		</tr>
		<tr>
			<td>Contact Number:</td>
			<td><form:input path="contactNumber" /></td>
		</tr>
		<tr>
			<td><input type="reset" value ="Reset" /> </td>
			<td><input type="Submit" value ="Save" /> </td>
		</tr>	
	</table>
</form:form>

	<a href="viewContacts">ViewofContactInformation of Customer</a>
</body>
</html>