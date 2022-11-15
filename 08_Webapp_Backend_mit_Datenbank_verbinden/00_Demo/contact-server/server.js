/*
Thema: Email-Kontakt
Einfacher Server, um über das Webseiten-Formular den Benutzer zu kontaktieren.
Der Server dient zu Übung zur Validierung von Benutzereingaben im Backend.
 */

'use strict';
let express = require("express");
let bodyParser = require("body-parser");
const cors = require("cors");

let app     = express();
//Set express variable
app.use(cors({orgin: '*'}));
const port = process.env.PORT || 3000;
const server = app.listen(port);
console.log(`Running at Port ${port}`);
server.timeout = 1000 * 60 * 2; // 2 minutes

// necessary for posting data
// support json encoded bodies
app.use(bodyParser.json());
// support encoded bodies
app.use(bodyParser.urlencoded({ extended: true }));

//test uuid
app.get('/welcome', (req, res) => {
    res.json({message: "Welcome to ContactDB!"});
});

//add customer routes
require("./customer/api.js")(app);
