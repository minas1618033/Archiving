# Extract RAR archives
# !/bin/bash
cd ~/Downloads/HVideo/HV.2/
ls ~/Downloads/HVideo/HV.1/ | while read filename
do
   mv ~/Downloads/HVideo/HV.1/"$filename" ~/Downloads/HVideo/HV.1/.e/"${filename#*of }"
done
mv ~/Downloads/HVideo/HV.1/.e/c ~/Downloads/HVideo/HV.1/c
for RARFILE in ~/Downloads/HVideo/HV.1/.e/*.rar; do
    size1="$(du -sh ~/Downloads/HVideo/HV.1/.e/ | awk '{print $1}')"
    size2="$(du -s ~/Downloads/HVideo/HV.1/.e/ | awk '{print $1}')"
    rate=100000
    ETA1=$((size2/rate)) 
    ETA2="$(date -d@$ETA1 -u +%H:%M:%S)" 
    printf "\n   << remain $size1 , ETA $ETA2 >>  ----------------------------\n"
    unrar e -c- -cu -o- -pPASSWORD "${RARFILE}" \*.{avi,AVI,iso,ISO,mkv,MKV,mp4,MP4,mpg,MPG,mpeg,MPEG,nrg,NRG,rm,RM,rmvb,RMVB,vob,VOB,wmv,WMV} &&
    rm ${RARFILE}
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
