'use strict'

dbApp.factory('Task6QueriesService', function ($http, $resource, $q) {

    return {
        getProcessedQuery: function (queryId, makeUrl) {
            switch (queryId) {
                case 1:
                    return [{
                            placeholder: "Company name - at least two letters",
                            label: "Select a company",
                            name: "companyName",
                            additionalInfo: "name",
                            attributes: {Name:"name",CompId:"comp_id",PersonId:"per_id"},
                            urlAdditionalInfo: this.makeUrl('http://csci4125.cfapps.io/companies/name/')(""),
                            urlFinalQuery: this.makeUrl('http://csci4125.cfapps.io/employees/companies/')(""),
                            isAdditionalInputNeeded: true
                        }];
                case 2: 
                    return [{
                            placeholder: "Company name - at least two letters",
                            label: "Select a company",
                            name: "companyName",
                            additionalInfo: "name",
                            attributes: {Name:"name",
                                PersonId:"per_id",payRate:"pay_rate",payType:"Pay_type"},
                            urlAdditionalInfo: this.makeUrl('http://csci4125.cfapps.io/companies/name/')(""),
                            urlFinalQuery: this.makeUrl('http://csci4125.cfapps.io/employees/companies/')("/salary/"),
                            isAdditionalInputNeeded: true
                        }];
                case 3: 
                    return [{
                            placeholder: "",
                            label: "",
                            name: "",
                            additionalInfo: "",
                            attributes: {Company:"name",LaborCost:"laborCost"},
                            urlAdditionalInfo: "",
                            urlFinalQuery: this.makeUrl('http://csci4125.cfapps.io/companies/laborcost/')(""),
                            isAdditionalInputNeeded: false
                        }];
                case 4: 
                    return [{
                            placeholder: "Employee name - at least two letters",
                            label: "Select a person",
                            name: "employeeName",
                            additionalInfo: "name",
                            attributes: {Name:"name",
                                PersonId:"per_id",JobCode:"job_code",Title:"title",CompId:"comp_id"},
                            urlAdditionalInfo: this.makeUrl('http://csci4125.cfapps.io/employees/name/')(""),
                            urlFinalQuery: this.makeUrl('http://csci4125.cfapps.io/jobs/holds/')(""),
                            isAdditionalInputNeeded: true
                        }];
                case 5: 
                    return [{
                            placeholder: "Project title name - at least two letters",
                            label: "Select a project",
                            name: "projectName",
                            additionalInfo: "title",
                            attributes: {ProjectId:"project_id",Title:"title"},
                            urlAdditionalInfo: this.makeUrl('http://csci4125.cfapps.io/projects/name/')(""),
                            urlFinalQuery: this.makeUrl('http://csci4125.cfapps.io/employees/projects/')(""),
                            isAdditionalInputNeeded: true
                        }];
            }
        },
        makeUrl: function(base){
            return function(param1) {
                return function(param2){
                    return base + param2 + param1;
                };
            };
        },
        getAdditionalInput: function (val, field) {
            return $http.get(field.urlAdditionalInfo(val.trim()))
                    .then(function (response) {
                        return response.data.slice(0, 8).map(function (item) {
                            return item[field.additionalInfo];
                        });
                    });
        },
        getQueryResults: function (item, field) {
            console.log(field);
            var param = item || "";
            return $http.get(field.urlFinalQuery(param.split(",")[0].trim()))
                .then(function (response) {
                    return response.data.map(function (item) {
                       return item;
                    });
                });
        },
        mapToAttributes: function(attributes, items) {
            return items.map(function(item){
                return Object.keys(attributes).map(function(key){
                     console.log(attributes);
                    return key +": " + item[attributes[key]];
                   
                });
            });
        },
        getQueries: [
            {
                qid: 1,
                query: "1. List a company's workers by names",
            },
            {
                qid: 2,
                query: "2. List a company's staff by salary in descending order"
            },
            {
                qid: 3,
                query: "3. List companies' labor cost (total salaries and wage rates by 1920 hours) in descending order."
            },
            {
                qid: 4,
                query: "4. Find all the jobs a person is currently holding."
            },
            {
                qid: 5,
                query: "5. List all the workers who are working for a specific project."
            },
            {
                qid: 6,
                query: "6. List a person’s knowledge/skills in a readable format."
            },
            {
                qid: 7,
                query: "7. List the skill gap of a worker between his/her job(s) and his/her skills."
            },
            {
                qid: 8,
                query: "8. List the required knowledge/skills of a job profile in a readable format."
            },
            {
                qid: 9,
                query: "9. List a person’s missing knowledge/skills for a specific job in a readable format."
            },
            {
                qid: 10,
                query: "10. Find the courses each of which alone can cover a given skill set."
            }
        ]
    };


});
