(function(){
var github=function($http,$log){

var getUser=function(usertosearch){

	$log.info("Searchin Inside Github"+usertosearch);
        return $http.get("http://api.github.com/users/" + usertosearch)
        .then(function(response){
         return response.data;
        });
    };
var getRepos=function(user){
	$log.info("Inside Get Repos of github"+user.repos_url);
	return $http.get(user.repos_url)
           .then(function(response){
              return response.data;
           });
};

return{
getUser:getUser,
getRepos:getRepos
};

};

var module=angular.module("myApp");
module.factory("github",github);

}());