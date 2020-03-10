<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="header.jsp"%>

<div class="navbar">
	<a href="/dashboard"><spring:message code="header.addAd" /></a> <a
		href="/updateUserDash"><spring:message code="header.updateUser" /></a>
	<a href="/viewAdDash"><spring:message code="header.viewAd" /></a> <a
		href="/adminFeedback" id="selectedNav"><spring:message
			code="header.feedback" /></a>
	<div id="logout">
		<a href=""><spring:message code="header.logout" /></a>
	</div>
</div>

<div id="title">
	<p>
		<spring:message code="dash.userFeedBack" />
	</p>
</div>
<br>

<div id="dashBody">

	<form>

		<fieldset>

			<table>
				<%
					for (int row = 1; row <= 10; row++) {
				%>
				<tr>
					<%
						for (int col = 1; col <= 2; col++) {
					%>

					<%
						if (col == 1) {
					%>
					<td>--- Insert Questions Here ---</td>
					<%
						}
					%>

					<%
						if (col == 2) {
					%>
					<td>
						<div class="stars">
							<form action="">
								<input class="star star-5" id="star-5" type="radio" name="star" />
								<label class="star star-5" for="star-5"></label> <input
									class="star star-4" id="star-4" type="radio" name="star" /> <label
									class="star star-4" for="star-4"></label> <input
									class="star star-3" id="star-3" type="radio" name="star" /> <label
									class="star star-3" for="star-3"></label> <input
									class="star star-2" id="star-2" type="radio" name="star" /> <label
									class="star star-2" for="star-2"></label> <input
									class="star star-1" id="star-1" type="radio" name="star" /> <label
									class="star star-1" for="star-1"></label>
							</form>
						</div>
					</td>
					<%
						}
					%>
					<%
						}
					%>
				</tr>
				<%
					}
				%>
			</table>

			<input type="submit" value=<spring:message code="dash.submit"/>>

		</fieldset>

	</form>

</div>

<%@ include file="footer.jsp"%>