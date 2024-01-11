const customer = require("./controller.js");
module.exports = app => {
  //const location = require("./controller.js");

  // Create a new Customer
  app.post("/customer", customer.create);

  //M290-Aufgabe: REST-API, um alle Kunden auszugeben
  //--Begin
  // Retrieve all Customers
//??
  //--End

  //M290-Aufgabe: REST-API, um EINEN Kunden anhand der ID auszugeben
  //--Begin
  // Retrieve a single Customer with login id
//??
  //--End

  // Update a Customer with customerId
  app.put("/customer/:id", customer.update);


  //M290-Aufgabe: REST-API, um EINEN Kunden anhand der ID zu löschen
  //--Begin
  // Delete a Customer with customerId
//??
  //--End


  //M290-Aufgabe: REST-API, um alle Kunden zu löschen
  //--Begin
  // delete all customers
//??
  //--End

};
