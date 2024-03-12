const bcrypt = require('bcrypt');

const passwordEncrypt = async(data) =>{
    try{
        var hashPassword = data.password;
        const salt = await bcrypt.genSalt(20);
        hashPassword = await bcrypt.hash(hashPassword, salt);
         }catch(err){
    
        }

}

 module.exports = {passwordEncrypt}