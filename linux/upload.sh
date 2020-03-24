# !/bin/bash
# Upload Files to GSuite with bandwidth limit-----------------------------------
clear
rclone move --ignore-existing --transfers 1 --bwlimit 4M --no-traverse --drive-chunk-size 1G --progress --stats-file-name-length 0 ~/Downloads/HV.3/A-Class/ GSuite:/Video/HVideo/A-Class/
rclone move --ignore-existing --transfers 1 --bwlimit 4M --no-traverse --drive-chunk-size 1G --progress --stats-file-name-length 0 ~/Downloads/HV.3/B-Class/ GSuite:/Video/HVideo/B-Class/
rclone move --ignore-existing --transfers 1 --bwlimit 4M --no-traverse --drive-chunk-size 1G --progress --stats-file-name-length 0 ~/Downloads/HV.3/C-Class/ GSuite:/Video/HVideo/C-Class/

printf "\n              << Upload Finished >>\n\n"


# Upload Files to GSuite without bandwidth limit-----------------------------------
# !/bin/bash
clear
rclone move --ignore-existing --transfers 1 --no-traverse --drive-chunk-size 1G --progress --stats-file-name-length 0 ~/Downloads/HV.3/A-Class/ GSuite:/Video/HVideo/A-Class/

rclone move --ignore-existing --transfers 1 --no-traverse --drive-chunk-size 1G --progress --stats-file-name-length 0 ~/Downloads/HV.3/B-Class/ GSuite:/Video/HVideo/B-Class/

rclone move --ignore-existing --transfers 1 --no-traverse --drive-chunk-size 1G --progress --stats-file-name-length 0 ~/Downloads/HV.3/C-Class/ GSuite:/Video/HVideo/C-Class/

printf "\n              << Upload Finished >>\n\n"
