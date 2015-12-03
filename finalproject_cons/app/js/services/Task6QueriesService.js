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
                            attributes: {Name: "name", CompId: "comp_id", PersonId: "per_id"},
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
                            attributes: {Name: "name",
                                PersonId: "per_id", payRate: "pay_rate", payType: "Pay_type"},
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
                            attributes: {Company: "name", LaborCost: "laborCost"},
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
                            attributes: {Name: "name",
                                PersonId: "per_id", JobCode: "job_code", Title: "title", CompId: "comp_id"},
                            urlAdditionalInfo: this.makeUrl('http://csci4125.cfapps.io/employees/name/')(""),
                            urlFinalQuery: this.makeUrl('http://csci4125.cfapps.io/jobs/holds/')(""),
                            isAdditionalInputNeeded: true
                        }];
                case 5:
                    return [{
                            placeholder: "Project title - at least two letters",
                            label: "Select a project",
                            name: "projectName",
                            additionalInfo: "title",
                            attributes: {Name: "name", CompId: "comp_id", Project: "title", Employee: "per_id"},
                            urlAdditionalInfo: this.makeUrl('http://csci4125.cfapps.io/projects/name/')(""),
                            urlFinalQuery: this.makeUrl('http://csci4125.cfapps.io/employees/projects/')(""),
                            isAdditionalInputNeeded: true
                        }];
                case 6:
                    return [{
                            placeholder: "Person's name - at least two letters",
                            label: "Select a person",
                            name: "personName",
                            additionalInfo: "name",
                            attributes: {Name: "name", Skill: "title", Level: "skill_level"},
                            urlAdditionalInfo: this.makeUrl('http://csci4125.cfapps.io/employees/name/')(""),
                            urlFinalQuery: this.makeUrl('http://csci4125.cfapps.io/skills/employee/name/')(""),
                            isAdditionalInputNeeded: true
                        }];
                case 7:
                    return [{
                            placeholder: "Worker's name - at least two letters",
                            label: "Select a worker",
                            name: "workerName",
                            additionalInfo: "name",
                            attributes: {PersonID: "per_id", SkillGapCode: "ks_code", Title: "title", Level: "skill_level"},
                            urlAdditionalInfo: this.makeUrl('http://csci4125.cfapps.io/employees/name/')(""),
                            urlFinalQuery: this.makeUrl('http://csci4125.cfapps.io/skills/currentgaps/employee/name/')(""),
                            isAdditionalInputNeeded: true
                        }];
                case 8:
                    return [{
                            placeholder: "Job profile title - at least two letters",
                            label: "Select a job Profile",
                            name: "jobProfileName",
                            additionalInfo: "title",
                            attributes: {SkillCode: "ks_code", Title: "title", Level: "skill_level"},
                            urlAdditionalInfo: this.makeUrl('http://csci4125.cfapps.io/jobprofiles/title/')(""),
                            urlFinalQuery: this.makeUrl('http://csci4125.cfapps.io/skills/jobprofile/title/')(""),
                            isAdditionalInputNeeded: true
                        }];
                case 9:
                    return [{
                            placeholder: ["Employee name - at least two letters", "Job code - at least two letters"],
                            label: ["Select an employee", "Select a job code"],
                            name: ["employeeName", "jobCode"],
                            additionalInfo: ["name", "job_code"],
                            attributes: {SkillCode: "ks_code", Title: "title", Level: "skill_level"},
                            urlAdditionalInfo: [
                                this.makeUrl('http://csci4125.cfapps.io/employees/name/')(""),
                                this.makeUrl('http://csci4125.cfapps.io/jobprofiles/title/')("")
                            ],
                            urlFinalQuery: this.makeUrl('http://csci4125.cfapps.io/skills/gaps/employeename/jobcode/')(""),
                            isAdditionalInputNeeded: true
                        }];
            }
        },
        makeUrl: function (base) {
            return function (param1) {
                return function (param2) {
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
            return $http.get(field.urlFinalQuery(param.trim()))
                    .then(function (response) {
                        return response.data.map(function (item) {
                            return item;
                        });
                    });
        },
        mapToAttributes: function (attributes, items) {
            return items.map(function (item) {
                return Object.keys(attributes).map(function (key) {
                    console.log(attributes['project_id']);
                    return key + ": " + item[attributes[key]];

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
            },
            {
                qid: 11,
                query: "11. List the courses (course id and title) that each alone teaches all the missing knowledge/skills for a person to pursue a specific job."
            },
            {
                qid: 12,
                query: "12. Suppose the skill gap of a worker and the requirement of a desired job can be covered by one course. Find the “quickest” solution for this worker. Show the course and the completing date."
            },
            {
                qid: 13,
                query: "13. If query #10 returns nothing, then find the course sets with the minimum number of courses that their combination covers the given skill set. The considered course sets will not include more than three courses."
            },
            {
                qid: 14,
                query: "14. List the course sets that their combinations cover all the missing knowledge/skills for a person to pursue a specific job. The considered course sets will not include more than three courses."
            },
            {
                qid: 15,
                query: "15. Find the cheapest course choices to make up one’s skill gap by showing the courses to take and the total cost. The considered course sets will not include more than three courses."
            },
            {
                qid: 16,
                query: "16. List all the job profiles that a person is qualified."
            },
            {
                qid: 17,
                query: "17. Find the job with the highest pay rate for a person according to his/her skill qualification."
            },
            {
                qid: 18,
                query: "18. List all the names along with the emails of the persons who are qualified for a job profile."
            },
            {
                qid: 19,
                query: "19. When a company cannot find any qualified person for a job, a secondary solution is to find a person who is almost qualified to the job. Make a “missing-one” list that lists people who miss only one skill for a specified job profile."
            },
            {
                qid: 20,
                query: "20. List the skillID and the number of people in the missing-one list for a given job profile in the ascending order of the people counts."
            },
            {
                qid: 21,
                query: "21. Suppose there is a new job profile that has nobody qualified. List the persons who miss the least number of skills and report the “least number”."
            },
            {
                qid: 22,
                query: "22. For a specified job profile and a given small number k, make a “missing-k” list that lists the people’s IDs and the number of missing skills for the people who miss only up to k skills in the ascending order of missing skills."
            },
            {
                qid: 23,
                query: "23. Given a job profile and its corresponding missing-k list specified in Question 22. Find every skill that is needed by at least one person in the given missing-k list. List each skillID and the number of people who need it in the descending order of the people counts."
            },
            {
                qid: 24,
                query: "24. In a local or national crisis, we need to find all the people who once held a job of the special job-profile identifier."
            },
            {
                qid: 25,
                query: "25. Find all the unemployed people who once held a job of the given job-profile identifier."
            },
            {
                qid: 26,
                query: "26. Find out the biggest employer in terms of number of employees or the total amount of salaries and wages paid to employees."
            },
            {
                qid: 29,
                query: "29. Find the job profiles that have the most openings due to lack of qualified workers. If there are many opening jobs of a job profile but at the same time there are many qualified jobless people. Then training cannot help fill up this type of job. What we want to find is such a job profile that has the largest difference between vacancies (the unfilled jobs of this job profile) and the number of jobless people who are qualified for this job profile."
            },
            {
                qid: 30,
                query: "30. Find the courses that can help most jobless people find a job by training them toward the job profiles that have the most openings due to lack of qualified workers."
            }

        ]
    };


});
