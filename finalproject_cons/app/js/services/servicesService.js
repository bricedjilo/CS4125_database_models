'use strict';

dbApp.factory('servicesService', function ($http, $resource, $q) {
   
    return {
        getServices: [
            {   
                index: 0,
                name: "Person or Employees",
                imageUrl: "/img/worker.jpg",
                dependents: [
                    "Phone", "EmployeeAddress", "Takes", "Works", "HasSkill"
                ]
            },
            {
                index: 1,
                name:"Companies",
                imageUrl:"/img/worker.jpg",
                dependents: [
                    "CompanyAddress", "Speciality", "Project", "Jobs", "IsAssigned"
                ]
            },
            {
                index: 2,
                name:"Courses",
                imageUrl:"/img/worker.jpg",
                dependents: [
                    "Section", "TrainingForSkills", "Prerequisites", "  ", ".  "
                ]
            },
            {
                index: 3,
                name:"Job Profiles",
                imageUrl:"/img/worker.jpg",
                dependents: [
                    "Jobs", 'RequiredSkill', " "
                ]
            },
            {
                index: 4,
                name:"Knowledge or Skills",
                imageUrl:"/img/worker.jpg",
                dependents: [
                    'HasSkill', "TrainingForSkill", "RequiredSkill"
                ]
            }
            
        ]
            
         
    };
    
});