const {newsGetDisplayUrl} = require("../config/newsUploadImage.js");
const newsUploadHandler = async(req,res)=>{

    const {name,base64} = req.body;
    const url = await newsGetDisplayUrl(base64,name)
 res.json({url});
}

module.exports = {
    newsUploadHandler
}