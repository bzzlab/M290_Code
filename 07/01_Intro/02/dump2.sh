#!/bin/bash
#
# variables
#tool="/usr/local/mysql/bin/mysqldump"
tool="C:/Program Files/MySQL/MySQL Server 8.0/bin/mysqldump.exe"
timestamp=$(date +%Y%m%d_%H%M%S)
#processing
"$tool" guestbookdb --complete-insert \
--skip-extended-insert \
--user=root -p'Hello1234' \
--result-file="./guestbookdb-${timestamp}.sql"
