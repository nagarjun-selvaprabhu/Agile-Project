<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en-Us">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="loginStyles.css">

<title><spring:message code="login.loginBtn"/></title>
<link rel='stylesheet'
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,300'>
<script src="loginScript.js"></script>

</head>

<body id="loginBody">

	<h1>
		<strong><spring:message code="header.title"/></strong>
	</h1>
	<br>

	<div id="mainBody">


		<h2>
			<strong><spring:message code="login.welcome"/></strong>
			<spring:message code="login.pleaseLog"/>
		</h2>
		<br>

		<form:form action="/dashboard" onsubmit="return validate()"
			method="post" modelAttribute="login">

			<fieldset>

				<table>
					<tr>
						<p>
						<td><spring:message code="login.userIDLabel"/></td>
						<td><spring:message code="login.userIDPH" var="empIDPH" />
						<form:input
								placeholder='${empIDPH}'
								path="userName" />
							</p></td>
					</tr>

					<tr>
						<p>
						<td><spring:message code="login.passLabel"/></td>
						<td><spring:message code="login.passPH" var="passPH" />
						<form:input
								placeholder='${passPH}'
								path="passWord" />
							</p></td>
					</tr>
				</table>
				<br>
				<span id="aAlign"><a href=""><spring:message code="login.forgotUID"/></a></span><a
					href=""><spring:message code="login.forgotPass"/></a><br>
				<br>
				<p>
					<input type="submit" value=<spring:message code="login.loginBtn"/>>
				</p>

				<br>
				<spring:message code="login.newUser"/><a href="/register"><spring:message code="login.regHere"/></a>

			</fieldset>

		</form:form>

	</div>

</body>
</html>