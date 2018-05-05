<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>CurrencyBase</title>
	<link href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">
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
	<body>
	<div id="background"></div>
	<div style="margin-left:25%">	
	<img src="/resources/images/access_denied.png" style="height:70%"/>
	
		<c:if test="${not empty error}">
			<div style="color:red"> 
				Caused : ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
			</div>
		</c:if>
	
		
		<h3><a href="/login">Go back to login page</a></h3> 
		<h3><a href="javascript:window.history.back()">Back to last page</a></h3>
		</div>
	</body>
</html>