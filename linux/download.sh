# Download files from Google Drive by rclone -----------------------------------
# !/bin/bash
/usr/bin/rclone move --ignore-existing --verbose --transfers 1 --checkers 8 --contimeout 60s --timeout 300s --retries 3 --low-level-retries 10 --stats 15s --stats-file-name-length 0 GSuite:/1 ~/Downloads/HV.1/.Downloading/
mv ~/Downloads/HV.1/.Downloading/* ~/Downloads/HV.1/
