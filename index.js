const connection = require("./connection.js");

class db {
  constructor(connection) {
    this.connection = connection;
  }
  findAllRoles() {
    return this.connection.query("SELECT role.title FROM role");
  }
}

module.exports = new db(connection);
