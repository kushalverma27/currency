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
	<link href="<c:url value="/resources/css/jquery-ui.css" />" rel="stylesheet">
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
	
		
	<!-- 	<p class="message"></p>
		<a href="/listUsers">Users</a>  -->

<!-- 
<div class="w3-content w3-section" style="max-width:500px">
  
  <img class="mySlides w3-animate-bottom" src="img_rr_02.jpg" style="width:100%">
  <span class="mySlides w3-animate-bottom">Some Text</span>
  <img class="mySlides w3-animate-top" src="img_rr_03.jpg" style="width:100%">
  <img class="mySlides w3-animate-bottom" src="img_rr_04.jpg" style="width:100%">
</div> -->
<br><br><br><br>
		<div class=item-container" style=" display: flex;flex-direction: row;flex-flow: wrap;justify-content: space-around;text-align:center">
		<p class="message"></p>
		<div style="width:350px;height:350px;border: 1px solid #ccc;margin: .5cm;">
		
		<a href="/currRates">
		<span style="font-size: 30;">Current Rates</span>
		
	<img src="/resources/images/curr2.jpg"  />
	</a> 
	</div>
	<div style="width:350px;height:350px; border: 1px solid #ccc;  border-radius: 4px; margin: .5cm; ">
		<p class="message" style="font-size: 30;">Historic Rates</p>
		
				<form name="f" action="/hisRates" method="GET">
					<img src="/resources/images/curr3.jpg" />
			<table style="margin-left:50px">
				<tr class="wrap-input100" data-validate = "Valid date is required: 2018-04-04">
					<td class="label-input100">Date:</td>
					<td><input type='text' name='date' id="dateHist" class="input100" placeholder="    Date..."  style="width: 180px;align:center" />
					</td>
				</tr>
				<tr>
					<div>
					<td colspan='2'><input value="Send" name="submit" type="submit" onclick="return validate();" class="login100-form-btn">
					<p class="message" id="errMsg" style="padding-left:16%;display:none">Please enter valid date!</p>
					</td>
					
				</tr>
			</table>
		</form>
		</div>
		
		<div  style="width:350px;height:350px;overflow-y:scroll;border: 1px solid #ccc;margin: .5cm;">
		<p class="message" style="font-size: 30;">Recent Searches</p>
		<c:forEach items="${camp}" var="camp" >
		<div class="mySlides w3-animate-bottom" >
  		  <tr>
  		  <td>
        <span style="font-family: Poppins-SemiBold;  font-size: 18px;color: #999999; line-height: 1.2; padding-left: 2px;">Date : ${camp.date}
        
        </span>
         </td>
       <br>
        <c:set var = "string1" value = "${camp.data} "/>
        <c:set var = "string2" value = "${fn:replace(string1, ',', '<br>')}" />
        <c:set var = "string3" value = "${fn:replace(string2, '{', '<br>')}" />
        <c:set var = "string4" value = "${fn:replace(string3, '}', '<br>')}" />
        <c:set var = "string5" value = "${fn:replace(string4, '=', ' ')}" />
         <td>
         
        <span style="">${string5} 
        </span>
        </td>
        
        <!-- <td><a href="delete/${user.id}">delete</a></td>  -->
    </tr>
    </div>
</c:forEach>
</div>
		<p class="message"></p>
	<!-- 	<a href="/logout">Log-out</a>  -->
		</div>
			 </sec:authorize>
		<!--===============================================================================================-->
	<script src="resources/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/js/jquery-1.12.4.js"></script>
	<script src="resources/js/jquery-ui.js"></script>
	<script src="resources/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor/bootstrap/js/popper.js"></script>
	<script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor/daterangepicker/moment.min.js"></script>
	<script src="resources/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="resources/js/main.js"></script>
	<script>
	$( function() {
	    $( "#dateHist" ).datepicker({
	    	 dateFormat: "yy-mm-dd",
	    	 maxDate: "-1 +0d"
	    });
	   
	  } );
	
 function openPage(pageURL)
 {
 window.location.href = pageURL;
 }
 
 function validate(){
	 var date = document.getElementById("dateHist").value;
	 if(null != date && date.length == 10 ){
		 document.getElementById("errMsg").style.display = "none"; 
		 return true;
	 } else {
		 document.getElementById("errMsg").style.display = "inline"; 
		 return false;
		
		 
	 }
	 
 }
</script>
<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
      x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 5000);    
}
</script>
	</body>
</html>