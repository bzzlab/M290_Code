#!/bin/bash
#
# get all customers
function getCustomers {
  curl -X GET http://localhost:3000/customers #??
}

# register new customer
function setCustomer {
  local email=$1 #??
  local fName=$2 #??
  timestamp=$(date '+%Y%m%d') #??
  curl -X POST http://localhost:3000/customer \
    -H 'Content-Type: application/json' \
    -d '{"email":"'${email}'","firstName":"'${fName}'","registered":"'${timestamp}'"}' #??
}

getCustomers
setCustomer "hmuster@beispiel.ch" "Hans"
setCustomer "anna.muster@beispiel.ch" "Anna"
setCustomer "fritz.muster@example.com" "Fritz"
getCustomers
