const DB = require("../config/database.js");
 
// Insert Product to Database
 const insertOrderRestriction = (data, result) => {
    DB.db.query("INSERT INTO orderrestriction SET ?", [data], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

const getOrderRestriction = (result) => {
    DB.db.query("SELECT * FROM orderrestriction", (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

const getOrderRestrictionById = (name, kebele, result) => {
    DB.db.query("SELECT * FROM orderrestriction WHERE product_Id = ? AND kebele = ?", [name, kebele], (err, results) => {             
         if(err) {
             result(err, null);
         } else {
             result(null, results[0]);
         }
     });   
 }
 const deleteOrderRestrictionByKebeleAndId = (id, kebele, result) => {
    DB.db.query("DELETE FROM orderrestriction WHERE product_Id = ? AND kebele = ?", [id, kebele], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}
module.exports={ insertOrderRestriction, getOrderRestriction, getOrderRestrictionById, deleteOrderRestrictionByKebeleAndId }
