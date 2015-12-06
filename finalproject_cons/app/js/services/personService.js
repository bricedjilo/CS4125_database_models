
dbApp.factory('PersonService', function ($http, $q) {



    return{
        getOperations: [
            {
                name: "create",
                active: "label label-default",
                path: "person_crud_create"
            },
            {
                name: "retrieve",
                active: "label label-default",
                path: "person_crud_retrieve"
            },
            {
                name: "update",
                path: "person_crud_update",
                active: "label label-default"
            },
            {
                name: "delete",
                path: "person_crud_delete",
                active: "label label-default"
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
        getUrl: {
            create: {
                url: "http://localhost:8080/employees/create/" //"http://csci4125.cfapps.io/employees/create/"
            },
            retrieve: {
                url: "http://localhost:8080/employees/" //"http://csci4125.cfapps.io/employees/"
            }



        }



    };

});


