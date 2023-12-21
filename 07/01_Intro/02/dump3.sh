#!/bin/bash
#
if test $# -lt 1;then
  echo "Error: A database as argument is required!"
  echo "Exit script."
  exit 1
fi
database=$1

# MAC users has to change the variable tool according to their settings
timestamp=$(date '+%Y%m%d_%H%M%S')
tool="/c/Program Files/MySQL/MySQL Server 8.0/bin/mysqldump.exe"
"${tool}" ${database} --complete-insert \
  --result-file=./${database}-${timestamp}.sql \
  --skip-extended-insert --user=root -p'Hello1234' --host=127.0.0.1 --port% =3306