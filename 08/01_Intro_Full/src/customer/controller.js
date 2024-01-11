const Customer = require('./model');
const HTTP_STATUS = require('../config/httpcodes.config');

//Create a location object
const customerObj = new Customer();

//Create and save a new location
function create(req, res) {
    //Parse data out from request body
    let data = {//??
        "email": req.body.email,//??
        "firstName": req.body.firstName,//??
        "registered": (new Date())//??
    }//??

    console.log('Following data parsed from body ...');
    console.log(data);
    //save location into database table
    customerObj.create(data, (err, result) => {
        if (err) {//??
            res.status(HTTP_STATUS.SERVER_ERROR).send({//??
                message: err.message || "Some error occurred while creating a new location."//??
            })//??
        } else {//??
            res.status(HTTP_STATUS.SUCCESSFUL_CREATED).send(result);//??
        }//??
    })
}

//Lesen Sie alle Kunden/Daten aus der Tabelle location aus
function findAll(req, res) {
    customerObj.getAll((err, result) => {
        if (err) {//??
            res.status(HTTP_STATUS.SERVER_ERROR).send({//??
                message://??
                    err.message || "Some error occurred while retrieving customers."//??
            });//??
        } else {//??
            res.send(result);//??
        }//??
    })
}


// Update a Customer identified by the customerId in the request
function update(req, res) {
    customerObj.updateById(req.params.id, req.body, (err, result) => {
        if (err) {//??
            if (err.kind === "not_found") {//??
                res.status(HTTP_STATUS.NOT_FOUND).send({//??
                    message: `Not found customer with id ${req.params.id}.`//??
                });//??
            } else {//??
                res.status(HTTP_STATUS.SERVER_ERROR).send({//??
                    message: `Error updating customer with id ${req.params.id}.`//??
                })//??
            }//??
        } else res.send(result);//??
    })
}

//export methods
module.exports = {//??
    create,//??
    findAll,//??
    update//??
}//??
