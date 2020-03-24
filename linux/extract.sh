# Extract RAR archives
# !/bin/bash
clear
cd ~/Downloads/HV.2/
ls ~/Downloads/HV.1/ | while read illegalname
do
   mv ~/Downloads/HV.1/"$illegalname" .Temp/"${illegalname#*of }"
done

for rarfile in .Temp/*.rar; do
    remainsize1="$(du -sh ~/Downloads/HV.2/.Temp/ | awk '{print $1}')"
    remainsize2="$(du -s ~/Downloads/HV.2/.Temp/ | awk '{print $1}')"
    transferspeed=50000
    ETA1=$((remainsize2/transferspeed)) 
    ETA2="$(date -d@$ETA1 -u +%H:%M:%S)" 
    printf "\n   << remain $remainsize1 , ETA $ETA2 >>  ----------------------------\n"
    unrar e -c- -cu -o- -pPASSWORD "${rarfile}" \*.{avi,AVI,mkv,MKV,mp4,MP4,mpg,MPG,mpeg,MPEG,rm,RM,rmvb,RMVB,vob,VOB,wmv,WMV}
    rm ${rarfile}
done
find . -name '*.*' -type f -exec bash -c 'base=${0%.*} ext=${0##*.} a=$base.${ext,,}; [ "$a" != "$0" ] && mv -- "$0" "$a"' {} \;
printf "\n   << Extraction Finished >>\n\n"

# 因檔名包含空格，需加""
# {illegalname#*of }爲將檔名從頭刪減至"of "後保留
# 僅適用於.rar , .r01 .part1 等無效
# -c- : Disable comments show
# -cu : Convert names to upper case
# -o- : Set the no overwrite mode
# -p  : Set password
