const {getIdImageUrl} = require("../config/idImageUploader.js");
const idImageUploadHandler = async(req,res)=>{

    const {name,base64} = req.body;
    const url = await getIdImageUrl(base64,name)
 res.json({url});
}

module.exports = {
    idImageUploadHandler
}