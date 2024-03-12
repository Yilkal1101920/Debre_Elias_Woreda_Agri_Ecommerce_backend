var nodemailer = require('nodemailer');

var transporter = nodemailer.createTransport({
  service: 'gmail',
  host: 'smtp.gmail.com',
  port: 465,
  secure: true,
  auth: {
    user: 'bewuketayinalem@gmail.com',
    pass: 'tzwfkkubggtrqcqh'
  }
});

module.exports = { transporter };