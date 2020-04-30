# Download files from Google Drive by rclone -----------------------------------
# !/bin/bash
mv ~/Downloads/HVideo/HV.1/c/* ~/Downloads/HVideo/HV.2/
rclone move --include "/*.rar" --transfers 1 --use-mmap --progress --stats-file-name-length 0 GSuite:/ ~/Downloads/HVideo/HV.1/.d/
mv ~/Downloads/HVideo/HV.1/.d/* ~/Downloads/HVideo/HV.1/
printf "\n   << Download Finished >>\n\n"

total=1
count=0
while [ ${count} -lt ${total} ] ; do
    tlimit=$(( $total - $count ))
    echo -e "\rRun extract.sh directly or end the process? (E)xtract / (N)o \c"
    read -n1 -t 360 RESPONSE
    test ! -z "$RESPONSE" && { break ; }
    count=$((count+1))
done
case $RESPONSE in
    [eEyY]) sh ~/Documents/scripts/extract.sh ;;
    [nN]) printf "\n\n(OK) Checking Done\n\n" ;;
    *) sh ~/Documents/scripts/extract.sh ;;
esac
