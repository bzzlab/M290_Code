const sql = require("../db.js");

module.exports = class Customer {
    // constructor
    constructor() {
    }

    /***
     * Create a new location
     * @param newCustomer: location data (object literal)
     * @param cbResult: result of sql statement
     */
    create(newCustomer, cbResult) {
        sql.query('INSERT INTO location SET ?', newCustomer, (err, res) => {
            if (err) {
                console.log("error: ", err);
                cbResult(err, null);
                return;
            }
            console.log("created contact: ", {id: res.insertId, ...newCustomer});
            cbResult(null,
                {msg: "New Contact from has been inserted!", id: res.insertId, ...newCustomer});
        });
    }


    /**
     * Select location by ID
     * @param id
     * @param cbResult: result of sql statement
     */
    //Aufgabe: Lese einen einzelnen Kunden anhand der ID aus
    //--Begin
    findById(id, cbResult) {
//??
//??
//??
//??
//??
//??
            //result of the select (greater than 0) has found a record (Tupel)
//??
//??
//??
//??
//??
            // not found Customer with the id
//??
//??
    };
    //--End


    /**
     * Get all customers
     * @param cbResult: result of sql statement
     */
    getAll(cbResult) {
        sql.query('SELECT * FROM location', (err, result) => {
            if (err) {
                console.log("error: ", err);
                cbResult(err, null);
                return;
            }
            console.log("location: ", result);
            cbResult(null, result);
        });
    };

    /**
     * Update location by ID
     * @param id: location ID
     * @param customer: location object literal
     * @param cbResult: result of sql statement
     */
    updateById(id, customer, cbResult) {
        //Aufgabe: Update der Attribute lastName, subject, description, phone
        //--Begin
//??
//??
        //--End
        sql.query(queryString,
            [customer.email, customer.firstName,customer.lastName,customer.subject,
                customer.description,customer.phone, parseInt(id)],
            (err, result) => {
                if (err) {
                    console.log("error: ", err);
                    cbResult(null, err);
                    return;
                }
                if (result.affectedRows === 0) {
                    // not found Customer with the id
                    cbResult({kind: "not_found"}, null);
                    return;
                }
                console.log("updated location: ", {id: id, ...customer});
                cbResult(null, {id: id, ...customer});
            }
        );
    };

    /**
     * Remove single location by ID
     * @param id
     * @param cbResult: result of sql statement
     */
    //Aufgabe: Einzelnen Kunden anhand der ID löschen
    //--Begin
    remove(id, cbResult) {
//??
//??
//??
//??
//??
//??
//??
                // not found Customer with the id
//??
//??
//??
//??
//??
//??
    }
    //--End

    /**
     * Remove all customers
     * @param cbResult: result of sql statement
     */
    //Aufgabe: Alle Kunden löschen
    //--Begin
    removeAll(cbResult) {
//??
//??
//??
//??
//??
//??
//??
//??
//??
    }
}

