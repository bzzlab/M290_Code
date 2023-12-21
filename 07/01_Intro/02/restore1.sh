#!/usr/bin/env bash
#
if test $# -lt 1;then
  echo "Error: A database name and backup as arguments are required!"
  echo "Exit script."
  exit 1
fi
DB_NAME=$1
DB_BACKUP=$2

# Line number to insert the text
line_number=17
# Text to insert
text_to_insert="create database if not exists ${DB_NAME};\n use ${DB_NAME};"
# Use sed to insert the text at the specified line
sed -i "${line_number}i\\$text_to_insert" "${DB_BACKUP}"

tool="/c/Program Files/MySQL/MySQL Server 8.0/bin/mysql.exe"
connection="--user=root --password=Hello1234 --host=127.0.0.1 --port=3306"
"${tool}" ${connection} < ./${DB_BACKUP}
"${tool}" ${connection} -e 'show databases;'

