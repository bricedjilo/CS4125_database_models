'use strict';

dbApp.controller('ServicesController', function ServicesController(servicesService, $scope){
    
    $scope.services = servicesService.getServices;
    
});


