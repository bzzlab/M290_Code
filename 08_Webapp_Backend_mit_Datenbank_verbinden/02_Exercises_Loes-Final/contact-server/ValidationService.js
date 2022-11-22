// Validate form input elements
const validateLib = require('./ValidationLib');

/**
 * Validate User
 * @param userObj
 * @returns {boolean|{msg: string, isNotValid: boolean}|{isNotValid}|*}
 */

/*
    "email": req.body.email,
    "firstName": req.body.firstName,
    "lastName": req.body.lastName,
    "subject": req.body.subject,
    "description": req.body.description,
    "phone": req.body.phone,
*/

function validateFormData(data) {
    // Check required fields
    let result = validateLib.checkRequired("firstName", data.firstName);
    if (result.isNotValid) { return result; }

    result = validateLib.checkRequired("lastName", data.lastName);
    if (result.isNotValid) { return result; }

    result = validateLib.checkRequired("email", data.email);
    if (result.isNotValid) { return result; }

    result = validateLib.checkRequired("subject", data.subject);
    if (result.isNotValid) { return result; }

    result = validateLib.checkRequired("phone", data.phone);
    if (result.isNotValid) { return result; }

    //check length
    result = validateLib.checkLength("firstName",data.firstName, 3, 50);
    if (result.isNotValid) { return result; }

    result = validateLib.checkLength("lastName", data.lastName, 3, 50);
    if (result.isNotValid) { return result; }

    //check email syntax
    result = validateLib.checkEmail("email", data.email);
    if (result.isNotValid) { return result; }

    //check mobile syntax
    //Aufgabe: Validierungsregel der Mobilenummer anwenden
    //--Begin
    result = validateLib.checkMobileNumber("phone", data.phone);
    if (result.isNotValid) { return result; }
    //--End


    //all inputs are valid and isNotValid=false
    return false;
}

/**
 *  Export validation functions for further usage.
 *  function to export WITHOUT beackets!
 */
module.exports = {
    validateContact: validateFormData
}
