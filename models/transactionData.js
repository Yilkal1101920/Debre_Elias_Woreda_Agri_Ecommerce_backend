
const DB = require("../config/database.js");

 const insertTransactionHistory = (data, result) => {

    DB.db.query("INSERT INTO user_transaction SET ?", [data], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
 }

 const getTransactionHistoryByEmailAndProductName = (product_id, email, result) => {
    DB.db.query("SELECT * FROM user_transaction WHERE product_id = ? AND transaction_email = ?", [product_id, email], (err, results) => {             
         if(err) {
             result(err, null);
         } else {
             result(null, results[0]);
         }
     });   
 }

 const updateTransactionInformationByEmailAndProductName = (data, name, email, result) => {
    DB.db.query("UPDATE user_transaction SET NoOrders = ? WHERE product_id = ? AND transaction_email = ?", [data.NoOrders, name, email], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results[0]);
        }
    });   
}

const deleteTransactionByKebeleAndId = (id, kebele, result) => {
    DB.db.query("DELETE FROM user_transaction WHERE product_id = ? AND transaction_kebele = ?", [id, kebele], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}
module.exports={ insertTransactionHistory, getTransactionHistoryByEmailAndProductName, updateTransactionInformationByEmailAndProductName, deleteTransactionByKebeleAndId }