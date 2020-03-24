# !/bin/bash
/usr/bin/rclone move --ignore-existing --verbose --transfers 1 --checkers 8 --contimeout 60s --timeout 300s --retries 3 --low-level-retries 10 --stats 15s --stats-file-name-length 0 ~/Downloads/HV.3/A-Class/ GSuite:/Video/HVideo/A-Class/

/usr/bin/rclone move --ignore-existing --verbose --transfers 1 --checkers 8 --contimeout 60s --timeout 300s --retries 3 --low-level-retries 10 --stats 15s --stats-file-name-length 0 ~/Downloads/HV.3/B-Class/ GSuite:/Video/HVideo/B-Class/

/usr/bin/rclone move --ignore-existing --verbose --transfers 1 --checkers 8 --contimeout 60s --timeout 300s --retries 3 --low-level-retries 10 --stats 15s --stats-file-name-length 0 ~/Downloads/HV.3/C-Class/ GSuite:/Video/HVideo/C-Class/
