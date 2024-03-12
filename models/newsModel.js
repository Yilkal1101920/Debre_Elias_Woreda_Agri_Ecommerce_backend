const DB = require("../config/database.js");
 
// Insert Product to Database
 const insertNews = (data, result) => {
    DB.db.query("INSERT INTO news SET ?", [data], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

const insertShowedNotification = (data, result) => {
    DB.db.query("INSERT INTO showednotification SET ?", [data], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

const getNews = (result) => {
    DB.db.query("SELECT * FROM news", (err, results) => {             
        if(err) {
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

const getNewsByKebele = (kebele, result) => {
    DB.db.query("SELECT * FROM news WHERE kebele = ?", [kebele], (err, results) => {             
         if(err) {
             result(err, null);
         } else {
             result(null, results[0]);
         }
     });   
 }

const getShowedNotificationByEmail = (email, result) => {
    DB.db.query("SELECT * FROM showednotification WHERE email = ?", [email], (err, results) => {             
         if(err) {
             result(err, null);
         } else {
             result(null, results[0]);
         }
     });   
 }

 const updateShowedNotification = (data, email, result) => {
    DB.db.query("UPDATE showednotification SET notification_id = ? WHERE email = ?", [data.notification_id, email], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

const deleteNewById = (id, result) => {
    DB.db.query("DELETE FROM news WHERE id = ?", [id], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

module.exports={ insertNews, getNews, getNewsByKebele, insertShowedNotification, getShowedNotificationByEmail, updateShowedNotification, deleteNewById }