const DB = require("../config/database.js");
 
// Insert Product to Database
 const insertProductRateAndFavorite = (data, result) => {
    DB.db.query("INSERT INTO ratingandfavorite SET ?", [data], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

const getProductRateAndFavorite = (result) => {
    DB.db.query("SELECT * FROM ratingandfavorite", (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

const getProductRateAndFavoriteByUserEmailAndProductId = (email, id, result) => {
    DB.db.query("SELECT * FROM ratingandfavorite WHERE user_email = ? AND product_id = ?", [email, id], (err, results) => {             
         if(err) {
             result(err, null);
         } else {
             result(null, results[0]);
         }
     });   
 }

 const updateProductRateByfIdd = (data, id, result) => {
    DB.db.query("UPDATE ratingandfavorite SET star = ? WHERE favorite_id = ?", [data.star, id], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

module.exports={ insertProductRateAndFavorite, getProductRateAndFavorite, getProductRateAndFavoriteByUserEmailAndProductId, updateProductRateByfIdd }
