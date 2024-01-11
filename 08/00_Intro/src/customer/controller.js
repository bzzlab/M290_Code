const Customer = require('./model');
const HTTP_STATUS = require('../config/httpcodes.config');

//Create a location object
const customerObj = new Customer();

//Create and save a new location
function create(req, res) {
    //Parse data out from request body
//??
//??
//??
//??
//??

    console.log('Following data parsed from body ...');
    console.log(data);
    //save location into database table
    customerObj.create(data, (err, result) => {
//??
//??
//??
//??
//??
//??
//??
    })
}

//Lesen Sie alle Kunden/Daten aus der Tabelle location aus
function findAll(req, res) {
    customerObj.getAll((err, result) => {
//??
//??
//??
//??
//??
//??
//??
//??
    })
}


// Update a Customer identified by the customerId in the request
function update(req, res) {
    customerObj.updateById(req.params.id, req.body, (err, result) => {
//??
//??
//??
//??
//??
//??
//??
//??
//??
//??
//??
    })
}

//export methods
//??
//??
//??
//??
//??
