# Checkinf for Duplicates -----------------------------------
# !/bin/bash
clear
find ~/Source folder/ ~/Destination folder/ -type f -print0 | awk -F/ 'BEGIN { RS="\0" } { n=$NF } k[n]==1 { print p[n]; } k[n] { print $0 } { p[n]=$0; k[n]++ }'
