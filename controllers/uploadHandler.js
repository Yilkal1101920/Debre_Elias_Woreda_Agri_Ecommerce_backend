const {getDisplayUrl} = require("../config/imageuploader.js");
const uploadHandler = async(req,res)=>{
    const {name,base64} = req.body;
    const url = await getDisplayUrl(base64,name)
 res.json({url});
}

module.exports = {
    uploadHandler
}