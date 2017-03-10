<%@include file="include.jsp"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<style>
form {
	border: 3px solid #f1f1f1
}	

input[type=text], input[type=password] {
	width: 200px;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

.submitbtn {
	background-color: #003366;
	color: white;
	padding: 10px 18px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100px;
}

.cancelbtn {
	background-color: #003366;
	color: white;
	padding: 10px 18px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100px;
}

.container {
	padding: 16px;
}

.psw {
	float: right;
	padding-top: 16px;
}

.page {
	border: 1px solid #ccc;
	width: 500px;
}
</style>
</head>

<body>
	<center>
	<div class="page">
		<h1 align="left" style="background-color: #add8e6;" >My First Angular App</h1>
		<h2 align="center" style="background-color: #add8e6;" >Login</h2>
		<font color="red">${message}</font>
		<form:form id="loginForm" method="post" action="/EmployeeMgmt/login" modelAttribute="loginBean">
			<div class="container">
				<label  path="username" align="center"><b>Username</b></label> <br> <input type="text" placeholder="Enter Username" name="username" required /> <br>
				<label  path="password" align="left"><b>Password</b></label> <br> <input type="password" placeholder="Enter Password" name="password" required /> <br>
				<button type="submit" class="submitbtn">Login</button>
				<button type="button" class="cancelbtn">Cancel</button>
			</div>
		</form:form>
	</div>
	</center>	
	<script type="text/javascript">
	
		angular.module("myApp", []).controller("loginController")
	</script>

</body>
</html>