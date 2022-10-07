<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="org.ocpsoft.prettytime.PrettyTime"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hostel Management System</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<link rel="stylesheet"
	href="homePageResources/assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="homePageResources/assets/fonts/font-awesome.min.css">
<link rel="stylesheet"
	href="homePageResources/assets/css/-Fixed-Navbar-start-with-transparency-background-BS4-.css">
<link rel="stylesheet"
	href="homePageResources/assets/css/Bold-BS4-CSS-Image-Slider.css">
<link rel="stylesheet"
	href="homePageResources/assets/css/Features-Blue.css">
<link rel="stylesheet"
	href="homePageResources/assets/css/Footer-Basic.css">
<link rel="stylesheet"
	href="homePageResources/assets/css/Footer-Dark.css">
<link rel="stylesheet"
	href="homePageResources/assets/css/Highlight-Phone.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.1.1/aos.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.8.2/css/lightbox.min.css">
<link rel="stylesheet"
	href="homePageResources/assets/css/Lightbox-Gallery.css">
<link rel="stylesheet" href="homePageResources/assets/css/Map-Clean.css">
<link rel="stylesheet" href="homePageResources/assets/css/mynav.css">
<link rel="stylesheet" href="homePageResources/assets/css/styles.css">
<link rel="stylesheet"
	href="homePageResources/assets/css/Highlight-Blue.css">
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">

<style>
.img {
	width: 100px;
	height: 100px;
}

.card-inner {
	margin-left: 4rem;
}
</style>
</head>
<body>
<body style="color: rgb(137, 166, 195);">
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
					href="#Feedback" style="color: rgb(255, 255, 255);"><strong>Feedback</strong></a></li>
				<li class="nav-item" role="presentation"><a class="nav-link"
					href="#Gallery" style="color: rgb(255, 255, 255);"><strong>Gallery</strong></a></li>
				<li class="nav-item" role="presentation"><a class="nav-link"
					href="#about" style="color: rgb(255, 255, 255);"><strong>About
							Us</strong></a></li>
			</ul>
			<span class="navbar-text actions" style="background-color: #1485ee;">
				<a class="btn btn-light border-light action-button" role="button"
				id="bor" href="loadSignUpPage"
				style="color: rgb(255, 255, 255); background-color: rgb(20, 133, 238);"><strong>&nbsp;Sign
						Up</strong></a> <a class="btn btn-light action-button" role="button" id="bor_2"
				href="loadLogInPage"
				style="color: rgb(20, 133, 238); background-color: rgb(255, 255, 255);"><i></i><strong>&nbsp;Sign
						In</strong>&nbsp;&nbsp;</a>
			</span> <span class="navbar-text actions" style="background-color: #1485ee;">
			</span><span class="navbar-text actions" style="background-color: #1485ee;">
			</span><span class="navbar-text actions" style="background-color: #1485ee;">
			</span>
		</div>
	</div>
	</nav>
	<div class="bg-primary d-flex align-items-center"
		style="height: 100vh; background-color: rgb(61, 52, 169); background-image: url(homePageResources/assets/img/back.jpg); background-size: cover; background-repeat: no-repeat;">
		<div class="text-center w-100 text-white">
			<h1>HosteL</h1>
			<h2 class="font-weight-normal">
				<em>Hostel Management System</em>
			</h2>
		</div>
	</div>
	<!-- Admission process on off -->
	<c:if test="${addmissionStatus eq true}">

		<div class="highlight-blue">
			<div class="container">
				<div class="intro">
					<h2 class="text-center" style="font-size: 40px">
						<b>Addmission Process Start</b>
					</h2>
					<p class="text-center">
						To fill application form ,<br />First you need to create account
					</p>
				</div>
				<!-- <div class="buttons">
					<a class="btn btn-primary" role="button" href="loadSignUpPage">Sign
						up here</a>
				</div> -->
			</div>
		</div>
	</c:if>
	<c:if test="${addmissionStatus eq false}">
		<div class="highlight-blue">
			<div class="container">
				<div class="intro">
					<h2 class="text-center" style="font-size: 40px">
						<b>Currently Addmission Process Off</b>
					</h2>

				</div>
			</div>
		</div>
	</c:if>
	<!--Add gallery here  -->
	<link rel="stylesheet"
		href="https://use.fontawesome.com/releases/v5.0.13/css/all.css"
		integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp"
		crossorigin="anonymous">
	<div class="row"
		style="height: 450px; overflow: auto; background-color: blue"
		id="Gallery">
		<div class="row">
			<c:forEach var="l" items="${gallerylist}">
				<div class="col-lg-3 col-md-4 col-xs-6 thumb" style="width: 100%">
					<a class="thumbnail" href="#" data-image-id="" data-toggle="modal"
						data-title="${l.galleryType }"
						data-image="${l.s3Link}?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
						data-target="#image-gallery"> <img class="img-thumbnail"
						style="width: 100%; height: 100%" src="${l.s3Link}"
						alt="Another alt text">
					</a>
				</div>
			</c:forEach>
		</div>
		<div class="modal fade" id="image-gallery" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title" id="image-gallery-title"></h4>
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">×</span><span class="sr-only">Close</span>
						</button>
					</div>
					<div class="modal-body">
						<img id="image-gallery-image" class="img-responsive col-md-12"
							src="">
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary float-left"
							id="show-previous-image">
							<i class="fa fa-arrow-left"></i>
						</button>
						<button type="button" id="show-next-image"
							class="btn btn-secondary float-right">
							<i class="fa fa-arrow-right"></i>
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--Feedback section-------------------------- -->
	<div class="sectionfeed" id="Feedback">
		<!-- Whole Feedback Form with display -->
		<div class="row">
			<div class="col-sm-8">
				<div class="card border rounded shadow-lg"
					style="margin: 50px; padding: 50px; overflow: scroll; height: 450px;">
					<c:forEach items="${listOfFeedback}" var="list">
						<div class="row" style="margin-bottom: 5px">
							<%
								PrettyTime p = new PrettyTime();
							%>
							<div class="col-md-2 ">
								<img src="https://image.ibb.co/jw55Ex/def_face.jpg"
									class="img img-rounded img-fluid img-responsive">
								<p class="text-secondary text-center">${list.t}</p>
							</div>
							<div class="col-md-10">
								<p>
									<a class="float-left"
										href="https://maniruzzaman-akash.blogspot.com/p/contact.html"><strong>${list.name}</strong></a>
								</p>
								<div class="clearfix"></div>
								<p>${list.feedbackMsg}</p>
							</div>
							<hr>
						</div>
					</c:forEach>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="contact-clean" style="margin: 50px;">
					<form class="border rounded shadow-lg" style="padding: 20px;"
						action="insertFeedback" method="post">
						<h2 class="text-center" style="font-family: sans-serif;">Feedback</h2>
						<div class="form-group">
							<input class=" form-control" type="text" name="name"
								placeholder="Name" required="">
						</div>
						<div class="form-group">
							<input class=" form-control" type="email" name="email"
								placeholder="Email" required="">
						</div>
						<div class="form-group">
							<textarea class=" form-control" name="message"
								placeholder="Write here your feedback" rows="8"></textarea>
						</div>
						<div
							class="form-group d-md-flex justify-content-md-center align-items-md-center">
							<button
								class="btn btn-primary border rounded d-md-flex justify-content-md-center align-items-md-center"
								type="submit">send</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="map-clean">
		<div class="container">
			<div class="intro"></div>
		</div>
		<iframe width="100%" height="450" frameborder="0" scrolling="no"
			marginheight="0" marginwidth="0"
			src="https://maps.google.com/maps?width=100%25&amp;height=450&amp;hl=en&amp;q=University%20of%20north%20texas,%20USA+(My%20Business%20Name)&amp;t=&amp;z=17&amp;ie=UTF8&amp;iwloc=B&amp;output=embed">
			<a href="http://www.gps.ie/">gps systems</a>
		</iframe>
	</div>
	<div class="footer-dark" id="about"
		style="background-color: rgb(20, 133, 238);">
		<footer>
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-md-3 item">
					<h3>Services</h3>
					<ul>
						<li><a href="#" style="opacity: 1;">Web design</a></li>
						<li><a href="#" style="opacity: 1;">Development</a></li>
						<li><a href="#" style="opacity: 1;">Hosting</a></li>
					</ul>
				</div>
				<div class="col-sm-6 col-md-3 item">
					<h3>About</h3>
					<ul>
						<li><a href="#" style="opacity: 1;">Company</a></li>
						<li><a href="#" style="opacity: 1;">Team</a></li>
						<li><a href="#" style="opacity: 1;">Careers</a></li>
					</ul>
				</div>
				<div class="col-md-6 item text">
					<h3>Company Name</h3>
					<p style="color: rgb(255, 255, 255); opacity: 1;">Team 6</p>
				</div>
			</div>
			<p class="copyright">copyright by Team6© 2021</p>
		</div>
		</footer>
	</div>
	<script src="homePageResources/assets/js/jquery.min.js"></script>
	<script src="homePageResources/assets/bootstrap/js/bootstrap.min.js"></script>
	<script src="homePageResources/assets/js/bs-init.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.1.1/aos.js"></script>
	<script
		src="homePageResources/assets/js/-Fixed-Navbar-start-with-transparency-background-BS4-.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.8.2/js/lightbox.min.js"></script>
	<script src="homePageResources/assets/js/payment.js"></script>
	<script src="homePageResources/assets/js/imagegal.js"></script>
	<script src="homePageResources/assets/js/smart-forms.min.js"></script>
</body>
</html>