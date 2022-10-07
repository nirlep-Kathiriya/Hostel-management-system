<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<title>HMS ADMIN</title>
<!-- General CSS Files -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/app.min.css"">
<!-- Template CSS -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/components.css">
<!-- Custom style CSS -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/custom.css">
<link rel='shortcut icon' type='image/x-icon'
	href='<%=request.getContextPath()%>/adminResources/image/favicon.ico' />
</head>

<body>
	<div class="loader"></div>
	<div id="app">
		<div class="main-wrapper main-wrapper-1">
			<div class="navbar-bg"></div>



			<jsp:include page="header.jsp"></jsp:include>



			<jsp:include page="menu.jsp"></jsp:include>


			<!-- Main Content -->
			<div class="main-content">
				<section class="section">
					<div class="row ">
						<div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-xs-12">
						    <a href="loadFresherPendingRequest">
							<div class="card">
								<div class="card-statistic-4">
									<div class="align-items-center justify-content-between">
										<div class="row ">
											<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pr-0 pt-3">
												<div class="card-content">
													<h5 class="font-15">Pending Admissions</h5>
													
												</div>
											</div>
											<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pl-0">
												<div class="banner-img">
													<img src="<%=request.getContextPath()%>/adminResources/image/1.png" alt="">
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							</a>
						</div>
						
						
						<div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-xs-12">
						    <a href="loadHostelStudentDetail">
							<div class="card">
								<div class="card-statistic-4">
									<div class="align-items-center justify-content-between">
										<div class="row ">
											<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pr-0 pt-3">
												<div class="card-content">
													<h5 class="font-15">Student Details</h5>
												</div>
											</div>
											<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pl-0">
												<div class="banner-img">
													<img width="67%" src="<%=request.getContextPath()%>/adminResources/image/student-management.png" alt="">
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							</a>
						</div>
						
						<div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-xs-12">
						    <a href="paymentStatusOfStudent">
							<div class="card">
								<div class="card-statistic-4">
									<div class="align-items-center justify-content-between">
										<div class="row ">
											<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pr-0 pt-3">
												<div class="card-content">
													<h5 class="font-15">Payment Status</h5>
													
												</div>
											</div>
											<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pl-0">
												<div class="banner-img">
													<img width="95%" src="<%=request.getContextPath()%>/adminResources/image/payment.png" alt="">
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							</a>
						</div>
						
</section>
				<section class="section">
					<div class="row">
						<div class="col-md-12 col-lg-12 col-xl-12">
							<!-- Support tickets -->
							<div class="card" style="overflow:auto;height: 400px">
								<div class="card-header">
									<h4>Feedbacks</h4>
									<!-- <form class="card-header-form">
										<input type="text" name="search" class="form-control"
											placeholder="Search">
									</form> -->
								</div>
								<div class="card-body" >
                                <c:forEach items="${listOfFeedback}" var="list">
									<div class="support-ticket media pb-1 mb-3">
										<img src="<%=request.getContextPath()%>/adminResources/image/user-1.png"
											class="user-img mr-2" alt="">
										<div class="media-body ml-3">
											<p class="my-1">${list.name}</p>
											
											<p class="my-1">${list.feedbackMsg }</p>
											
											<small>
											&nbsp;&nbsp; - ${list.t}
											</small>
										</div>
									</div>
									</c:forEach>
								</div>
			
					
							</div>
							<!-- Support tickets -->
						</div>
						
					</div>
				</section>
				
	<jsp:include page="footer.jsp"></jsp:include>


		</div>
	</div>
	<!-- General JS Scripts -->
	<script src="<%=request.getContextPath()%>/adminResources/js/app.min.js"></script>
	<!-- JS Libraies -->
	<script src="<%=request.getContextPath()%>/adminResources/js/apexcharts.min.js"></script>
	<!-- Page Specific JS File -->
	<script src="<%=request.getContextPath()%>/adminResources/js/index.js"></script>
	<!-- Template JS File -->
	<script src="<%=request.getContextPath()%>/adminResources/js/scripts.js"></script>
	<!-- Custom JS File -->
	<script src="<%=request.getContextPath()%>/adminResources/js/custom.js"></script>
</body>

</html>