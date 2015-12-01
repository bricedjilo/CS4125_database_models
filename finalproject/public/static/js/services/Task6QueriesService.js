'use strict'

dbApp.factory('Task6QueriesService', function($http, $resource, $q){
	
	return {
		getProcessedQuery: function(queryId) {
			switch(queryId) {
		    case 1:
		        return [
		                {
		                	label: "Company name",
		                	name: "companyName"
		                }];
		        break;
		    case 2:
		    	return;
		    	// return queryId;
		    // default: return "hh";
			}
		},
		getCompaniesByName: function(val) {
			return $http.get('/companies/name/'+val.trim()).then(function(response) {
				return response.data.map(function(item) {
					return item.name +", - " + item.primary_sector;
				});
			});
		},
		getQueryResults: function(company) {
			return $http.get('/employees/companies/'+company.split(",")[0].trim())
			.then(function(response) {
				return response.data.map(function(item) {
					return item.name;
				});
			});
		},
// getResultForThisQuery: function() {
// var deferred = $q.defer();
// return $resource('/').get(
// ,function(){
//				
// },
// function() {
//				
// });
// return deferred.promise;
// },
		getQueries: [
             {
            	 qid: 1,
            	 query:"List a company's workers by names",
             },
             {
            	 qid: 2,
            	 query: "List a company's staff by salary in descending order"
             },
             {
            	 qid: 3,
            	 query: "List companies' labor cost (total salaries and wage rates by 1920 hours) in descending order."
             }
        ]
	}
	
	
});
