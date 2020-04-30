# Upload HVideo to GSuite-----------------------------------
# !/bin/bash
sourceA="/home/zelko/Downloads/HVideo/HV.3/A/"
sourceB="/home/zelko/Downloads/HVideo/HV.3/B/"
sourceC="/home/zelko/Downloads/HVideo/HV.3/C/"
sourceD="/home/zelko/Downloads/HVideo/HV.3/D/"
sourceE="/home/zelko/Downloads/HVideo/HV.3/E/"
sizeA="$(du -s $sourceA | awk '{print $1}')"
sizeB="$(du -s $sourceB | awk '{print $1}')"
sizeC="$(du -s $sourceC | awk '{print $1}')"
sizeD="$(du -s $sourceD | awk '{print $1}')"
sizeE="$(du -s $sourceE | awk '{print $1}')"
destinationA="GSuite:/Video/HVideo/A-Class/"
destinationB="GSuite:/Video/HVideo/B-Class/"
destinationC="GSuite:/Video/HVideo/C-Class/"
destinationD="GSuite:/Video/HVideo/D-Class/"
destinationE="GSuite:/Video/HVideo/E-Class/"
move="rclone move --transfers 1 --bwlimit 5M --no-traverse --use-mmap --drive-chunk-size 1G --progress --stats-file-name-length 0"
moveX="rclone move --transfers 1 --no-traverse --use-mmap --drive-chunk-size 1G --progress --stats-file-name-length 0"

clear
printf "\n1.Upload archives in /HVideo\n3.Upload archives in /HVideo without bandwidth limit\n7.Upload archives in /HVideo once\n\n"
read -n1 -p "Please choose an action : " action
printf "\n\n"
    case $action in
        1)  function UPLOAD() {
                if [ $sizeA -gt 1000 ]
                    then
                        $move $sourceA $destinationA
                        printf "\n   << A-Class Upload Finished >>\n\n"
                    else
                        printf "\n   << A-Class Nothing to Do >>\n\n"
                fi
                if [ $sizeB -gt 1000 ]
                    then
                        $move $sourceB $destinationB
                        printf "\n   << B-Class Upload Finished >>\n\n"
                    else
                        printf "\n   << B-Class Nothing to Do >>\n\n"
                fi
                if [ $sizeC -gt 1000 ]
                    then
                        $move $sourceC $destinationC
                        printf "\n   << C-Class Upload Finished >>\n\n"
                    else
                        printf "\n   << C-Class Nothing to Do >>\n\n"
                fi
                if [ $sizeD -gt 1000 ]
                    then
                        $move $sourceD $destinationD
                        printf "\n   << D-Class Upload Finished >>\n\n"
                    else
                        printf "\n   << D-Class Nothing to Do >>\n\n"
                fi
                if [ $sizeE -gt 1000 ]
                    then
                        $move $sourceE $destinationE
                fi
            } 
            UPLOAD
            UPLOAD
            ;;
        3)  function UPLOADX() {
                if [ $sizeA -gt 1000 ]
                    then
                        $moveX $sourceA $destinationA
                        printf "\n   << A-Class Upload Finished >>\n\n"
                    else
                        printf "\n   << A-Class Nothing to Do >>\n\n"
                fi
                if [ $sizeB -gt 1000 ]
                    then
                        $moveX $sourceB $destinationB
                        printf "\n   << B-Class Upload Finished >>\n\n"
                    else
                        printf "\n   << B-Class Nothing to Do >>\n\n"
                fi
                if [ $sizeC -gt 1000 ]
                    then
                        $moveX $sourceC $destinationC
                        printf "\n   << C-Class Upload Finished >>\n\n"
                    else
                        printf "\n   << C-Class Nothing to Do >>\n\n"
                fi
                if [ $sizeD -gt 1000 ]
                    then
                        $moveX $sourceD $destinationD
                        printf "\n   << D-Class Upload Finished >>\n\n"
                    else
                        printf "\n   << D-Class Nothing to Do >>\n\n"
                fi
                if [ $sizeE -gt 1000 ]
                    then
                        $moveX $sourceE $destinationE
                fi
            } 
            UPLOADX
            UPLOADX
            ;;
        7)  function UPLOADX() {
                if [ $sizeA -gt 1000 ]
                    then
                        $moveX $sourceA $destinationA
                        printf "\n   << A-Class Upload Finished >>\n\n"
                    else
                        printf "\n   << A-Class Nothing to Do >>\n\n"
                fi
                if [ $sizeB -gt 1000 ]
                    then
                        $moveX $sourceB $destinationB
                        printf "\n   << B-Class Upload Finished >>\n\n"
                    else
                        printf "\n   << B-Class Nothing to Do >>\n\n"
                fi
                if [ $sizeC -gt 1000 ]
                    then
                        $moveX $sourceC $destinationC
                        printf "\n   << C-Class Upload Finished >>\n\n"
                    else
                        printf "\n   << C-Class Nothing to Do >>\n\n"
                fi
                if [ $sizeD -gt 1000 ]
                    then
                        $moveX $sourceD $destinationD
                        printf "\n   << D-Class Upload Finished >>\n\n"
                    else
                        printf "\n   << D-Class Nothing to Do >>\n\n"
                fi
                if [ $sizeE -gt 1000 ]
                    then
                        $moveX $sourceE $destinationE
                fi
            } 
            UPLOADX
            ;;
        *)  printf "\n(Error) Please input again !\n\n"
            exit;
            ;;
    esac

printf "\n   << Upload Finished >>\n\n"
