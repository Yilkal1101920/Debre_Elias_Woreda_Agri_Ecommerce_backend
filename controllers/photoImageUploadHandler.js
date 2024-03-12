const {getPhotoImageUrl} = require("../config/photoImageUploader.js");
const photoImageUploadHandler = async(req,res)=>{

    const {name,base64} = req.body;
    const url = await getPhotoImageUrl(base64,name)
 res.json({url});
}

module.exports = {
    photoImageUploadHandler
}