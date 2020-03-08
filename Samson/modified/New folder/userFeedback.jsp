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

	<title><spring:message code="dash.adDash" /></title>
	<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans:400,300'>

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
		<p><spring:message code="dash.userFeedBack" /></p>
	</div><br>

	<div id="dashBody">



	</div>

</body>

</html>