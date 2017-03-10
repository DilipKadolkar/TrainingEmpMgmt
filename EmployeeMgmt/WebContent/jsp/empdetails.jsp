<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee</title>

</head>
 <script src="//code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="//code.angularjs.org/1.6.0/angular.min.js"></script>
<script type="text/javascript"> 
var app = angular.module('Myapp', []);
app.directive('dateNow', ['$filter', function($filter) {
	  return {
	    link: function( $scope, $element, $attrs) {
	      $element.text($filter('date')(new Date(), $attrs.dateNow));
	    }
	  };
	}])
	
  app.controller('myCtrl', function ($scope) {
    $scope.results = ${employees};
    
}); 


$(document).ready(function() {
    $('.display').click(function(e) {  
    	alert("hi")
    	
      var text = $('#emp').text();
      alert(text);
      detailForm.submit();
    });
});

</script>
<style>

.header {
  border:2px solid #0094ff;
  -webkit-border-top-left-radius:2px;
  -webkit-border-top-right-radius:2px;
  -moz-border-radius-topleft:2px;
  -moz-border-radius-topright:2px;
  border-top-left-radius:2px;
  border-top-right-radius:2px;
  width:100%;
  font-size:10pt; /* or whatever */
  background-color: #9BD7EB;
  overflow: hidden;
}
.header h3 {
         float:right;
   }
h3{
    float:right;
   }
.display{
 border:2px solid #9E633C;
 width: 80%; 
 height: 60px; 
 background-color: #F7A36A;
 font-size:10pt; /* or whatever */
   
}

div.display a:link {
  color: #123456;
}

div.display a:hover {
  color: #123;
}

div.display a:visited {
  color: #654321;
}

.leftside {
         float:left;
   }
 .rightside {
         float:right;
   }
</style>
<body ng-app="Myapp">
<div class="header">
 <h2>My First Angular App</h2>
 <h3>  Logged in as : ${loggedInUser}<br> Date: <span date-now="MM/dd/yyyy"></span></h3>
 </div>
<br>
<br>
 <div ng-controller="myCtrl">
  <form id="detailForm" method="post" action="employee" modelAttribute="empBean" > 
    <div ng-repeat="result in results" class="display">
 	  <div class="leftside">Emp ID:<span id="empId"> {{ result.empId }}</span> <br>
    Emp Name:  <span id="empName">{{ result.empName}} </span></div> 
     
      <div class="rightside">
  	  Emp Role: <span id="empRole">{{ result.empRole }} </span><br>
      Emp Supervisor Name:<span id="supervisorName"> {{ result.supervisorName}} </span>
      </div>
    </div>
     </form>
</div>

</body>
</html>