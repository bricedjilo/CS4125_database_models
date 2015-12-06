'use strict';

// Declare app level module which depends on views, and components
var dbApp = angular.module('dbApp', ['ngSanitize','ngResource','ngRoute','ui.bootstrap','ngMessages']);


dbApp.config(['$routeProvider', function($routeProvider) {
    $routeProvider
    
    .when('/home', {
        templateUrl: 'templates/home.html'
     })
     .when('/services', {
       templateUrl: 'templates/services.html',
       controller: 'ServicesController'
    }) 
    .when('/employees', {
       templateUrl: 'templates/person.html',
       controller: 'PersonController'
    })   
    .when('/person_crud_create', {
       templateUrl: 'templates/person_crud_create.html',
       controller: 'PersonController'
    }) 
    .when('/person_crud_retrieve', {
       templateUrl: 'templates/person_crud_retrieve.html',
       controller: 'PersonController'
    }) 
    .when('/person_crud_update', {
       templateUrl: 'templates/person_crud_update.html',
       controller: 'PersonController'
    }) 
    .when('/person_crud_delete', {
       templateUrl: 'templates/person_crud_delete.html',
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
 