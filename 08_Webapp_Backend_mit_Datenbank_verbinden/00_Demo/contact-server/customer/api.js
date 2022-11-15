const customer = require('./contoller');
module.exports = app => {
    //Create a new customer (SQL-Insert)
    app.post("/customer", customer.create);

    //Retrieve all customers (SQL-SELECT)
    app.get('/customers', customer.findAll);

    //Update a customer with customerId (SQL-UPDATE)
    app.put('/customer/:id', customer.update);
}
