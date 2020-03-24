# Archive -----------------------------------
# !/bin/bash
clear
printf "\n1.Archive videos in /HVideo\n3.Archive everything here with password\n7.Archive everything here\n\n"
read -n1 -p "Please choose an action : " action
echo
    case $action in
        1)    
            function RENAME()
            {
                find -name "*" | grep " " | while read file; do
                mv "${file}" "${file// /}"; done
            }

            cd ~/Downloads/HVideo/HV.2/
            if [ ! -z "$(find -name "*" | grep " ")" ]
                then
                    find -name "*" | grep " " | while read file; do
                        printf "$file\n"
                    done

                    while true; do
                        read -p "Some filenames incloud whitespace character, Do you rename them ?  " -n 1
                        case $reply in
                            [Yy] ) RENAME; printf "\nRename Sucess !\n\nStart archive process, please waiting......\n"; break; ;;
                            [Nn] ) printf "\nFiles is unfiled, please check it later.\n"; exit; ;;
                            * ) printf "\nPlease input again.\n\n"; ;;
                        esac
                    done
            fi

            cd ~/Downloads/HVideo/HV.2/A/
            for filename in *.jpg; do
                if [ ${#filename} -ge 7 ]; then
                    size1="$(du -ch ~/Downloads/HVideo/HV.2/A/ ~/Downloads/HVideo/HV.2/B/ ~/Downloads/HVideo/HV.2/C/ ~/Downloads/HVideo/HV.2/D/ ~/Downloads/HVideo/HV.2/E/ | tail -n 1 | awk '{print $1}')"
                    size2="$(du -c ~/Downloads/HVideo/HV.2/A/ ~/Downloads/HVideo/HV.2/B/ ~/Downloads/HVideo/HV.2/C/ ~/Downloads/HVideo/HV.2/D/ ~/Downloads/HVideo/HV.2/E/ | tail -n 1 | awk '{print $1}')"
                    rate=7000
                    ETA1=$((size2/rate))
                    ETA2="$(date -d@$ETA1 -u +%H:%M:%S)" 
                    printf "\n   << remain $size1 , ETA $ETA2 >>  ----------------------------\n"    
                    WINEDEBUG=fixme-all wine64 7z a -mx9 -slp -mmt=4 -mhe -ms=on -p'PASSWORD' -sdel -x!*.jpg -w/home/user/Downloads/HVideo/HV.3/.A/ ~/Downloads/HVideo/HV.3/A/${filename%%.*}.7z ${filename%%.*}*.*
                    mv $filename ~/Downloads/HVideo/HV.3/A/
                fi done

            cd ~/Downloads/HVideo/HV.2/B/
            for filename in *.jpg; do
                if [ ${#filename} -ge 7 ]; then
                    size1="$(du -ch ~/Downloads/HVideo/HV.2/B/ ~/Downloads/HVideo/HV.2/C/ ~/Downloads/HVideo/HV.2/D/ ~/Downloads/HVideo/HV.2/E/ | tail -n 1 | awk '{print $1}')"
                    size2="$(du -c ~/Downloads/HVideo/HV.2/B/ ~/Downloads/HVideo/HV.2/C/ ~/Downloads/HVideo/HV.2/D/ ~/Downloads/HVideo/HV.2/E/ | tail -n 1 | awk '{print $1}')"
                    rate=7000
                    ETA1=$((size2/rate))
                    ETA2="$(date -d@$ETA1 -u +%H:%M:%S)" 
                    printf "\n   << remain $size1 , ETA $ETA2 >>  ----------------------------\n"    
                    WINEDEBUG=fixme-all wine64 7z a -mx9 -slp -mmt=4 -mhe -ms=on -p'PASSWORD' -sdel -x!*.jpg -w/home/user/Downloads/HVideo/HV.3/.B/ ~/Downloads/HVideo/HV.3/B/${filename%%.*}.7z ${filename%%.*}*.*
                    mv $filename ~/Downloads/HVideo/HV.3/B/
                fi done

            cd ~/Downloads/HVideo/HV.2/C/
            for filename in *.jpg; do
                if [ ${#filename} -ge 7 ]; then
                    size1="$(du -ch ~/Downloads/HVideo/HV.2/C/ ~/Downloads/HVideo/HV.2/D/ ~/Downloads/HVideo/HV.2/E/ | tail -n 1 | awk '{print $1}')"
                    size2="$(du -c ~/Downloads/HVideo/HV.2/C/ ~/Downloads/HVideo/HV.2/D/ ~/Downloads/HVideo/HV.2/E/ | tail -n 1 | awk '{print $1}')"
                    rate=7000
                    ETA1=$((size2/rate))
                    ETA2="$(date -d@$ETA1 -u +%H:%M:%S)" 
                    printf "\n   << remain $size1 , ETA $ETA2 >>  ----------------------------\n"    
                    WINEDEBUG=fixme-all wine64 7z a -mx9 -slp -mmt=4 -mhe -ms=on -p'PASSWORD' -sdel -x!*.jpg -w/home/user/Downloads/HVideo/HV.3/.C/ ~/Downloads/HVideo/HV.3/C/${filename%%.*}.7z ${filename%%.*}*.*
                    mv $filename ~/Downloads/HVideo/HV.3/C/
                fi done
                
            cd ~/Downloads/HVideo/HV.2/D/
            for filename in *.jpg; do
                if [ ${#filename} -ge 7 ]; then
                    size1="$(du -ch ~/Downloads/HVideo/HV.2/D/ ~/Downloads/HVideo/HV.2/E/ | tail -n 1 | awk '{print $1}')"
                    size2="$(du -c ~/Downloads/HVideo/HV.2/D/ ~/Downloads/HVideo/HV.2/E/ | tail -n 1 | awk '{print $1}')"
                    rate=7000
                    ETA1=$((size2/rate))
                    ETA2="$(date -d@$ETA1 -u +%H:%M:%S)" 
                    printf "\n   << remain $size1 , ETA $ETA2 >>  ----------------------------\n"    
                    WINEDEBUG=fixme-all wine64 7z a -mx9 -slp -mmt=4 -mhe -ms=on -p'PASSWORD' -sdel -x!*.jpg -w/home/user/Downloads/HVideo/HV.3/.D/ ~/Downloads/HVideo/HV.3/D/${filename%%.*}.7z ${filename%%.*}*.*
                    mv $filename ~/Downloads/HVideo/HV.3/D/
                fi done

            cd ~/Downloads/HVideo/HV.2/E/
            for filename in *.jpg; do
                if [ ${#filename} -ge 7 ]; then
                    size1="$(du -ch ~/Downloads/HVideo/HV.2/E/ | tail -n 1 | awk '{print $1}')"
                    size2="$(du -c ~/Downloads/HVideo/HV.2/E/ | tail -n 1 | awk '{print $1}')"
                    rate=7000
                    ETA1=$((size2/rate))
                    ETA2="$(date -d@$ETA1 -u +%H:%M:%S)" 
                    printf "\n   << remain $size1 , ETA $ETA2 >>  ----------------------------\n"    
                    WINEDEBUG=fixme-all wine64 7z a -mx9 -slp -mmt=4 -mhe -ms=on -p'PASSWORD' -sdel -x!*.jpg -w/home/user/Downloads/HVideo/HV.3/.E/ ~/Downloads/HVideo/HV.3/E/${filename%%.*}.7z ${filename%%.*}*.*
                    mv $filename ~/Downloads/HVideo/HV.3/E/
                fi done
            ;;
        3)
            dirname=${PWD##*/}
            WINEDEBUG=fixme-all wine64 7z a -mx9 -slp -mmt=4 -mhe -ms=on -p'PASSWORD' -sdel "$dirname.7z" *
            ;;
        7)
            dirname=${PWD##*/}
            WINEDEBUG=fixme-all wine64 7z a -mx9 -slp -mmt=4 -mhe -ms=on -sdel "$dirname.7z" *
            ;;
    esac
