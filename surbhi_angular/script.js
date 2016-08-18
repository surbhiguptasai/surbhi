var myApp = angular.module('myApp',[]);

myApp.controller('GreetingController', ['$scope', function($scope) {
  $scope.greeting = 'ABCD!';



  

    var worker = createWorker();

  worker.job1();
  worker.job2();
  


}]);


  var createWorker = function() {
    var workcount = 0;
    var task1 = function() {
    	console.log("task1" + workcount);
      workcount += 1;
      
    };
    var task2 = function() {
    	workcount += 1;
      console.log("task2" + workcount);
    };
    return {
      job1: task1,
      job2: task2
    };
  };
 