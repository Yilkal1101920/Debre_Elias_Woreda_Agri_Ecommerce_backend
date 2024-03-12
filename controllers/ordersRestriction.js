const { insertOrderRestriction, getOrderRestriction, getOrderRestrictionById, deleteOrderRestrictionByKebeleAndId } = require("../models/orderRestrictionModel.js");

// Create New Product
 const createOrderRestriction = (req, res) => {
    const data = req.body;
    insertOrderRestriction(data, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

const showOrderRestrictionById = async (req, res) => {
    getOrderRestrictionById(req.params.name, req.params.kebele, (err, results) => {
        if (err){
            res.send(err);
            console.log(err)

        }else{
            res.json(results);
        }
    });
}

const showOrderRestriction = async (req, res) => {

    //console.log(b64); //-> "iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAADUlEQVQImWP4z8DwHwAFAAH/q842iQAAAABJRU5ErkJggg=='","birhan");
    
    getOrderRestriction((err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

const deleteOrderRestrictionByIdAndKebele = (req, res) => {
    const id = req.params.id;
    const kebele = req.params.kebele;
    deleteOrderRestrictionByKebeleAndId(id, kebele, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

module.exports={
    createOrderRestriction, showOrderRestriction, showOrderRestrictionById, deleteOrderRestrictionByIdAndKebele
}