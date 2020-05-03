const connection = require("./connection.js");
const inquirer = require("inquirer");
const consoleTable = require("console.table");


startPrompt();

 function startPrompt() {
  inquirer.prompt([
      {
          type: "list",
          name: "viewNext",
          message: "What would you like to do?",
          choices: ["View All Employees", "View All Employees by Department", "View All Employees by Manager", "View All Employees by Role", "End"]
      }
  ]).then(function(res){
    switch(res.viewNext){
      case "View All Employees":
        viewAllEmployees();
        break;
    }
  })

  function viewAllEmployees(){
    connection.query("SELECT * FROM empolyee",function(err, res){
      console.table(res)
      startPrompt()
    })

  function viewAllEmployeesByDepartment(){
    connection.query("SELECT empolyee",function(err, res){
      console.table(res)
      startPrompt()
    })




  }



// class db {
//   constructor(connection) {
//     this.connection = connection;
//   }
//   findAllRoles() {
//     return this.connection.query("SELECT role.title FROM role");
//   }
// }

//module.exports = new db(connection);
