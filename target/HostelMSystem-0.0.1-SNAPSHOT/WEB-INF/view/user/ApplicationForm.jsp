<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<title>Hostel Management System</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/applicationFormResources/assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/applicationFormResources/assets/fonts/font-awesome.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/applicationFormResources/assets/fonts/simple-line-icons.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/applicationFormResources/assets/css/style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/messResources/assets/css/myheader.css">	
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/homePageResources/assets/css/Footer-Basic.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/homePageResources/assets/css/Footer-Dark.css">
	
    <link rel="stylesheet" href="<%=request.getContextPath()%>/UserHeaderSidebar/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/UserHeaderSidebar/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/UserHeaderSidebar/fonts/fontawesome5-overrides.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/UserHeaderSidebar/sidebar.css">
    <script src="<%=request.getContextPath()%>/UserHeaderSidebar/sidebar.js"></script>	

<script type="text/javascript">
  function find_state()
  { 
		  var state=document.getElementById("state_name");
		  var city=document.getElementById("city");
		  
		  var i;
		  for(i=0;i<city.length;i++)
		  {
			  city[i].remove(city[i]);
			  i--;
		  }  
		 
		  var htp=new XMLHttpRequest();
		  htp.onreadystatechange=function()
		  {
			  if(htp.readyState==4)
			  {
				 /* alert(htp.responseText);  */
				 var jsn=JSON.parse(htp.responseText);
				 	 for(var i=0;i<jsn.length;i++)
					 {
						var optn=document.createElement("option");
						optn.text=jsn[i].cityName;
						optn.value=jsn[i].cityName;
						city.options.add(optn);
					 } 
	             
			  }
		  }
		  htp.open("post","searchCity?state="+state.value+"  ",true);
		  htp.send();
	  }	
	</script>
</head>
<body>

<jsp:include page="headerOfUserSide.jsp"></jsp:include>



	<div class="registration-form"
		style="background-size: cover; background-repeat: no-repeat; background-image: url(&amp;quot;<%=request.getContextPath()%>/applicationFormResources/assets/img/b.jpg&amp;quot;);">
		<s:form class="text-monospace" action="insertapplicationform" modelAttribute="applicationformvo"
			method="post" autocomplete="on">
			<!--            <div class="form-icon" style="background-color: rgb(33,93,130);"><span><i class="icon-user icon"></i></span></div>-->
			<h3 class="text-center"
				style="padding-bottom: 20px; line-height: 59px; letter-spacing: 0; color: rgb(33, 93, 130);">
				<strong>Application Form</strong>
			</h3>
			<h5 style="padding-bottom: 10px; color: rgb(33, 93, 130);">
				<strong>Personal Details:</strong>
			</h5>
			<div class="form-group">
				<s:input class="form-control item" path="firstName" id="fname"
					placeholder="First Name" minlength="2" maxlength="30" required="true" />
			</div>
			<div class="form-group">
				<s:input class="form-control item" path="middleName" id="mname"
					placeholder="Middle Name" minlength="2" maxlength="30" required="false" />
			</div>
			<div class="form-group">
				<s:input class="form-control item" path="lastName" id="lname"
					placeholder="Last Name" minlength="2" maxlength="30" required="true" />
			</div>
			<div class="form-group">
				<s:input class="form-control item" path="email" id="email"
					placeholder="Email" required="true" minlength="10"
					pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" />
			</div>

			<div class="form-group">
				<div class="form-row">
					<div class="col" style="padding-left: 30px">
						<div>
							Gender :
							<s:radiobutton id="genderMale" path="gender"  value="male" name="gender" />
							<label> &nbsp Male</label>
							<s:radiobutton path="gender" value="female" name="gender" />
							<label> &nbsp Female</label>
						</div>
					</div>
				</div>
			</div>
			<div class="form-group">
				<s:input class="form-control item" path="mobileNo" id="mobile"
					placeholder="Mobile Number" minlength="10" required="true" maxlength="10" />
			</div>
			<div class="form-group">
				<s:input class="form-control item" path="emergencyNo" id="e_mobile"
					placeholder="Emergency Mobile Number" minlength="10" required=""
					maxlength="10" />
			</div>
			<div class="form-group">
				<s:input class="form-control item" path="birthDate" id="birth-date"
					placeholder="Birth date(DD/MM/YYYY)" required="true" />
			</div>
			<div class="form-group">
				<s:textarea class="form-control" path="address"
					placeholder="Street Address" rows="3" required="true" minlength="10"/>
			</div>
			<br>
			<div class="form-group">
				<span>Select State :-</span>
				<s:select path="state" style="margin-right: 30%;float: right;background-color: rgb(20, 133, 238);"
					class="btn btn-primary dropdown-toggle" aria-expanded="true" id="state_name" onchange="find_state()">
					<f:forEach items="${statelist}" var="sl">
					<s:option class="dropdown-item" value="${sl.stateName}" >${sl.stateName }</s:option>
					</f:forEach>
				</s:select>
			</div>
			<br>
			<div class="form-group">
				<span>Select City :-</span>
				<s:select path="city" style="margin-right: 30%;float: right;background-color: rgb(20, 133, 238); "
					class="btn btn-primary dropdown-toggle" aria-expanded="true"
					id="city">
					<s:option class="dropdown-item" value="Atmore" >Atmore</s:option>
					<s:option class="dropdown-item" value="Ozark" >Ozark</s:option>
				</s:select>
			</div>
			<br>
			<div class="form-group">
				<s:input path="pinCode" class="form-control item" 
					placeholder="zipcode"  required="true" />
			</div>
			<br>
			
			
			<br>

			<div class="form-group">
				<button class="btn btn-primary btn-block create-account"
					type="submit" style="background-color: rgb(20, 133, 238);">Submit</button>
			</div>
		</s:form>
		<div class="social-media" style="background-color:rgb(20, 133, 238);">
		</div>

	</div>

	
	
	<script type="text/javascript">
		var male = document.getElementById("genderMale");
		male.checked=true;
	</script>
	<script src="<%=request.getContextPath()%>/applicationFormResources/assets/js/jquery.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/applicationFormResources/assets/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
	<script src="<%=request.getContextPath()%>/applicationFormResources/assets/js/script.js"></script>
	<script
		src="https://cdn.rawgit.com/PascaleBeier/bootstrap-validate/v2.2.0/dist/bootstrap-validate.js"></script>

	<script>
        bootstrapValidate('#fname','min:3:Enter at least 3 characters.')
        bootstrapValidate('#fname','alpha:Enter only alphabets.')
        bootstrapValidate('#mname','min:3:Enter at least 3 characters.')
        bootstrapValidate('#mname','alpha:Enter only alphabets.')
        bootstrapValidate('#lname','min:3:Enter at least 3 characters.')
        bootstrapValidate('#lname','alpha:Enter only alphabets.')
        bootstrapValidate('#email','email:Enter a valid email address.')
        bootstrapValidate('#mobile','numeric:Enter numbers only.')
        bootstrapValidate('#e_mobile','numeric:Enter numbers only.')
        bootstrapValidate('#g_result','numeric:Enter numeric value.')
        bootstrapValidate('#acpc','numeric:Enter numeric value.')
        bootstrapValidate('#password-1','matches:#password:Enter the same password as above.')
    </script>
</body>
</html>