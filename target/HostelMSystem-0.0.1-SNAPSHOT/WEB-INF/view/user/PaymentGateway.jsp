<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import="java.util.Calendar"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Hostel Management System</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
    
 <style>
body {
  font-family: Arial;
  font-size: 17px;
  padding: 5% 30%;;
}

* {
  box-sizing: border-box;
}

.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}

.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}

.container {
  background-color: #f2f2f2;
  padding: 10%;
  border: 1px solid lightgrey;
  border-radius: 3px;
}

input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

input[type=email] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

select{
 width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

input[type=date] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.btn {
  background-color: #4CAF50;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.btn:hover {
  background-color: #45a049;
}

a {
  color: #2196F3;
}

hr {
  border: 1px solid lightgrey;
}

span.price {
  float: right;
  color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  }
}

    </style>
</head>
<body>

<div class="row">
    <div class="col-50">
        <div class="container">
            <form method="post" action="payFees">
                <div class="col-50">
                    <h3 align="center">Payment</h3>
                    <div class="icon-container">
                        <i class="fa fa-cc-visa" style="color:navy;"></i>
                        <i class="fa fa-cc-amex" style="color:blue;"></i>
                        <i class="fa fa-cc-mastercard" style="color:red;"></i>
                        <i class="fa fa-cc-discover" style="color:orange;"></i>
                    </div>
                   
                    
                    <span style="color: red">${paymenterror}</span>
                    <label >Application id</label>
                    <input type="text" name="appId" required=true>
                    
                    <label >Email</label>
                    <input type="email" name="emailId" required=true>
                    
                    <label >Full Name</label>
                    <input type="text" name="fullName" required=true>
                    
                   
                    <label>Student Type</label>
                    <select name="studentType">
                      <option value="Regular">Regular</option>
                      <option value="Fresher">Fresher</option>
                    </select>
                    
                    <label>Hostel Fees</label>
                    <input type="text" name="Fees" disabled="true" style="widows: 48%" value="1500">
                    
                    <label>Mess Fees</label>
                    <input type="text" name="Fees" disabled="true" style="widows: 48%" value="1500">
                    
                    <label>Maintenance Fees</label>
                    <input type="text" name="Fees" disabled="true" value="1000">
                    
                   
                    <label>Total Fees</label>
                    <input type="text" name="Fees" disabled="true" value="4000">
                    
          			<%-- <label>Academic Year</label>   
          			  
          			<input type="text" name="AcademicYear" value="<%=Calendar.getInstance().get(Calendar.YEAR)%>"
          			 disabled="true" 
          			> --%>
          			
          			<label>Academic Year</label>
                    <select name="AcademicYear">
                      <option value="1st Year">1st Year</option>
                      <option value="2nd Year">2nd Year</option>
                      <option value="3rd Year">3rd Year</option>
                      <option value="4th Year">4th Year</option>
                    </select>
                    
                    

                </div>

                <input type="submit" value="Pay Fees" class="btn">
            </form>
        </div>
    </div>
    
</div>
</body>
</html>