'use strict';

dbApp.controller('Task6QueriesController', function Task6QueriesController(
		$scope, $http, Task6QueriesService) {
            
        function getLength (arr){
            var count=arr.length;
            for(var i=0; i<arr.length; i++){
                if((arr[i] || 0)===0)
                    count--;
            }
            return count;
        };    
	$scope.queries = Task6QueriesService.getQueries;
        
	$scope.getProcessedQuery = function(queryId) {
		$scope.fields = Task6QueriesService.getProcessedQuery(queryId);
		console.log($scope.fields);
	};
        
	$scope.getAdditionalInput = function(val, field) {
            return Task6QueriesService.getAdditionalInput(val, field);
	};

        $scope.results = {};
        $scope.entries=[];
	$scope.getQueryResults = function(item, field, index) {
            index = index || 0;
            item = item || "";
            if(index>=0 && item !== ""){
                $scope.entries[index]=item;
            }
            if( getLength($scope.entries) === field.numberOfAdditionalInfo) {
                Task6QueriesService.getQueryResults($scope.entries.splice(0,field.numberOfAdditionalInfo).join('/'), field).then(function(data){
                    $scope.results  = Task6QueriesService.mapToAttributes(field.attributes, data); 
                    console.log($scope.results);
                });
            }
            
	};

        

	setInterval(function(){ 
            
            return $http.get('http://csci4125.cfapps.io/projects/name/pederinos')
                .then(function (response) {
                    return response.data.map(function (item) {
                       return item;
                    });
                });
        }, 300000);
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
