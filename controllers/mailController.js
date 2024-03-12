const { sendNotificationByEmail } = require("../models/mailModel.js");

const sendNotificationInEmail = (req, res) => {
    const to = req.body.to;
    const subject = req.body.subject;
    const message = req.body.text;
    sendNotificationByEmail(to,subject, message, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

module.exports = { sendNotificationInEmail }