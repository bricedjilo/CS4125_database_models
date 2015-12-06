
dbApp.factory('PersonService', function ($http, $q, $location) {

    return{
        getOperations: [
            {
                name: "create",
                state: "label label-default",
                path: "person_crud_create"
            },
            {
                name: "retrieve",
                state: "label label-default",
                path: "person_crud_retrieve"
            },
            {
                name: "update",
                path: "person_crud_update",
                state: "label label-default"
            },
            {
                name: "delete",
                path: "person_crud_delete",
                state: "label label-default"
            }
        ],
        post: function (crud) {
            var deferred = $q.defer();
            $http.post(this.getUrl[crud.name].url, crud.person)
                .success(function (data) {
                    deferred.resolve(data);
                    //console.log(data);
                }).error(function (error) {
                   // console.log(error);
                    deferred.reject();
            });
            return deferred.promise;
        },
        get: function(crud){
            return $http.get(this.getUrl[crud.name].url+crud.person.param+"/"+crud.person[crud.person.param])
                .then(function (response) {
                    return response.data.map(function(item){
                        return item;
                    });
                });
        },
        put: function(crud){
            var deferred = $q.defer();
            $http.put(this.getUrl[crud.name].url+crud.id, crud.person)
                .success(function (data) {
                    deferred.resolve(data);
                    //console.log(data);
                }).error(function (error) {
                   // console.log(error);
                    deferred.reject();
            });
            return deferred.promise;
        },
        getUrl: {
            create: {
                url: "http://csci4125.cfapps.io/employees/create/" //"http://localhost:8080/employees/create/" //
            },
            retrieve: {
                url: "http://csci4125.cfapps.io/employees/" //"http://localhost:8080/employees/" //
            },
            update: {
                url: "http://localhost:8080/employees/update/" //"http://csci4125.cfapps.io/employees/"
            }
        },
        getActivationClass: function(operation){
            return ($location.url().indexOf(operation)>=0)?"label label-success":"label label-default";
        }



    };

});


