<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="header.jsp" %>

<spring:message code="dash.feedbackQuesPH" var="feedbackPH" />
<spring:message code="dash.addQuestion" var="addQuesPH" />

<div class="navbar">
	<a href="/dashboard"><spring:message
			code="header.addAd" /></a> <a href="/updateUserDash"><spring:message
			code="header.updateUser" /></a> <a href="/viewAdDash"><spring:message
			code="header.viewAd" /></a> <a href="/adminFeedback" id="selectedNav"><spring:message
			code="header.feedback" /></a>
	<div id="logout">
		<a href=""><spring:message code="header.logout" /></a>
	</div>
</div>

	<div id="title">
		<p><spring:message code="dash.adminFeedbackTitle" /></p>
	</div><br>

	<div id="dashBody">

		<form action="javascript:void(0);" method="get">

			<fieldset>

				<table>
					<tr>
						<p>
							<td><spring:message code="dash.feedbackQuestion" /></td>
							<td><span id="titlebar"><input type="text" required
										placeholder='${feedbackPH }'></span> </td>
							<td><input type="button" value='${addQuesPH }'></td>
						</p>
					</tr>


				</table>
				<br>
				<p><input type="button" value=<spring:message code="dash.feedbackCSV" />></p>

			</fieldset>

		</form>

	</div>

<%@ include file="footer.jsp" %>