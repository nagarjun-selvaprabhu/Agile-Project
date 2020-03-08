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

	<title><spring:message code="dash.adDash" /></title>
	<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans:400,300'>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

<body id="dash">
	<h1><strong><spring:message code="header.title" /></strong></h1><br>

	<div class="navbar">
		<a href="/dashboard"><spring:message code="header.addAd" /></a>
		<a href="/updateUserDash"><spring:message code="header.updateUser" /></a>
		<a href="/viewAdDash"><spring:message code="header.viewAd" /></a>
		<a href="/adminFeedback"><spring:message code="header.feedback" /></a>
		<div id="/logout"><a href=""><spring:message code="header.logout" /></a></div>
	</div>
	<div id="title">
		<p><spring:message code="dash.viewAdDash" /></p>
	</div><br>

	<div id="dashBody">

		<form class="example" action="/action_page.php">
			<input type="text" placeholder="Enter Advertisement Category" name="search">
			<button type="submit"><i class="fa fa-search"></i></button>
		</form>

	</div>

</body>

</html>