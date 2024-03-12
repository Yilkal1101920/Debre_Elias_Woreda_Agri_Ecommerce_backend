// import connection
const DB = require("../config/database.js");
 
 const insertMahiberatMembers = (data, result) => {

    DB.db.query("INSERT INTO users SET ?", [data], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
            console.log(results);
        }
    });   
 }
 const getMahiberatMembers = (result) => {
    DB.db.query("SELECT * FROM users", (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

const getMahiberatMemberByMahiberatId = (username, result) => {
    DB.db.query("SELECT * FROM users WHERE username = ?", [username], (err, results) => {             
         if(err) {
             result(err, null);
         } else {
             result(null, results[0]);
         }
     }); 
 }

 const editEmployerInformationByUsername = (data, id, result) => {
    DB.db.query("UPDATE users SET fName = ?, faName = ?, phone = ?, kebele = ?, user_role = ?, username = ?  Where username = ?", [data.fName, data.faName, data.phone, data.kebele, data.user_role, data.username, id], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

const editEmployerPhotoByUsername = (data, id, result) => {
    DB.db.query("UPDATE users SET photo = ? Where username = ?", [data.photo, id], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

 const deleteEmployerById = (id, result) => {
    DB.db.query("DELETE FROM users WHERE username = ?", [id], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

const deleteMemberById = (id, result) => {
    DB.db.query("DELETE FROM users WHERE username = ?", [id], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

module.exports={ insertMahiberatMembers, getMahiberatMembers, getMahiberatMemberByMahiberatId, editEmployerInformationByUsername, editEmployerPhotoByUsername, deleteEmployerById, deleteMemberById }