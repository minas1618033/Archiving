# Archive -----------------------------------
# !/bin/bash
clear
cd ~/Downloads/HV.2/A-Class/
for filename in *.jpg; do
    if [ ${#filename} -ge 7 ]; then
        WINEDEBUG=fixme-all wine 7z a -mx9 -slp -mmt=4 -mhe -ms=on -p'PASSWORD' -sdel -x!*.jpg -w/home/user/Downloads/HV.3/.A-Class/ ~/Downloads/HV.3/A-Class/${filename%%.*}.7z ${filename%%.*}*.*
        mv $filename ~/Downloads/HV.3/A-Class/
    fi done

cd ~/Downloads/HV.2/B-Class/
for filename in *.jpg; do
    if [ ${#filename} -ge 7 ]; then
        WINEDEBUG=fixme-all wine 7z a -mx9 -slp -mmt=4 -mhe -ms=on -p'PASSWORD' -sdel -x!*.jpg -w/home/user/Downloads/HV.3/.B-Class/ ~/Downloads/HV.3/B-Class/${filename%%.*}.7z ${filename%%.*}*.*
        mv $filename ~/Downloads/HV.3/B-Class/
    fi done

cd ~/Downloads/HV.2/C-Class/
for filename in *.jpg; do
    if [ ${#filename} -ge 7 ]; then
        WINEDEBUG=fixme-all wine 7z a -mx9 -slp -mmt=4 -mhe -ms=on -p'PASSWORD' -sdel -x!*.jpg -w/home/user/Downloads/HV.3/.C-Class/ ~/Downloads/HV.3/C-Class/${filename%%.*}.7z ${filename%%.*}*.*
        mv $filename ~/Downloads/HV.3/C-Class/
    fi done
