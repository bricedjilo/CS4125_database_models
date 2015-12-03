'use strict'

dbApp.controller('Task6QueriesController', function Task6QueriesController(
		$scope, Task6QueriesService) {

	$scope.queries = Task6QueriesService.getQueries;
        
	$scope.getProcessedQuery = function(queryId) {
		$scope.fields = Task6QueriesService.getProcessedQuery(queryId);
		console.log($scope.fields);
	};

	$scope.getAdditionalInput = function(val, field) {
            return Task6QueriesService.getAdditionalInput(val, field);
	};
	
        $scope.results = {};
	$scope.getQueryResults = function(item, field) {
		//console.log($model);
            Task6QueriesService.getQueryResults(item, field).then(function(data){
               // $scope.results = data;
                $scope.results  = Task6QueriesService.mapToAttributes(field.attributes, data); 
                console.log($scope.results);
            });
	};

	//$scope.fieldObject={};
});

//
// $scope.getLocation = function(val) {
// return $http.get('//maps.googleapis.com/maps/api/geocode/json', {
// params : {
// address : val,
// sensor : false
// }
// }).then(function(response) {
// return response.data.results.map(function(item) {
// return item.formatted_address;
// });
// });
// };
