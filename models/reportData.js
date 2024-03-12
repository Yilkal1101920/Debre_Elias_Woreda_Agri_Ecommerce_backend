// import connection
const DB = require("../config/database.js");

// Insert Report to Database
const insertReport = (data, result) => {
    console.log(data);
    DB.db.query("INSERT INTO report SET ?", [data], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
            console.log("Successfully Inserted");
        }
    });   
}

const getReports = (result) => {
    DB.db.query("SELECT * FROM report", (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

const getYear = (result) => {
    DB.db.query("SELECT DISTINCT year FROM report", (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

const updateTransferStatusById = (id, result) => {
    DB.db.query("UPDATE report SET transfer_status = ? Where report_id = ?", [1, id], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

module.exports = { insertReport, getReports, getYear, updateTransferStatusById }