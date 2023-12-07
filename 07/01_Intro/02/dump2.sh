#!/bin/bash
#
# MAC users has to change the variable tool according to their settings
timestamp=$(date '+%Y%m%d_%H%M%S')
tool="/c/Program Files/MySQL/MySQL Server 8.0/bin/mysqldump.exe"
"${tool}" guestbookdb --complete-insert \
  --result-file=./guestbookdb-${timestamp}.sql \
  --skip-extended-insert --user=root -p'Hello1234' --host=127.0.0.1 --port=3306