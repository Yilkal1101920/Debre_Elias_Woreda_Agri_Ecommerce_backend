// Import function from Product Model
const { insertMahiberatMembers, getMahiberatMembers, getMahiberatMemberByMahiberatId, editEmployerInformationByUsername, editEmployerPhotoByUsername, deleteEmployerById, deleteMemberById } = require("../models/mahiberatMembersData.js");

// Create New Product
 const createMahiberatMembers = (req, res) => {
    const data = req.body;
    insertMahiberatMembers(data, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}
 const showMahiberatMembers = async (req, res) => {
   console.log("Mahiberat Member"); 
    getMahiberatMembers((err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

const showMahiberatMemberByMahiberatId = (req, res) => {
    getMahiberatMemberByMahiberatId(req.params.username, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

const updateEmployerInformationByUsername = (req, res) => {
    const data  = req.body;
    const id    = req.params.id;
    console.log(data);
    console.log(id);
    editEmployerInformationByUsername(data, id, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

const updateEmployerPhotoByUsername = (req, res) => {
    const data  = req.body;
    const id    = req.params.id;
    editEmployerPhotoByUsername(data, id, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

const deleteEmployer = (req, res) => {
    const id = req.params.id;
    deleteEmployerById(id, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

const deleteMember = (req, res) => {
    const id = req.params.id;
    deleteMemberById(id, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}


module.exports={
    createMahiberatMembers, showMahiberatMembers, showMahiberatMemberByMahiberatId, updateEmployerInformationByUsername, updateEmployerPhotoByUsername, deleteEmployer, deleteMember
}