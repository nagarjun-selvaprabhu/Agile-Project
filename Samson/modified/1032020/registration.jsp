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

<title><spring:message code="register.title"/></title>
<link rel='stylesheet'
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,300'>
	
<spring:message code="register.empIDPH" var="empIDPH" />
<spring:message code="register.firstNamePH" var="firstNamePH" />
<spring:message code="register.lastNamePH" var="lastNamePH" />
<spring:message code="register.emailPH" var="emailPH" />
<spring:message code="register.passwordPH" var="passwordPH" />
<spring:message code="secretQ.oneAns" var="oneAnsPH" />
<spring:message code="secretQ.twoAns" var="twoAnsPH" />
<spring:message code="secretQ.threeAns" var="threeAnsPH" />

</head>

<body id="regBody">
	<h1>
		<strong><spring:message code="header.title"/></strong>
	</h1>
	<br>

	<div id="mainBody">


		<h2><spring:message code="register.heading"/></h2>
		<br>

		<form:form action="/login" method="post" modelAttribute="user">

			<fieldset>

				<table>
					<tr>
						<p>
						<td><label class="required"><spring:message code="register.empId"/></label></td>
						<td><input type="text" required
							placeholder='${empIDPH}'
							path="id" />
						</p></td>
					</tr>

					<tr>
						<p>
						<td><label class="required"><spring:message code="register.firstName"/></label></td>
						<td><input type="text" required
							placeholder='${firstNamePH}' path="firstName" />
						</p></td>
					</tr>

					<tr>
						<p>
						<td><label class="required"><spring:message code="register.lastName"/></label></td>
						<td><input type="text" required placeholder='${lastNamePH}'
							path="lastName" />
						</p></td>
					</tr>

					<tr>
						<p>
						<td><label class="required"><spring:message code="register.email"/></label></td>
						<td><input type="email" required
							placeholder='${emailPH}' path="email" />
						</p></td>
					</tr>

					<tr>
						<p>
						<td><label class="required"><spring:message code="register.password"/></label></td>
						<td><input type="password" required
							placeholder='${passwordPH}' path="password" />
						</p></td>
					</tr>

					<tr>
						<p>
						<td><label class="required"><spring:message code="secretQ.one"/></label></td>
						<td><input type="password" required
							placeholder='${oneAnsPH}'>
						</p></td>
					</tr>

					<tr>
						<p>
						<td><label class="required"><spring:message code="secretQ.two"/></label></td>
						<td><input type="password" required
							placeholder='${twoAnsPH}'>
						</p></td>
					</tr>

					<tr>
						<p>
						<td><label class="required"><spring:message code="secretQ.three"/></label></td>
						<td><input type="password" required
							placeholder='${threeAnsPH}'>
						</p></td>
					</tr>
				</table>

				<br>
				<p>
					<input type="checkbox">
					</td>
					<td><spring:message code="register.adminCheck"/>
				</p>

				<br>
				<p>
					<input type="submit"
						value=<spring:message code="register.title"/>>
				</p>

			</fieldset>

		</form:form>
		
		<br><label class="required"></label><label><spring:message code="header.requiredField"/></label>

	</div>

</body>
</html>