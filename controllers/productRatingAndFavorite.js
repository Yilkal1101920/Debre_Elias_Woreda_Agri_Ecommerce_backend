const { insertProductRateAndFavorite, getProductRateAndFavorite, getProductRateAndFavoriteByUserEmailAndProductId, updateProductRateByfIdd } = require("../models/productRatingAndFavoriteData.js");

// Create New Product
 const createProductRateAndFavorite = (req, res) => {
    const data = req.body;
    insertProductRateAndFavorite(data, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

const showProductRateAndFavoriteByUserEmailAndProductId = async (req, res) => {
    getProductRateAndFavoriteByUserEmailAndProductId(req.params.email, req.params.id, (err, results) => {
        if (err){
            res.send(err);
            console.log(err)

        }else{
            res.json(results);
        }
    });
}

const showProductRateAndFavorite = async (req, res) => {

    getProductRateAndFavorite((err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

const updateProductRateByIdd = (req, res) => {
    const data  = req.body;
    const id    = req.params.id;
    updateProductRateByfIdd(data, id, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}


module.exports={
    createProductRateAndFavorite, showProductRateAndFavorite, showProductRateAndFavoriteByUserEmailAndProductId, updateProductRateByIdd
}