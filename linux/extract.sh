# Extract RAR archives
# !/bin/bash
mv ~/Downloads/HV.1/*.rar ~/Downloads/HV.2/.Temp/
cd ~/Downloads/HV.2/
for filename in .Temp/*.rar;
  do
    unrar e -c- -cu -o- -pPASSWORD "${filename}" \*.{avi,AVI,mkv,MKV,mp4,MP4,mpg,MPG,mpeg,MPEG,rm,RM,rmvb,RMVB,vob,VOB,wmv,WMV};
  done
rm .Temp/*.rar
find . -name '*.*' -type f -exec bash -c 'base=${0%.*} ext=${0##*.} a=$base.${ext,,}; [ "$a" != "$0" ] && mv -- "$0" "$a"' {} \;
