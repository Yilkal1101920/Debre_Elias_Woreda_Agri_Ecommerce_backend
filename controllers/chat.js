const { insertMessage, getMessages } = require("../models/chatModel.js");

const createMessage = (req, res) => {
    const data = req.body;
    insertMessage(data, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

const showMessages = async (req, res) => {

    
    getMessages((err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

module.exports={ createMessage, showMessages }