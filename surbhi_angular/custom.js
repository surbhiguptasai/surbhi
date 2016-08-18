//console.log("TEST")
var app=angular.module('demoApp', []);

app.controller("testCtrl",function($rootScope){
	console.log("Inside test controller");
	$rootScope.name="abcd";
	
});
app.controller("2Ctrl", function($rootScope){
	// $scope.name="test";
});