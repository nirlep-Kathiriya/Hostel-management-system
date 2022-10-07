<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hostel Management System</title>
    <link rel="stylesheet" href="signinsignupResources/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="signinsignupResources/assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="signinsignupResources/assets/fonts/simple-line-icons.min.css">
    <link rel="stylesheet" href="signinsignupResources/assets/css/style.css">
    <link rel="stylesheet"
	href="homePageResources/assets/css/Footer-Dark.css">

<link rel="stylesheet"
	href="homePageResources/assets/css/Footer-Basic.css">
	
<link rel="stylesheet" href="homePageResources/assets/css/mynav.css">
    
</head>
<body>

<nav
		class="navbar navbar-light navbar-expand-md sticky-top shadow navigation-clean-button"
		style="background-color: rgb(20,133,238);height: 65px;">
	<div class="container-fluid">
		<a class="navbar-brand" href="/"
			style="color: rgba(255, 255, 255, 0.9);">HosteL</a>
		<button data-toggle="collapse" class="navbar-toggler"
			data-target="#navcol-1" style="color: rgb(0, 0, 0);">
			<span class="sr-only" style="background-color: #1485ee;">Toggle
				navigation</span><span class="navbar-toggler-icon"
				style="background-color: #1485ee;"></span>
		</button>
		<div class="collapse navbar-collapse" id="navcol-1"
			style="background-color: #1485ee;">
			<ul class="nav navbar-nav mr-auto" style="background-color: #1485ee;">
					
				<li class="nav-item" role="presentation"><a class="nav-link"
					href="#about" style="color: rgb(255, 255, 255);"><strong>About
							Us</strong></a></li>
			</ul>
			<span class="navbar-text actions" style="background-color: #1485ee;">
				<a class="btn btn-light action-button" role="button" id="bor_2"
				href="loadLogInPage"
				style="color: rgb(20, 133, 238); background-color: rgb(255, 255, 255);"><i
					class="fa fa-sign-in"></i><strong>&nbsp;Sign In</strong>&nbsp;&nbsp;</a>
			</span> <span class="navbar-text actions" style="background-color: #1485ee;">
			</span><span class="navbar-text actions" style="background-color: #1485ee;">
			</span><span class="navbar-text actions" style="background-color: #1485ee;">
			</span>
		</div>
	</div>
	</nav>

<div class="registration-form" style="background-size: cover;background-repeat: no-repeat;background-image: url(&quot;signinsignupResources/assets/img/b.jpg&quot;);">
        <s:form class="text-monospace" action="insertSignInDetail" method="post" modelAttribute="SigninVOKey" autocomplete="on">
            <div class="form-icon" style="background-color:rgb(20,133,238);padding-top: 30px"><span><i class="icon-user icon"></i></span></div>
                   <span id="errEmail">${flag}</span><br><br>
            
            <div class="form-row">
                <div class="col">
                <s:input class="form-control item"  path="firstName" id="username-1" placeholder="First Name" minlength="3"  required="true"/>
                </div>
                <div class="col">
                <s:input class="form-control item"  id="username-2"   path="lastName" placeholder="Last Name" minlength="3" required="true"/>
                </div>
            </div>
            <div class="form-group">
               <s:input class="form-control item"   path="loginVO.username" id="email" placeholder="Email" required="true" minlength="10" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"/>
            </div>
            <div class="form-group">
               <s:input class="form-control item"   path="phone" id="mobile" placeholder="Mobile No."
                minlength="10" maxlength="10"/>
            </div>
            <div class="form-group">    
               <s:input type="password" class="form-control item"    path="loginVO.password" id="password" placeholder="Password" required="true"/>
            </div>
            <div class="form-group">
                <input type="password" class="form-control item"  id="password-1"
                placeholder="Confirm Password" required="true">
            </div>
            <div class="form-group">
                <button class="btn btn-primary btn-block create-account" type="submit" style="background-color:rgb(20,133,238)">Sign Up</button>
            </div>
        </s:form>
        <div class="social-media" style="background-color:rgb(20,133,238)">
        </div>
    </div>
    
    <jsp:include page="../footerOfMain.jsp"></jsp:include>
    <script src="signinsignupResources/assets/js/jquery.min.js"></script>
    <script src="signinsignupResources/assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
    <script src="signinsignupResources/assets/js/script.js"></script>
    <script src="https://cdn.rawgit.com/PascaleBeier/bootstrap-validate/v2.2.0/dist/bootstrap-validate.js" ></script>
    <script>
        bootstrapValidate('#username-1','min:3:Enter at least 3 characters.')
        bootstrapValidate('#username-1','alpha:Enter only alphabets.')
        bootstrapValidate('#username-2','min:3:Enter at least 3 characters.')
        bootstrapValidate('#username-2','alpha:Enter only alphabets.')
        bootstrapValidate('#email','email:Enter a valid email address.')
        bootstrapValidate('#mobile','numeric:Enter numbers only.')
        bootstrapValidate('#password-1','matches:#password:Enter the same password as above.')
    </script>

   

</body>
</html>