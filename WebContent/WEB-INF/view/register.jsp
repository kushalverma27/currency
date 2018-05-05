<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<html>
<head>
	<title>CurrencyBase</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
	
	<link href="<c:url value="/resources/images/icons/favicon.ico" />" rel="stylesheet">
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
</head>
<body style="background-color: #999999;">
	
	<div class="limiter">
		<div class="container-login100">
			<div class="login100-more" style="background-image: url('resources/images/bg-01.jpg');"></div>
			<div class="wrap-login100 p-l-50 p-r-50 p-t-72 p-b-50">
				<form class="login100-form validate-form" action="saveUser" method="GET">
					<span class="login100-form-title p-b-59">
						Sign Up
					</span>

					<div class="wrap-input100 validate-input" data-validate="Username is required">
						<span class="label-input100">Username</span>
						<input class="input100" type="text" name="username" placeholder="Username...">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="DOB is required">
						<span class="label-input100">Date of Birth</span>
						<input class="input100" type="date" name="dob" id="dob" placeholder="Date of Birth...">
						<p id="error" style="display:none">You cannot enter a date in the future!.</p>
						<span class="focus-input100"></span>
					</div>

					

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<span class="label-input100">Password</span>
						<input class="input100" type="password" name="password" placeholder="*************">
						<span class="focus-input100"></span>
					</div>

				    <div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<span class="label-input100">Email</span>
						<input class="input100" type="text" name="email" placeholder="Email addess...">
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100">
						<span class="label-input100">Address</span>
						<input class="input100" type="text" name="address" placeholder="Address...">
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100">
						<span class="label-input100">Zipcode</span>
						<input class="input100" type="text" name="zip" placeholder="Zip...">
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100">
						<span class="label-input100">City</span>
						<input class="input100" type="text" name="city" placeholder="City...">
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" data-validate = "Repeat Password is required">
						<span class="label-input100">Country</span>
						
						<select style="margin-left:50px">
						<c:forEach items="${countries}" var="count">
   			 			<option value ="${count}" name="country"> ${count}</option>
						</c:forEach>
						</select>
					</div>
					
					<div class="flex-m w-full p-b-33">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
							<label class="label-checkbox100" for="ckb1">
								<span class="txt1">
									I agree to the
									<a href="#" class="txt2 hov1">
										Terms of User
									</a>
								</span>
							</label>
						</div>

						
					</div>

					<div class="container-login100-form-btn">
					
					<input type="submit" class="dis-block txt3 hov1 p-r-30 p-t-10 p-b-10 p-l-30" onclick="return checkDOB();">
							
						</input>
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
						<button class="login100-form-btn" onclick="openPage('login')">
								Back
							</button>
						</div>

						
					</div>
				</form>
			</div>
		</div>
	</div>
	
<!--===============================================================================================-->
	<script src="resources/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
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
	
		<script type="text/javascript">
 function openPage(pageURL)
 {
 window.location.href = pageURL;
 }
</script>
<script type="text/javascript">
    function checkDOB() {
        var dateString = document.getElementById('dob').value;
        var myDate = new Date(dateString);
        var today = new Date();
        if ( myDate > today ) { 
        	document.getElementById('error').style.display= 'inline';
            return false;
        }
        document.getElementById('error').style.display= 'none';
        return true;
    }
</script>

</body>
</html>