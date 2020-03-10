<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="header.jsp"%>

<div class="navbar">
	<a href="/dashboard" id="selectedNav"><spring:message
			code="header.addAd" /></a> <a href="/updateUserDash"><spring:message
			code="header.updateUser" /></a> <a href="/viewAdDash"><spring:message
			code="header.viewAd" /></a> <a href="/adminFeedback"><spring:message
			code="header.feedback" /></a>
	<div id="logout">
		<a href=""><spring:message code="header.logout" /></a>
	</div>
</div>

<spring:message code="dash.adTitlePH" var="adTitlePH" />

<div id="title">
	<p>
		<spring:message code="dash.addAdDash" />
	</p>
</div>
<br>

<div id="dashBody">

	<form action="javascript:void(0);" method="get">

		<fieldset>

			<table>
				<tr>
					<td><spring:message code="dash.adTitle" /></td>
					<td><span id="titlebar"><input type="text"
							placeholder='${adTitlePH}'></span></td>
				</tr>

				<tr>
					<td id="contentCenter"><spring:message code="dash.adContent" /></td>
					<td><textarea required></textarea></td>
				</tr>

				<tr>
					<td><label for="img"><spring:message code="dash.selectImage" /></label></td>
					<td><input type="file" id="img" name="img" accept="image/*"></td>
				</tr>



			</table>
			<br> <input type="submit"
				value=<spring:message code="dash.addAdDash"/>>

		</fieldset>

	</form>

</div>

<%@ include file="footer.jsp"%>