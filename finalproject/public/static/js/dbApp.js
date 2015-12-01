'use strict';

// Declare app level module which depends on views, and components
var dbApp = angular.module('dbApp', ['ngSanitize','ngResource','ngRoute','ui.bootstrap']);

dbApp.config(['$routeProvider', function($routeProvider) {
    $routeProvider
    
    .when('/home', {
        templateUrl: 'templates/home.html'
     })
    .when('/employees', {
       templateUrl: 'templates/person.html',
       controller: 'PersonController'
    })    
    .when('/task6_queries', {
       templateUrl: 'templates/task6_queries.html',
       controller: 'Task6QueriesController'
    }) 
    .otherwise({
       redirectTo: '/home'
    });
 }]);
 