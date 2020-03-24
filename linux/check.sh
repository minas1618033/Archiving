# Check Duplicates -----------------------------------
# !/bin/bash
clear
printf "\n1.Checking for duplicates in /cover-path\n3.Checking for duplicates here\n7.Checking for duplicates by input filename\n\n"
read -n1 -p "Please choose an action : " ACTION
echo
    function download {
        total=1
        count=0
        while [ ${count} -lt ${total} ] ; do
            tlimit=$(( $total - $count ))
            echo -e "\rRun download.sh directly or end the process? (D)ownload / (N)o \c"
            read -n1 -t 360 RESPONSE
            test ! -z "$RESPONSE" && { break ; }
            count=$((count+1))
        done
        case $RESPONSE in
            [dDyY]) sh ~/Documents/scripts/download.sh ;;
            [nN]) printf "\n\n(OK) Checking Done\n\n" ;;
            *) sh ~/Documents/scripts/download.sh ;;
        esac
    } 

    case $ACTION in
        1)  cd /cover-path &&
            find -name "*" | grep " " | while read FILENAME; do
                if [ ! -z "$FILENAME" ]
                then
                    printf "$FILENAME\n"
                    mv "${FILENAME}" "${FILENAME// /}"
                fi ; done
            printf "\n(OK) All null character has been removed.\n\nCheck duplicates in /cover-path now，please waitting......\n"
            
            find /cover-path /remote-path -type f -print0 | awk -F/ 'BEGIN { RS="\0" } { n=$NF } k[n]==1 { print p[n]; } k[n] { print $0 } { p[n]=$0; k[n]++ }'
            printf "\n(OK) Checking Finished\n\n"
            kdialog --passivepopup 'Checking Finished.' 3 ||
            kdialog --passivepopup 'Checking Failed ! \nPlease check filenames again.' 8 &&
            download
            ;;
        3)  find . -not -path '*/\.*' -name "*" | grep " " | while read FILENAME; do
                if [ ! -z "$FILENAME" ]
                then
                    printf "$FILENAME\n"
                    mv "${FILENAME}" "${FILENAME// /}"
                fi ; done
            printf "\n(OK) All null character has been removed.\n\nCheck duplicates in /cover-path now，please waitting......\n"
            
            find ./ /remote-path -type f -print0 | awk -F/ 'BEGIN { RS="\0" } { n=$NF } k[n]==1 { print p[n]; } k[n] { print $0 } { p[n]=$0; k[n]++ }'
            printf "\n(OK) Checking Finished\n\n"
            kdialog --passivepopup 'Checking Finished.' 3 ||
            kdialog --passivepopup 'Checking Failed ! \nPlease check filenames again.' 8 &&
            download
            ;;
        7)  echo
            read -p "Please input filename : " FILENAME
            find /remote-path -name "*$FILENAME*" -type f -print0 
            printf "\n(OK) Checking Finished\n\n"
            kdialog --passivepopup 'Checking Finished.' 3 ||
            kdialog --passivepopup 'Checking Failed ! \nPlease check filenames again.' 8 &&
            download
            ;; 
        *)  printf "\n(Error) Please input again !\n\n"
            ;;
    esac
