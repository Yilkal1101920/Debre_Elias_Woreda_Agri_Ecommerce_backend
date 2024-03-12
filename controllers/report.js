const { insertReport, getReports, getYear, updateTransferStatusById } = require("../models/reportData.js");
// Create New Report
const createReport = (req, res) => {
    const data = req.body;
    console.log("REPORT");
    console.log(data);

insertReport(data, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

const showReports = async (req, res) => {
    
    getReports((err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

const showYear = (req, res) => {
    getYear((err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

const updateTransferStatus = async (req, res) => {
    const id    = req.params.id;
    updateTransferStatusById(id, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

module.exports = { createReport, showReports, showYear, updateTransferStatus }