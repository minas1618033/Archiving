# Extract RAR archives
# !/bin/bash
mv ~/Downloads/HV.1/*.rar ~/Downloads/HV.2/.Temp/
cd ~/Downloads/HV.2/
find . -name '.Temp/*.rar' -exec totalsize="$(du -sh | awk '{print $1}')" && echo "$totalsize is Pending" \; -exec unrar e -c- -cu -o- -pPASSWORD {} \*.{avi,AVI,mkv,MKV,mp4,MP4,mpg,MPG,mpeg,MPEG,rm,RM,rmvb,RMVB,vob,VOB,wmv,WMV} \; -exec rm {} \;
find . -name '*.*' -type f -exec bash -c 'base=${0%.*} ext=${0##*.} a=$base.${ext,,}; [ "$a" != "$0" ] && mv -- "$0" "$a"' {} \;
rm .Temp/*.rar
