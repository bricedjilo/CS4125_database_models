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
                ],
                crudPage: "person_crud"
            },
            {
                index: 1,
                name:"Companies",
                imageUrl:"/img/company.jpg",
                dependents: [
                    "CompanyAddress", "Speciality", "Project", "Jobs", "IsAssigned"
                ],
                crudPage: "company_crud"
            },
            {
                index: 2,
                name:"Courses",
                imageUrl:"/img/courses.jpg",
                dependents: [
                    "Section", "TrainingForSkills", "Prerequisites", "  ", ".  "
                ],
                crudPage: "courses_crud"
            },
            {
                index: 3,
                name:"Job Profiles",
                imageUrl:"/img/jobprofile.jpg",
                dependents: [
                    "Jobs", 'RequiredSkill', " "
                ],
                crudPage: "jobprofile_crud"
            },
            {
                index: 4,
                name:"Knowledge or Skills",
                imageUrl:"/img/skills.jpg",
                dependents: [
                    'HasSkill', "TrainingForSkill", "RequiredSkill"
                ],
                crudPage: "skills_crud"
            }
            
        ]
            
         
    };
    
});