<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en-Us">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="styles.css">

<title>Login</title>
<link rel='stylesheet'
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,300'>

</head>

<body>

	<div id="mainBody">

		<h1>
			<strong>CITY CLASSIFIED AND SEARCH</strong>
		</h1>
		<br>
		<h2>
			<strong>Welcome.</strong> Please login.
		</h2>
		<br>

		<form:form action="/dashboard" method="post" modelAttribute="login">

			<fieldset>

				<table>
					<tr>
						<p>
						<td>User Name:</td>
						<td><form:input placeholder="enter username" path="userName"/>
						</p></td>
					</tr>

					<tr>
						<p>
						<td>Password:</td>
						<td><form:input
							placeholder="enter password" path="passWord"/>
						</p></td>
					</tr>
				</table>
				<br>
				<p>
					<input type="submit" value="Login">
				</p>

			</fieldset>

		</form:form>

		<p>
			<span class="btn-round">or</span>
		</p>

		<p>
			<a class="register" href="/register" >Register</a>

		</p>

	</div>

</body>
</html>