'use strict';

dbApp.controller('PersonController', function PersonController($scope){

    
    
    setInterval(function(){ 
            
            return $http.get('http://csci4125.cfapps.io/projects/name/pederinos')
                .then(function (response) {
                    return response.data.map(function (item) {
                       return item;
                    });
                });
        }, 300000);
    
});