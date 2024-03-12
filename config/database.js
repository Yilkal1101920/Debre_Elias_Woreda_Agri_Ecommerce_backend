const mysql = require("mysql2");

// create the connection to database
const db = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'agriculture_db'
  
  // host: "sql9.freesqldatabase.com",
  // user: "sql9587088",
  // database: "sql9587088",
  // password : "w5v363Dn41",
  // Port : 3306

});
 
module.exports={db};