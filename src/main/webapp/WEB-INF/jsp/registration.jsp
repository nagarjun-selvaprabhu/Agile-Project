<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
  	<link rel="stylesheet" href="styles.css">
    
	<title>Register</title>
	<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans:400,300'>

</head>

<body>

	<div id="mainBody">

		<h1><strong>CITY CLASSIFIED AND SEARCH</strong></h1><br>
		<h2>New User? <strong>Register here.</strong></h2><br>

		<form:form action="/login" method="post" modelAttribute="user">

			<fieldset>

			<table>
				<tr><p><td>Employee ID: </td><td><form:input type="text" required="required" placeholder="enter employee id" path="id"/></p> </td></tr>

				<tr><p><td>First Name: </td><td><form:input type="text" required="required" placeholder="enter first name" path="firstName"/></p> </td></tr>

				<tr><p><td>Last Name: </td><td><form:input type="text" required="required" placeholder="enter last name" path="lastName"/></p> </td></tr>

				<tr><p><td>E-Mail: </td><td><form:input type="email" required="required" placeholder="enter your mail id" path="email"/></p> </td></tr>

				<tr><p><td>Password: </td><td><form:input type="password" required="required" placeholder="enter your password" path="password"/></p> </td></tr>
			</table>

				<br><p><form:checkbox path="role" /></td><td>Check this for requesting Admin Role</p>
			
			<br><p><input type="submit" value="Register"></p>
			
			</fieldset>

		</form:form>

	</div>

</body>
</html>