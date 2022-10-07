<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
  <title>Hostel Management System</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/messResources/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/messResources/assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/messResources/assets/css/myfooter.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/messResources/assets/css/myheader.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/messResources/assets/css/styles.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/UserHeaderSidebar/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/UserHeaderSidebar/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/UserHeaderSidebar/fonts/fontawesome5-overrides.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/UserHeaderSidebar/sidebar.css">
    <script src="<%=request.getContextPath()%>/UserHeaderSidebar/sidebar.js"></script>	
    <script type="text/javascript">

function admissionOFF() {
	alert("admission process off");
}
</script>
</head>
<body>

<jsp:include page="headerOfUserSide.jsp"></jsp:include>
    <div class="container d-xl-flex align-items-xl-center">
        <div class="text-left" style="margin: 0;margin-top: 37px;padding-top: 37px;padding-bottom: 100px;">
            <div class="d-xl-flex justify-content-xl-center"><img class="d-xl-flex" src="<%=request.getContextPath()%>/messResources/assets/img/download.jpg" style="padding-left: 3vw;"></div>
            <div class="text-center" style="padding: 41px;">
                <h2 style="padding-left: 3vw;font-family: sans-serif;padding-top: 1vh;"><strong><span style="text-decoration: underline;">Hostel Mess</span></strong></h2>
                <p style="padding-left: 3vw;font-family: sans-serif;font-size: 18px;">The hostel premises comprises of a separate dining facility for hostel residents. The hostel mess has a separate dining hall and a well-equipped kitchen catering to more than 3200 students. Mess serves breakfast, lunch, evening tea and
                    dinner every day and the weekly menu is available with the mess in-charge. The food served is of high quality and meets the nutritional quality standards. Particular focus is laid to provide a well-balanced, nutritious diet with varying
                    food tastes to all the students.<br></p>
            </div>
            <div style="padding: 28px;">
                <h5 class="text-center" style="padding-left: 3vw;font-family: sans-serif;padding-top: 1vh;font-size: 32px;"><strong><span style="text-decoration: underline;">Highlights</span></strong></h5>
                <ul style="font-family: sans-serif;padding-left: 4vw;font-size: 18px;">
                    <li style="font-family: sans-serif;">Separate dining facility for all hostel residents.<br></li>
                    <li style="font-family: sans-serif;">Clean and hygienic environment.<br></li>
                    <li style="font-family: sans-serif;">Self-service system is promoted in the mess.<br></li>
                    <li style="font-family: sans-serif;">The menu is designed considering the nutritional requirements of the students.<br></li>
                    <li style="font-family: sans-serif;">The mess offers morning tea with regular breakfast, lunch, evening snacks and tea, dinner and milk to all hostellers.<br></li>
                </ul>
            </div>
            <div style="padding: 18px;">
                <h5 class="text-center" style="padding-left: 3vw;font-family: sans-serif;padding-top: 1vh;font-size: 30px;"><strong><span style="text-decoration: underline;">Rules</span></strong></h5>
                <ul style="padding-left: 4vw;font-size: 18px;">
                    <li style="font-family: sans-serif;">Separate dining facility for all hostel residents.<br></li>
                    <li style="font-family: sans-serif;">Clean and hygienic environment.<br></li>
                    <li style="font-family: sans-serif;">Self-service system is promoted in the mess.<br></li>
                    <li style="font-family: sans-serif;">The menu is designed considering the nutritional requirements of the students.<br></li>
                    <li style="font-family: sans-serif;">The mess offers morning tea with regular breakfast, lunch, evening snacks and tea, dinner and milk to all hostellers.<br></li>
                </ul>
            </div>
        </div>
    </div>
   
    <script src="<%=request.getContextPath()%>/messResources/assets/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/messResources/assets/bootstrap/js/bootstrap.min.js"></script>

</body>
</html>