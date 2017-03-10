<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<script>
var app = angular.module("myApp", []);
app.controller("myCtrl", function($scope) {
    $scope.records = ${employees};
    console.log($scope.records);  
});
</script>
<style type="text/css">
h1 {
	backgroundcolor: blue;
}

.display {
	background-color: pink;
	width: 1000px;
}

.leftside {
	float: left;
}

.rightside {
	float: right;
}
</style>

</head>
<center>
<body>
	<div ng-app="myApp" ng-controller="myCtrl">
		<table>
			<h1 class="">My First Angular App Looged in as: ${loggedInUser}</h1>
			<tr class="display" ng-repeat="record in records">
				<div>
					<td>
						<table>
							<tr>
								<td>Emp ID: {{record.empId}}</td> <td>Emp Role: {{record.empRole}}</td> 
							</tr>
							<tr>
							<td>Emp Name: {{record.empName}}</td> <td>Superwiser Name: {{record.supervisorName}}</td>
							</tr>
						</table>
					</td>
			</tr>
		</table>
	</div>
</body>
</center>
</html>