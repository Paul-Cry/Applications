'use strict'

const bcrypt = require('bcryptjs')


const response = require('../response.js')
const db = require('../settings/db')



exports.getAllAppl = (req, res)=>{
    db.query('SELECT * FROM appl_list', (error, rows, fields)=>{
        if(error){
            response.status(400,  error, res)
        } else{
            response.status(200, rows, res)
        }
    })
}

exports.AddAppl = (req, res) =>{
    console.log(req.body.category)
    console.log(req.body.office)
    let category = req.body.category;
    let date = req.body.date;
    let FCS = req.body.FCS; 
    let office = req.body.office;
    let status = req.body.status;
    let subcategory = req.body.subcategory;
    let urgency = req.body.urgency;
    //INSERT INTO `appl_list` (`ID`, `FCS`, `office`, `urgency_id`, `category`, `subcategory`, `status`, `Date`) VALUES (NULL, '123', '123', '1', '213', '', '0', '2021-06-15');

    db.query('INSERT INTO `appl_list` (`FCS`, `office`, `urgency_id`, `category`, `subcategory`, `status`, `Date`) VALUES("' + FCS + '", "' + office + '", "' + urgency + '", "' + category + '", "'+ subcategory + '",  "' + status + '", "' + date + '")'
    , (error, rows, fields)=>{
        if(error){
            response.status(400,  error, res)
        } else{
            response.status(200, rows, res)
        }
    })
    
}



