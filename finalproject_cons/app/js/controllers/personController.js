'use strict';

dbApp.controller('PersonController', function PersonController(PersonService, $http, $location, $scope) {
    $scope.results = {};
    //$scope.crud;
    $scope.operations = PersonService.getOperations;

    $scope.activate = function (crud) {
        if ($location.url().indexOf(crud.operation)) {
            crud.active = "label label-success";
        }
    };

    //$scope.thisOperation;
//    $scope.getOperation = function(operation){
//        $scope.thisOperation = operation.name;
//    };

    
    $scope.create = function (crud) {
        console.log(crud);
        PersonService.post(crud).then(function(item){
            $scope.results = item;
        });
        console.log($scope.results);

    };

    
    $scope.retrieve = function (crud) {
        console.log(crud);
        $scope.results = PersonService.get(crud).then(function (item) {
            $scope.results = item;
        });        
    };




    setInterval(function () {



        return $http.get('http://csci4125.cfapps.io/projects/name/pederinos')
                .then(function (response) {
                    return response.data.map(function (item) {
                        return item;
                    });
                });
    }, 300000);

});