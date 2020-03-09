<!DOCTYPE html>
<html lang="en-Us">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="dashboardStyles.css">

<title><spring:message code="dash.adDash" /></title>
<link rel='stylesheet'
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,300'>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">

</head>

<body id="dash">

	<table id="headerTable">
		<tr>
			<td><h3 id="userRole">
					<spring:message code="header.loggedInAs" />
					<strong>${login.type }</strong>
				</h3></td>
			<td><h1>
					<strong><spring:message code="header.title" /></strong>
				</h1></td>
			<td><h3 id="userSession">
					<spring:message code="header.welcome" />
					<strong>${user.firstName }!</strong>
				</h3></td>
		</tr>
	</table>
	<br>