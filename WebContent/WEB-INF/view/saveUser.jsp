<?xml version="1.0" encoding="UTF-8" ?>
<jsp:directive.page contentType="text/html" pageEncoding="UTF-8" />
 
              
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<% session.invalidate(); %>

<head>
<title>CurrencyBase</title>
	<link href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css" />" rel="stylesheet"></link>
	<style>
	#background {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-image: url('resources/images/background.jpg');
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: cover;
    opacity: 0.2;
    filter:alpha(opacity=10);
    z-index:-1;
}
	</style>
	
</head>
<body style="margin-left:20%">
	<div id="background"></div>
<div style="display:flex;margin-top:15%">
<img src="/resources/images/success.png" style="width:20%;margin:3%"/> 
<h3>
<br><br><br>
Registration Successful!
<br>
<a href="/login">Go back to Login page</a>
</h3>
</div>
</body>
</html>