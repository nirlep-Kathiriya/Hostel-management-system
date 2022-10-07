<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<title>Hostel Management System</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/applicationFormResources/assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/applicationFormResources/assets/css/style.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/messResources/assets/css/myheader.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/homePageResources/assets/css/Footer-Basic.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/homePageResources/assets/css/Footer-Dark.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/UserHeaderSidebar/fonts/fontawesome-all.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/UserHeaderSidebar/fonts/font-awesome.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/UserHeaderSidebar/fonts/fontawesome5-overrides.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/UserHeaderSidebar/sidebar.css">
<script src="<%=request.getContextPath()%>/UserHeaderSidebar/sidebar.js"></script>

<SCRIPT type="text/javascript">
	function ValidateFileUpload() {
		var fuData = document.getElementById('fileChooser');
		const fi = document.getElementById('fileChooser');
		var FileUploadPath = fuData.value;

				
		//To check if user upload any file
		if (FileUploadPath == '') {
			alert("Please upload an image");
			
			   return false;

		} else {
			
			if (fi.files.length > 0) { 
	            for (i = 0; i <= fi.files.length - 1; i++) { 
	  
	                const fsize = fi.files.item(i).size; 
	                const file = Math.round((fsize / 1024)); 
	                // The size of the file. 
	                if (file > 5120) { 
	                    alert( 
	                      "File too Big, please select a file less than 5 MB"); 
	                       fi.value="";
	                    return false;
	                    
	                }
	                else
	                {
	                	var Extension = FileUploadPath.substring(
	        					FileUploadPath.lastIndexOf('.') + 1).toLowerCase();

	        			//The file uploaded is an image

	        			if (Extension == "png" || Extension == "jpeg" || Extension == "jpg") {

	        				// To Display
	        				if (fuData.files && fuData.files[0]) {
	        					var reader = new FileReader();

	        					reader.onload = function(e) {
	        						$('#blah').attr('src', e.target.result);
	        					}

	        					reader.readAsDataURL(fuData.files[0]);
	        				}

	        			}

	        			//The file upload is NOT an image
	        			else {
	        				alert("Photo only allows file types of PNG, JPG and JPEG. ");
	        				fuData.value="";
	        			      return false;

	        			}
	                }
	            } 
	        } 

			
		}
	}
	
	function Filevalidation(){ 
        const fi = document.getElementById('fileChooser'); 
        // Check if any file is selected. 
        
    } 
</SCRIPT>
</head>
<body>
	<jsp:include page="headerOfUserSide.jsp"></jsp:include>

	<div class="registration-form">
		<form action="uploadDocument" method="post"
			enctype="multipart/form-data">
			<div class="form-row">
				<div class="col-md-12 offset-md-0" style="margin-bottom: 30px;">
					<h1 class="text-center">
						<span>Upload Document</span>
					</h1>
				</div>
			</div>
			<input type="hidden" name="email" value="${email }" /> <input
				type="hidden" name="appno" value="${appno }" />
			<div class="form-group">
				<div class="form-row">
					<div class="col">
						<label class="col-form-label">Profile Photo:</label>
					</div>
					<div class="col">
						<input
							class="float-none d-md-flex justify-content-md-center align-items-md-center"
							type="file" required="true" name="profilePhoto" accept="image/*"
							id="fileChooser" onchange="return ValidateFileUpload()">
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="form-row">
					<div class="col">
						<label class="col-form-label">Graduation Transcript:</label>
					</div>
					<div class="col">
						<input type="file" required="" name="graduationTranscript"
							id="fileChooser" onchange="return ValidateFileUpload()">
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="form-row">
					<div class="col">
						<label class="col-form-label">Graduation Marksheet:</label>
					</div>
					<div class="col">
						<input type="file" required="" name="graduationMarksheet"
							id="fileChooser" onchange="return ValidateFileUpload()">
					</div>
				</div>
			</div>
			<div class="form-row">
				<div class="col-md-4">
					<label class="col-form-label d-lg-flex">Identity Proof:</label>
				</div>
				<div class="col-md-8">
					<div
						class="dropdown d-md-flex flex-shrink-1 justify-content-md-center align-items-md-center">
						<select style="margin-left: 150px; background-color: white;"
							name="identityProof">

							<option class="dropdown-item" value="SSN">SSN</option>
							<option class="dropdown-item" value="Driving Licence">Driving Licence</option>
							<option class="dropdown-item" value="PassPort">PassPort</option>

						</select>
						<div class="col" style="float: right;">
							<input type="file" name="identityProofImage" id="fileChooser"
								onchange="return ValidateFileUpload()">
						</div>
					</div>
				</div>


			</div>
			<div class="form-group">
				<div class="form-row" style="margin-bottom: 0px; margin-top: 14px;">
					<div class="col">
						<label class="col-form-label">Address Proof:</label>
					</div>
					<div class="col">
						<input type="file" name="addressProof" id="fileChooser"
							onchange="return ValidateFileUpload()">
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="form-row">
					<div class="col">
						<label class="col-form-label">Addmission Slip:</label>
					</div>
					<div class="col">
						<input type="file" name="addmissionSlip" id="fileChooser"
							onchange="return ValidateFileUpload()">
					</div>
				</div>
			</div>
			<div class="form-group"></div>
			<div class="form-group">
				<button class="btn btn-primary btn-block create-account"
					type="submit">Upload Documents</button>
			</div>
		</form>
		<div class="social-media"></div>
	</div>


	<script
		src="<%=request.getContextPath()%>/applicationFormResources/assets/js/jquery.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/applicationFormResources/assets/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/applicationFormResources/assets/js/script.js"></script>
</body>
</html>