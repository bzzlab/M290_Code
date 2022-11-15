// Validate form input elements
const validateLib = require('./ValidationLib');

/**
 * Validate form data
 * @param data
 * @returns {boolean|{msg: string, isNotValid: boolean}|{isNotValid}|*}
 */
function validateFormData(data) {
    // Check required fields
    let result = validateLib.checkRequired("firstName", data.firstName);
    if (result.isNotValid) { return result; }

    result = validateLib.checkRequired("email", data.email);
    if (result.isNotValid) { return result; }

    //Aufgabe: checkRequired für lastName, subject, description, phone hinzufügen
    //--Begin

    //--End

    //check length
    result = validateLib.checkLength("firstName",data.firstName, 3, 50);
    if (result.isNotValid) { return result; }

    //Aufgabe: checkLength für lastName hinzufügen
    //--Begin

    //--End

    //check email syntax
    result = validateLib.checkEmail("email", data.email);
    if (result.isNotValid) { return result; }

    //check mobile syntax
    //Aufgabe: Validierungsregel der Mobilenummer anwenden
    //--Begin

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
