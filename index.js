
require('dotenv').config();
require('rootpath')();
// import express
const express = require("express");
// import cors
const cors = require("cors");
// import routes

const Router = require("./routes/routes.js");

const app = express();

const jwt = require('_helpers/jwt');
const errorHandler = require('./_helpers/error-handler.js');
 
// use express json
app.use(express.json({limit: '5000kb'}));
 
// use cors
app.use(cors());

app.set("view engine", "ejs")


// use JWT auth to secure the api
//app.use(jwt());

// api routes
// app.use('/a_users', require('./users/users.controller.js'));

// global error handler
app.use(errorHandler);

const PORT = process.env.PORT || 5000

// use router
app.use(Router.router);

app.listen(PORT, () => console.log('Server running at http://localhost:5000'));