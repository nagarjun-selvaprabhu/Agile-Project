<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
	${list }
	<%-- <form:form action="/update" method="post">

		<table class="table">
			<c:forEach var="i" items="${list }">

				<tr>
					<td>${i.id }<input
                type="hidden" id="id" name="id" value="${i.id }"></td>
					<td>${i.firstName }</td>
					<td><input type="submit" value="Accept" name="accept"></td>
					<td><a href="/update"
						class="btn btn-danger" id="${i.id }">Reject</a></td>
				</tr>
			</c:forEach>
		</table>
</form:form> --%>
	<form:form  method="get">

		<table class="table">
			<c:forEach var="i" items="${list }">

				<tr>
					<td>${i.id }</td>
					<td>${i.firstName }</td>
					<td><a href="/update?id=${i.id }&role=true" class="btn btn-danger" id="${i.id }">Accept</a></td>
					<td><a href="/update?id=${i.id }&role=false" class="btn btn-danger" id="${i.id }">Reject</a></td>
					
				</tr>
			</c:forEach>
		</table>
	</form:form>
</body>
</html>