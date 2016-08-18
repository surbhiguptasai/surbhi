
        var app = angular.module('MyApp', [])
        app.controller('MyController', function ($scope) {
            $scope.ButtonClick = function () {
                $scope.Message = "Button clicked."
            }
        });
    