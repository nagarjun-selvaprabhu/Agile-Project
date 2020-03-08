<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en-Us">

<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="./style.css">

	<title><spring:message code="update.forgotUsername" /></title>
	<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans:400,300'>

</head>

<body id="loginBody">

	<h1><strong><spring:message code="header.title" /></strong></h1><br>

	<div id="mainBody">


		<h2><spring:message code="secretQ.titleUsername" /></h2><br>

		<form action="javascript:void(0);" method="get">

			<fieldset>

				<table>
					<tr>
						<p>
							<td><spring:message code="secretQ.one" /></td>
							<td><input type="password" required placeholder="answer for Q1">
						</p>
						</td>
					</tr>

					<tr>
						<p>
							<td><spring:message code="secretQ.two" /></td>
							<td><input type="password" required placeholder="answer for Q2">
						</p>
						</td>
					</tr>

					<tr>
						<p>
							<td><spring:message code="secretQ.three" /></td>
							<td><input type="password" required placeholder="answer for Q3">
						</p>
						</td>
					</tr>
				</table>
				<br>
				<p><input type="submit" value="Get Username"></p>

			</fieldset>

		</form>

	</div>

</body>

</html>