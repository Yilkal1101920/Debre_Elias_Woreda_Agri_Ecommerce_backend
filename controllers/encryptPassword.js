const {passwordEncrypt} = require("../config/passwordEncryption.js");
const userPasswordEncrypt = (req) => {
    const data = req.body;
    console.log("ENCRPTION");
    console.log(data);
    console.log(data.password);
    passwordEncrypt(data, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    }
);}

module.exports = {userPasswordEncrypt}