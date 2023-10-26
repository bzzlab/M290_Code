#!/bin/bash
#
TOOL="../../bin/aprep.sh"
DEST="../02_Exercises/"

## declare an array variable
declare -a scriptArr=('1-A' '2-A' '3-A')
## now loop through the above array
for s in "${scriptArr[@]}"
do
   skript="a0${s}.sql"
   echo "Preparing $skript ..."
   "$TOOL" -p "$DEST" -e "$skript"
done

