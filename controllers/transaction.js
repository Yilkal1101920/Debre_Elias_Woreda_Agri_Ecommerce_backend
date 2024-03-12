const { insertTransactionHistory, getTransactionHistoryByEmailAndProductName, updateTransactionInformationByEmailAndProductName, deleteTransactionByKebeleAndId } = require("../models/transactionData.js");

 const createTransactionHistory = (req, res) => {
    const data = req.body;
    insertTransactionHistory(data, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}


const showTransactionHistoryByEmailAndProductName = async (req, res) => {
    getTransactionHistoryByEmailAndProductName(req.params.name, req.params.email, (err, results) => {
        if (err){
            res.send(err);
            console.log(err)

        }else{
            res.json(results);
        }
    });
}

const updateTransactionHistoryByEmailAndProductName = (req, res) => {
    const data = req.body;
    const name = req.params.name;
    const email = req.params.email;
    updateTransactionInformationByEmailAndProductName(data, name, email, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

const deleteTransactionByIdAndKebele = (req, res) => {
    const id = req.params.id;
    const kebele = req.params.kebele;
    deleteTransactionByKebeleAndId(id, kebele, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}
module.exports={
    createTransactionHistory, showTransactionHistoryByEmailAndProductName, updateTransactionHistoryByEmailAndProductName, deleteTransactionByIdAndKebele
}