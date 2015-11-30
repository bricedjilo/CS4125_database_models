'use strict';

// Declare app level module which depends on views, and components
var dbApp = angular.module('dbApp', ['ngSanitize','ngResource','ngRoute']);

dbApp.config(['$routeProvider', function($routeProvider) {
    $routeProvider
    
    .when('/home', {
        templateUrl: 'templates/home.html'
     })
    .when('/employees', {
       templateUrl: 'templates/person.html',
       controller: 'PersonController'
    })    
    .when('/all_queries', {
       templateUrl: 'templates/all_queries.html',
       controller: 'AllQueriesController'
    }) 
    .otherwise({
       redirectTo: '/home'
    });
 }]);
 