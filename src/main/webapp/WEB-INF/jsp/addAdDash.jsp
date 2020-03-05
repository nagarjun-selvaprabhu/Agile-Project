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
		<div id="logout"><a href="">Logout</a></div>
	</div>

	<div id="title"><p>Add Advertisement</p></div><br>

	<div id="dashBody">

		<form action="javascript:void(0);" method="get">

			<fieldset>

			<table>
				<tr><p><td>Advertisement Title: </td><td><span id="titlebar"><input type="text" required placeholder="Advertisement Title"></span></p> </td></tr>

				<tr><p><td>Content: </td><td><textarea required></textarea></p> </td></tr>

			
			</table>
			<br><p><input type="submit" value="Add Advertisement"></p>
			
			</fieldset>

		</form>

	</div>

</body>
</html>