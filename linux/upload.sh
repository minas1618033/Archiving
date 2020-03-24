# !/bin/bash
# Upload Files to GSuite with bandwidth limit-----------------------------------
clear
sourceA="$(du -s ~/Downloads/HV.3/A-Class/ | awk '{print $1}')"
if [ $sourceA -gt 1000 ]
then
rclone move --ignore-existing --transfers 1 --bwlimit 4M --no-traverse --use-mmap --buffer-size 1G --drive-chunk-size 1G --progress --stats-file-name-length 0 ~/Downloads/HV.3/A-Class/ GSuite:/Video/HVideo/A-Class/
printf "\n   << A-Class Upload Finished >>\n\n"
else
printf "\n   << A-Class Nothing to Do >>\n\n"
fi

sourceB="$(du -s ~/Downloads/HV.3/B-Class/ | awk '{print $1}')"
if [ $sourceB -gt 1000 ]
then
rclone move --ignore-existing --transfers 1 --bwlimit 4M --no-traverse --use-mmap --buffer-size 1G --drive-chunk-size 1G --progress --stats-file-name-length 0 ~/Downloads/HV.3/B-Class/ GSuite:/Video/HVideo/B-Class/
printf "\n   << B-Class Upload Finished >>\n\n"
else
printf "\n   << B-Class Nothing to Do >>\n\n"
fi

sourceB="$(du -s ~/Downloads/HV.3/C-Class/ | awk '{print $1}')"
if [ $sourceB -gt 1000 ]
then
rclone move --ignore-existing --transfers 1 --bwlimit 4M --no-traverse --use-mmap --buffer-size 1G --drive-chunk-size 1G --progress --stats-file-name-length 0 ~/Downloads/HV.3/C-Class/ GSuite:/Video/HVideo/C-Class/
fi
printf "\n   << Upload Finished >>\n\n"



# Upload Files to GSuite without bandwidth limit-----------------------------------
# !/bin/bash
clear
sourceA="$(du -s ~/Downloads/HV.3/A-Class/ | awk '{print $1}')"
if [ $sourceA -gt 1000 ]
then
rclone move --ignore-existing --transfers 1 --no-traverse --use-mmap --buffer-size 1G --drive-chunk-size 1G --progress --stats-file-name-length 0 ~/Downloads/HV.3/A-Class/ GSuite:/Video/HVideo/A-Class/
printf "\n   << A-Class Upload Finished >>\n\n"
else
printf "\n   << A-Class Nothing to Do >>\n\n"
fi

sourceB="$(du -s ~/Downloads/HV.3/B-Class/ | awk '{print $1}')"
if [ $sourceB -gt 1000 ]
then
rclone move --ignore-existing --transfers 1 --no-traverse --use-mmap --buffer-size 1G --drive-chunk-size 1G --progress --stats-file-name-length 0 ~/Downloads/HV.3/B-Class/ GSuite:/Video/HVideo/B-Class/
printf "\n   << B-Class Upload Finished >>\n\n"
else
printf "\n   << B-Class Nothing to Do >>\n\n"
fi

sourceB="$(du -s ~/Downloads/HV.3/C-Class/ | awk '{print $1}')"
if [ $sourceB -gt 1000 ]
then
rclone move --ignore-existing --transfers 1 --no-traverse --use-mmap --buffer-size 1G --drive-chunk-size 1G --progress --stats-file-name-length 0 ~/Downloads/HV.3/C-Class/ GSuite:/Video/HVideo/C-Class/
fi
printf "\n   << Upload Finished >>\n\n"
