const sql = require('../db');

module.exports = class Customer {
    //constructor
    constructor() {
    }

    create(newCustomer, cbResult) {
        sql.query('INSERT INTO customer SET ?', newCustomer, (err,result) => {//??
            if (err){//??
                console.log('error: ',err);//??
                cbResult(err,null);//??
                return;//??
            }//??
            console.log('created contact: ', {id: result.insertId, ...newCustomer});//??
            cbResult(null,{//??
                msg: "New contact has been inserted!", id: result.insertId, ...newCustomer});//??
            })//??
    }

    /**
     * Get all customers
     * @param cbResult: result of sql statement
     */
    getAll(cbResult){
       sql.query('SELECT * FROM customer', (err,result) => {//??
           if (err){//??
               console.log("error: ", err);//??
               //err zurückgeben, data = null
               cbResult(err, null);//??
               return;//??
           }//??
           console.log("location: ", result);//??
           //err = null, data zurückgeben
           cbResult(null, result);//??
       })//??
    }

    /**
     * Update location by ID
     * @param id: location ID
     * @param customer: location object literal
     * @param cbResult: result of sql statement
     */
    updateById(id,customer, cbResult){
        let queryString = 'Update customer SET email = ?, firstName = ?';//??
        queryString += ' WHERE id = ?';//??
        sql.query(queryString,//??
            [customer.email, customer.firstName, parseInt(id)],//??
            (err, result) => {//??
                if (err){//??
                    console.log("error: ", err);//??
                    //err zurückgeben, data = null
                    cbResult(err, null);//??
                    return;//??
                }//??

                if (result.affectedRows === 0){//??
                    // not found location with the id
                    cbResult({kind: "not_found"}, null);//??
                    return;//??
                }//??

                console.log("updated location: ", {id: id, ...customer});//??
                //err = null, data zurückgeben
                cbResult(null, {id: id, ...customer});//??
            });//??
    }
}
