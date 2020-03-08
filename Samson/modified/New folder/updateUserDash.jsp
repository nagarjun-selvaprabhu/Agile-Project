<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="header.jsp"%>

<spring:message code="register.empIDPH" var="empIDPH" />
<spring:message code="register.firstNamePH" var="firstNamePH" />
<spring:message code="register.lastNamePH" var="lastNamePH" />
<spring:message code="register.emailPH" var="emailPH" />
<spring:message code="register.passwordPH" var="passwordPH" />
<spring:message code="secretQ.oneAns" var="oneAnsPH" />
<spring:message code="secretQ.twoAns" var="twoAnsPH" />
<spring:message code="secretQ.threeAns" var="threeAnsPH" />

<div class="navbar">
	<a href="/dashboard"><spring:message code="header.addAd" /></a> <a
		href="/updateUserDash" id="selectedNav"><spring:message
			code="header.updateUser" /></a> <a href="/viewAdDash"><spring:message
			code="header.viewAd" /></a> <a href="/adminFeedback"><spring:message
			code="header.feedback" /></a>
	<div id="logout">
		<a href=""><spring:message code="header.logout" /></a>
	</div>
</div>

<div id="title">
	<p>
		<spring:message code="dash.updateTitle" />
	</p>
</div>
<br>

<div id="mainBody">

	<form method="get" modelAttribute="user" action="/updateUserDash">

		<fieldset>

			<table>
				<tr>
					<td><spring:message code="register.empId" /></td>
					<td><input type="text" placeholder='${empIDPH}'
						value="${userobj.id }" path="id" /></td>
				</tr>

				<tr>
					<td><spring:message code="register.firstName" /></td>
					<td><input type="text" placeholder='${firstNamePH}'
						value="${userobj.firstName }" path="firstName" /></td>
				</tr>

				<tr>
					<td><spring:message code="register.lastName" /></td>
					<td><input type="text" placeholder='${lastNamePH}'
						value="${userobj.lastName }" path="lastName" /></td>
				</tr>

				<tr>
					<td><spring:message code="register.email" /></td>
					<td><input type="email" placeholder='${emailPH}'
						value="${userobj.email }" path="email" /></td>
				</tr>

				<tr>
					<td><spring:message code="register.password" /></td>
					<td><input type="password" placeholder='${passwordPH}'
						value="${userobj.password }" path="password" /></td>
				</tr>

				<tr>
					<td><spring:message code="secretQ.one" /></td>
					<td><input type="text" placeholder='${oneAnsPH}' /></td>
				</tr>

				<tr>
					<td><spring:message code="secretQ.two" /></td>
					<td><input type="text" required placeholder='${twoAnsPH}'>
					</td>
				</tr>

				<tr>
					<td><spring:message code="secretQ.three" /></td>
					<td><input type="text" required placeholder='${threeAnsPH}'>
					</td>
				</tr>
			</table>

			<br> <br>
			<p>
				<input type="submit" value="Register">
			</p>

		</fieldset>

	</form>

</div>

<%@ include file="footer.jsp"%>