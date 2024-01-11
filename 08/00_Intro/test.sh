#!/bin/bash
#
# get all customers
function getCustomers {
}

# register new customer
function setCustomer {
  curl -X POST http://localhost:3000/customer \
    -H 'Content-Type: application/json' \
}

getCustomers
setCustomer "hmuster@beispiel.ch" "Hans"
setCustomer "anna.muster@beispiel.ch" "Anna"
setCustomer "fritz.muster@example.com" "Fritz"
getCustomers
