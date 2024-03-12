const { transporter } = require("../config/email.js");
const sendNotificationByEmail = (to, subject, message, result) => {
  var mailOptions = {
    from: 'bewuketayinalem@gmail.com',
    to: to,
    subject: subject,
    text: message
  };
    transporter.sendMail(mailOptions, function(error, info){
        if (error) {
          console.log("ERROR");
          console.log(error);
          console.log("ERROR");
        } else {
          console.log('Email sent: ');
        }
      }); 
}

module.exports = { sendNotificationByEmail }