'use strict'

dbApp.controller('Task6QueriesController', function Task6QueriesController(
		$scope, $http, Task6QueriesService) {

	$scope.queries = Task6QueriesService.getQueries;
	$scope.getProcessedQuery = function(queryId) {
		$scope.fields = Task6QueriesService.getProcessedQuery(queryId);
		console.log($scope.fields);
	}

	$scope.getCompaniesByName = function(val) {
		return Task6QueriesService.getCompaniesByName(val);
	};
	
//	$scope.results = {};
	$scope.getQueryResults = function(company) {
		//console.log($model);
		$scope.results = Task6QueriesService.getQueryResults(company);
	//	 console.log($scope.results);
	//	 return $scope.results;
	};

	
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
