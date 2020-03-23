# Checkinf for Duplicates -----------------------------------
# !/bin/bash
clear
cd ~/Source folder/
find -name "*" | grep " " | while read file; do
    if [ ! -z "$file" ]
    then
        printf "$file\n"
        mv "${file}" "${file// /}"
    fi ; done
printf "檔名修正完成\n\n正在執行重複性檢查，請稍後......\n";

find ~/Source folder/ ~/Destination folder/ -type f -print0 | awk -F/ 'BEGIN { RS="\0" } { n=$NF } k[n]==1 { print p[n]; } k[n] { print $0 } { p[n]=$0; k[n]++ }'

printf "\n重複性檢查完成\n";
