const config = require('config.json');
const jwt = require('jsonwebtoken');
const DB = require("../config/database.js");
const bcrypt = require('bcrypt');
const hash = require("object-hash");


var users = [];
module.exports = {
    authenticate,
    getAll
};

async function authenticate({ username, password }) {
    var hashPassword = password;
    hashPassword = hash.MD5(password);
    password = hashPassword;
    DB.db.query("SELECT * FROM users", (err, results) => {             
        if(err) {
            console.log(err);
            // result(err, null);
        } else {
            users = results;
        }
    }); 

    const user = users.find(u => u.email === username && u.password === password);

    if (!user) throw 'Username or password is incorrect';
    // create a jwt token that is valid for 7 days
    const token = jwt.sign({ sub: user.id }, config.secret, { expiresIn: '7d' });

    return {
        ...omitPassword(user),
        token
    };
}

async function getAll() {
    return users.map(u => omitPassword(u));
}

// helper functions

function omitPassword(user) {
    const { password, ...userWithoutPassword } = user;
    return userWithoutPassword;
}