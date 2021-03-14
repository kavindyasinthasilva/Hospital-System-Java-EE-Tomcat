<%-- 
    Document   : index
    Created on : 12-Mar-2021, 19:49:27
    Author     : Kavindu Yasintha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
	<!-- Basic Page Info -->
	<meta charset="utf-8">
	<title>Welcome Hospital</title>

	<!-- Site favicon -->
	<link rel="apple-touch-icon" sizes="180x180" href="image/504276.png">
	<link rel="icon" type="image/png" sizes="32x32" href="image/504276.png">
	<link rel="icon" type="image/png" sizes="16x16" href="image/504276.png">

	<!-- Mobile Specific Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<link rel="stylesheet" type="text/css" href="css/login.css">
	<!-- Google Font -->
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="vendors/styles/core.css">
	<link rel="stylesheet" type="text/css" href="vendors/styles/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="vendors/styles/style.css">
	<link rel="stylesheet" type="text/css" href="css/login.css">

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-119386393-1"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());

		gtag('config', 'UA-119386393-1');
	</script>
</head>
<body class="login-page">
	<div class="login-header box-shadow">
		<div class="container-fluid d-flex justify-content-between align-items-center">
			<div class="brand-logo">
				<a href="login.html">
					<img src="image/" alt="">
				</a>
			</div>
			<div class="login-menu">
				<ul>
					<li id="re"><a href="registation.jsp" id="re">Register</a></li>
				</ul>
			</div>
		</div>
	</div>

	

	<div class="login-wrap d-flex align-items-center flex-wrap justify-content-center">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-md-6 col-lg-7">
					<img src="image/f.jpg" alt="">
				</div>
				<div class="col-md-6 col-lg-5">
					<div class="login-box bg-white box-shadow border-radius-10">
						<div class="login-title">
							<h2 id="re"  class="text-center text-primary" >Welcome Login To Lanka</h2>
						</div>
						<form action="login" method="post">

						


							<div class="select-role">
								<div class="btn-group btn-group-toggle" data-toggle="buttons">
							
								</div>
							</div>

						
                                                    <a href="../src/java/user/RegisterServlet.java"></a>
							<div class="input-group custom">
								<input type="text" class="form-control form-control-lg" placeholder="Username" name="username" id="useridname">



								

								<div class="input-group-append custom">
									<span class="input-group-text"><i class="icon-copy dw dw-user1"></i></span>
								</div>
							</div>

						
							<div class="input-group custom">
								<input type="password" class="form-control form-control-lg" placeholder="**********" name="password">
								<div class="input-group-append custom">
									<span class="input-group-text"><i class="dw dw-padlock1"></i></span>
								</div>
							</div>
							<div class="row pb-30">
								<div class="col-6">
									<div class="custom-control custom-checkbox">
										<input type="checkbox" class="custom-control-input" id="customCheck1">
										<label class="custom-control-label" for="customCheck1">Remember</label>
									</div>
								</div>
								<div class="col-6">
									<div class="forgot-password"><a href="forgot-password.html">Forgot Password</a></div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-12">
									<div class="input-group mb-0">
										<!--btn btn-primary btn-lg btn-block
											use code for form submit
											<input class="btn btn-primary btn-lg btn-block" type="submit" value="Sign In">
										-->
										<input type="submit" name="submit" value="Submit"  class="btn btn-primary btn-lg btn-block" onclick="getInputValue();">
									</div>

									
									<div class="font-16 weight-600 pt-10 pb-10 text-center" data-color="#61bc47">OR</div>
									<div class="input-group mb-0">
										<a class="btn btn-outline-primary btn-lg btn-block" href="register.php">Register To Create Account</a>
									</div>
								</div>
							</div>
						</form>
						
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	


	
	<!-- js -->
	<script src="vendors/scripts/core.js"></script>
	<script src="user.js"></script>
	<script src="vendors/scripts/script.min.js"></script>
	<script src="vendors/scripts/process.js"></script>
	<script src="vendors/scripts/layout-settings.js"></script>

	<script>

function getInputValue(){
									// Selecting the input element and get its value 
var inputVal = document.getElementById( "useridname").value;
alert( "welcome to "+inputVal );

var user = localStorage.setItem('inputVal',inputVal);
localStorage.setItem('inputVal',inputVal) =inputVal;




							
}
</script>

</body>
</html>