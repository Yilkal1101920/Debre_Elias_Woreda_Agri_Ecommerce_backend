// import connection
const DB = require("../config/database.js");
const bcrypt = require('bcrypt');
const hash = require("object-hash");
 
// Insert user to Database
 const insertUser = async(data, result) => {
     try{
        var hashPassword = data.password;
        hashPassword = hash.MD5(data.password);
    
        data.password = hashPassword;
    DB.db.query("INSERT INTO users SET ?", [data], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
     }catch(err){
console.log(err);
 }
 }
 const getUsers = (result) => {
    DB.db.query("SELECT * FROM users", (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

const getUserByEmail = (email, result) => {
    DB.db.query("SELECT * FROM users WHERE email = ?", [email], (err, results) => {             
         if(err) {
             result(err, null);
         } else {
             result(null, results[0]);
         }
     }); 
 }

 const getUserByKebeleAndRole = (kebele, role, result) => {
    console.log("Birhan");
    DB.db.query("SELECT * FROM users WHERE kebele = ? AND user_role = ?", [kebele, role], async (err, results) => {  
         if(err) {
             result(err, null);
             console.log("ERROR");
             console.log(err);
             console.log("ERROR");
         } else {
             result(null, results[0]);
         }
     }); 
 }



 const getUserByEmailAndPassword = (email, password, result) => {

    DB.db.query("SELECT * FROM users WHERE email = ?", [email],async (err, results) => {  
        
      const ad= await bcrypt.compare(password,results[0].password)
console.log("ad",ad);

         if(err) {
             result(err, null);
             console.log(err);
         } else {
            console.log("password",password);
            console.log("results");
            console.log(results[0].password);
            bcrypt.compare(password,results[0].password).then((match)=>{
                if(match){
                    console.log("check");
                    console.log(results[0]);

                }
                else{
                    console.log("wait");

                }
            })
          
             result(null, results[0]);
         }
     }); 
 }


 const getUserByMahiberatId = (id, result) => {
    DB.db.query("SELECT * FROM users WHERE username = ?", [id], (err, results) => {             
         if(err) {
             result(err, null);
         } else {
             result(null, results[0]);
         }
     }); 
 }

 const getMahiberat = (result) => {
    DB.db.query("SELECT DISTINCT kebele FROM users WHERE user_role = ? OR user_role = ?", ["store", "manager"], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}
const getFarmers = (result) => {
    DB.db.query("SELECT DISTINCT fName, faName, patent_email, user_email FROM ordertable INNER JOIN users ON ordertable.patent_email = users.email WHERE user_role = ? AND payStatus = ?", ['user', 0], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
} 

const getSellers = (result) => {
    DB.db.query("SELECT DISTINCT fName, faName, patent_email, user_email FROM ordertable INNER JOIN users ON ordertable.patent_email = users.email WHERE payStatus = ?", [1], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
} 


const updateUserInfoByEmaill = (data, email, result) => {
    DB.db.query("UPDATE users SET subKebele = ?, village = ?, phone = ? Where email = ?", [data.subKebele, data.village, data.phone, data.email], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

const changePassword = (data, email, result) => {
    var hashPassword = data.password;
    hashPassword = hash.MD5(data.password);

    data.password = hashPassword;
    DB.db.query("UPDATE users SET password = ? Where email = ?", [data.password, email], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

const updateUserInfobyEmail = (data, email, result) => {
    DB.db.query("UPDATE users SET active = ? Where email = ?", [data.active, email], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

const changeAccount = (data, email, result) => {
    var hashPassword = data.password;
    hashPassword = hash.MD5(data.password);

    data.password = hashPassword;
    DB.db.query("UPDATE users SET email = ?, password = ? Where email = ?", [data.email, data.password, email], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

const activateAccountByUsername = (data, username, result) => {

    var hashPassword = data.password;
    hashPassword = hash.MD5(data.password);

    data.password = hashPassword;

    DB.db.query("UPDATE users SET email = ?, password = ?, user_state = ? Where username = ?", [data.email, data.password, data.user_state, username], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

const deActivateMahiberatUserAccount = (data, email, result) => {

    DB.db.query("UPDATE users SET user_state = ? Where email = ?", [data.user_state, email], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

const deleteUserByEmail = (email, result) => {
    DB.db.query("DELETE FROM users WHERE email = ?", [email], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}
module.exports={insertUser, activateAccountByUsername, getUsers, getUserByEmail, getUserByKebeleAndRole, getUserByEmailAndPassword, getUserByMahiberatId, getMahiberat, getFarmers, getSellers, updateUserInfoByEmaill, 
    updateUserInfobyEmail, changeAccount, changePassword,
    deActivateMahiberatUserAccount, deleteUserByEmail}