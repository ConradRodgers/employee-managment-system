var mysql = require("mysql");

var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "root",
  database: "homework_db"
});

connection.connect(function(err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId + "\n");
});




//??????????
async function startPrompt() {
  const userInput = await inquirer.prompt([
      {
          type: "list",
          name: "viewNext",
          message: "What would you like to do?",
          choices: ["View All Employees", "View All Employees by Department", "View All Employees by Manager", "View All Employees by Role", "End"]
      }
  ]);
//?????????/

module.exports = connection;