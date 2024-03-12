const { insertNews, getNews, getNewsByKebele, insertShowedNotification, getShowedNotificationByEmail, updateShowedNotification, deleteNewById } = require("../models/newsModel.js");

// Create New Product
 const createNews = (req, res) => {
    const data = req.body;
    insertNews(data, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

const saveShowedNotification = (req, res) => {
    const data = req.body;
    insertShowedNotification(data, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

const showNews = async (req, res) => {

    
    getNews((err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

const showNewsByKebele = async (req, res) => {
    getNewsByKebele(req.params.kebele, (err, results) => {
        if (err){
            res.send(err);
            console.log(err)

        }else{
            res.json(results);
        }
    });
}

const showShowedNotificationByEmail = async (req, res) => {

    
    getShowedNotificationByEmail(req.params.email, (err, results) => {
        if (err){
            res.send(err);
            console.log(err)
        }else{
            console.log(results)
            res.json(results);
        }
    });
}

const updateShowedNotificationByEmail = (req, res) => {
    const data  = req.body;
    const id    = req.params.email;
    updateShowedNotification(data, id, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

const deleteNew = (req, res) => {
    const id = req.params.id;
    deleteNewById(id, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

module.exports={
    createNews, showNews, showNewsByKebele, saveShowedNotification, showShowedNotificationByEmail, updateShowedNotificationByEmail, deleteNew
}