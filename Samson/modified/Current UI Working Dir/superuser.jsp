<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
       pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
<link rel="stylesheet"
       href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

</head>

<body id="dash">
       <h1>
              <strong><spring:message code="header.title" /></strong>
       </h1>

       <br>

       <div class="navbar">
              <a href="/superuser" id="selectedNav"><spring:message
                           code="dash.superUserTitle" /></a>
              <div id="logout">
                     <a href=""><spring:message code="header.logout" /></a>
              </div>
       </div>

       <spring:message code="dash.adTitlePH" var="adTitlePH" />

       <div id="title">
              <p>
                     <spring:message code="dash.superUserRequests" />
              </p>
       </div>
       <br>

       <div id="dashBody">

              <form:form method="get">
                     <fieldset>

                           <div>
                                  <h3>${requestEmpty }</h3>
                           </div>

                           <table class="table">
                                  <c:forEach var="i" items="${list }">

                                         <tr>
                                                <td class="requestContent">${i.id }</td>
                                                <td class="requestContent">${i.firstName }</td>
                                                <td><a href="/update?id=${i.id }&role=true"
                                                       class="btn btn-success" id="${i.id }"><spring:message
                                                                     code="dash.accept" /></a></td>
                                                <td><a href="/update?id=${i.id }&role=false"
                                                       class="btn btn-danger" id="${i.id }"><spring:message
                                                                     code="dash.reject" /></a></td>

                                         </tr>
                                  </c:forEach>
                           </table>
                     </fieldset>
              </form:form>

       </div>

       <%@ include file="footer.jsp"%>
