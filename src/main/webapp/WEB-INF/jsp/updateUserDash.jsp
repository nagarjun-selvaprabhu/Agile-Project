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

	<title>Advertisement Dashboard</title>
	<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans:400,300'>

</head>

<body id="dash">
	<h1><strong>CITY CLASSIFIED AND SEARCH</strong></h1><br>

	<div class="navbar">
		<a href="/dashboard">Add Ad</a>
		<a href="/updateUserDash">Update User Details</a>
		<a href="/viewAdDash">View Ad</a>
		<a href="/adminFeedback">Feedback</a>
		<div id="/logout"><a href="">Logout</a></div>
	</div>

	<div id="title">
		<p>Update User Details</p>
	</div><br>

	<div id="mainBody">

		<form:form method="get" modelAttribute="user" action="/updateUserDash">

			<fieldset>

				<table>
					<tr>
						<p>
							<td>Employee ID: </td>
							<td><form:input type="text"  placeholder="enter employee id" value="${userobj.id }" path="id"/>
						</p>
						</td>
					</tr>

					<tr>
						<p>
							<td>First Name: </td>
							<td><form:input type="text"  placeholder="enter first name" value="${userobj.firstName }" path="firstName"/>
						</p>
						</td>
					</tr>

					<tr>
						<p>
							<td>Last Name: </td>
							<td><form:input type="text"  placeholder="enter last name" value="${userobj.lastName }" path="lastName"/>
						</p>
						</td>
					</tr>

					<tr>
						<p>
							<td>E-Mail: </td>
							<td><form:input type="email"  placeholder="enter your mail id" value="${userobj.email }" path="email"/>
						</p>
						</td>
					</tr>

					<tr>
						<p>
							<td>Password: </td>
							<td><form:input type="password"  placeholder="enter your password" value="${userobj.password }" path="password"/>
						</p>
						</td>
					</tr>

					<tr>
						<p>
							<td>Secret Q1: </td>
							<td><input type="text"  placeholder="answer for Q1"/>
						</p>
						</td>
					</tr>

					<tr>
						<p>
							<td>Secret Q2: </td>
							<td><input type="text" required placeholder="answer for Q2">
						</p>
						</td>
					</tr>

					<tr>
						<p>
							<td>Secret Q3: </td>
							<td><input type="text" required placeholder="answer for Q3">
						</p>
						</td>
					</tr>
				</table>

				<br>
				<p><form:checkbox path="role"/></td>
					<td>Check this for requesting Admin Role
				</p>

				<br>
				<p><input type="submit" value="Register" ></p>

			</fieldset>

		</form:form>

	</div>

</body>

</html>