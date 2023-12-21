#!/bin/bash
#
tool="C:/Program Files/MySQL/MySQL Server 8.0/bin/mysqldump.exe"
"$tool" guestbookdb --complete-insert \
--skip-extended-insert \
--user=root -p'Hello1234' \
--result-file="./guestbookdb-{timestamp}.sql"