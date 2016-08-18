(function(){

var app=angular.module("myApp", []);

var myctrl=function($scope,github,$interval,$log,
	$anchorScroll,$location){

    $scope.message="GitHub Viewer";
	$scope.searchuser="angular";
	$scope.repoSortOrder="-stargazers_count";
	

var onUserComplete=function(data){
	$scope.user=data;
	github.getRepos($scope.user).then(onRepos,onError);
	
};
var onRepos=function(data){
	$scope.repos=data;
	$location.hash("userDetails");
	$anchorScroll();
};
var onError=function(reason){
$scope.error="Could not fetch the data.";
}

var decrementCountdown=function(){
$scope.countdown-=1;
	if($scope.countdown<1){
		$scope.search($scope.searchuser);
	}
};
var countdownInterval=null;
var startCountdown=function(){
	countdownInterval= $interval(decrementCountdown,1000,$scope.countdown);
};
$scope.search=function(searchuser){
	$log.info("Searchin for"+searchuser);
var usertosearch=$scope.searchuser;
  github.getUser(usertosearch).then(onUserComplete,onError);
if(countdownInterval){
	$interval.cancel(countdownInterval);
	$scope.countdown=null;
}
};
	$scope.countdown=5;
	startCountdown();
};

app.controller("myctrl",myctrl);


}());


