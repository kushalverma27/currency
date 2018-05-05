<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<html>
<head>
	<title>CurrencyBase</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
	
	<link href="<c:url value="/resources/images/icons/favicon.ico" />" rel="stylesheet">
	
	<link href="<c:url value="/resources/css/w3.css" />" rel="stylesheet">
<!--===============================================================================================-->
	<link href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">
<!--===============================================================================================-->
	<link href="<c:url value="/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css" />" rel="stylesheet">
<!--===============================================================================================-->
	<link href="<c:url value="/resources/fonts/Linearicons-Free-v1.0.0/icon-font.min.css" />" rel="stylesheet">
<!--===============================================================================================-->
	<link href="<c:url value="/resources/fonts/iconic/css/material-design-iconic-font.min.css" />" rel="stylesheet">
<!--===============================================================================================-->
	<link href="<c:url value="/vendor/animate/animate.css" />" rel="stylesheet">
<!--===============================================================================================-->	
	<link href="<c:url value="/resources/css-hamburgers/hamburgers.min.css" />" rel="stylesheet">
<!--===============================================================================================-->
	<link href="<c:url value="/resources/vendor/animsition/css/animsition.min.css" />" rel="stylesheet">
<!--===============================================================================================-->
	<link href="<c:url value="/resources/select2/select2.min.css" />" rel="stylesheet">
<!--===============================================================================================-->	
	<link href="<c:url value="/resources/vendor/daterangepicker/daterangepicker.css" />" rel="stylesheet">
<!--===============================================================================================-->
	<link href="<c:url value="/resources/css/util.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
<!--===============================================================================================-->
<style>
.mySlides {display:none;}

.item-container {
  display: flex;
  flex-direction: row;
  flex-flow: wrap;
  justify-content: space-around;
}
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
	<div class="header" style=" display: flex;flex-direction: row;flex-flow: wrap;justify-content: space-around;text-align:center;height:12.5%">
	<img src="/resources/images/curr-header.png" style=" width:100%"/>
	
</div>

	<div class="wrap-login100-form-btn" style="float:right;margin-right:15px;margin-top:15px">
							<div class="login100-form-bgbtn"></div>
						
							<button class="login100-form-btn" onclick="openPage('j_spring_security_logout')">Logout</button>
						</div>
		
		<!--  <h6><a href="j_spring_security_logout">Logout</a></h6> -->
		 	
		 
		 <sec:authorize access="isAuthenticated()">
<!-- 		 Username: <sec:authentication property="principal.username" />
		 Role: <sec:authentication property="principal.authorities"/> -->
		 </sec:authorize>
	<div class="wrap-login100-form-btn" style="float:left;margin-right:15px;margin-top:15px">
							<div class="login100-form-bgbtn"></div>
						
							<button class="login100-form-btn" onclick="openPage('menu')">Back to Menu</button>
						</div>
<br><br><br><br>
<c:if  test="${!empty rates}">
<table class="data" style="margin-left:45%">
<tr>
    <th tyle="padding-right:20px">Currency</th>
    <th style="padding-left:20px">Rate</th>
    
    <th>&nbsp;</th>
</tr>
<c:forEach items="${rates}" var="rate">
    <tr>
        <td style="padding-right:20px">${rate.key} </td>
        <td style="padding-left:20px">${rate.value} </td>

        
        <!-- <td><a href="delete/${user.id}">delete</a></td>  -->
    </tr>
</c:forEach>
</table>
</c:if>

</body>
		<script type="text/javascript">
 function openPage(pageURL)
 {
 window.location.href = pageURL;
 }
</script>
</html>