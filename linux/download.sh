# Download files from Google Drive by rclone -----------------------------------
# !/bin/bash
clear
rclone move --ignore-existing --transfers 1 --use-mmap --buffer-size 1G  --progress --stats-file-name-length 0 GSuite:/1 ~/Downloads/HV.1/.Downloading/
rclone move --include "/*.rar" --ignore-existing --transfers 1 --use-mmap --buffer-size 1G  --progress --stats-file-name-length 0 GSuite:/ ~/Downloads/HV.1/.Downloading/
mv ~/Downloads/HV.1/.Downloading/* ~/Downloads/HV.1/
printf "\n   << Download Finished >>\n\n"
