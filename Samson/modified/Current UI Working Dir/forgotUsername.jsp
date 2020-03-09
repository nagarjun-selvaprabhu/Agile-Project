<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en-Us">

<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="styles.css">

	<title><spring:message code="update.forgotUsername" /></title>
	<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans:400,300'>
	
	<spring:message code="secretQ.oneAns" var="q1AnsPH" />
	<spring:message code="secretQ.twoAns" var="q2AnsPH" />
	<spring:message code="secretQ.threeAns" var="q3AnsPH" />
	<spring:message code="reset.getUserName" var="resetPH" />

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
							<td><label class="required"><spring:message code="secretQ.one" /></label></td>
							<td><input type="password" placeholder='${q1AnsPH}'>
						</p>
						</td>
					</tr>

					<tr>
						<p>
							<td><label class="required"><spring:message code="secretQ.two" /></label></td>
							<td><input type="password" placeholder='${q2AnsPH}'>
						</p>
						</td>
					</tr>

					<tr>
						<p>
							<td><label class="required"><spring:message code="secretQ.three" /></label></td>
							<td><input type="password" placeholder='${q3AnsPH}'>
						</p>
						</td>
					</tr>
				</table>
				<br>
				<p><input type="submit" value='${resetPH }'></p>

			</fieldset>

		</form>
		
		<br><label class="required"></label><label><spring:message code="header.requiredField" /></label>

	</div>

</body>

</html>