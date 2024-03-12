const DB = require("../config/database.js");
const insertMessage = (data, result) => {
    DB.db.query("INSERT INTO chattingtable SET ?", [data], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}


const getMessages = (result) => {
    DB.db.query("SELECT * FROM chattingtable", (err, results) => {             
        if(err) {
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

module.exports={ insertMessage, getMessages }