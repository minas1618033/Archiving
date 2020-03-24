# Extract RAR archives
# !/bin/bash
# 1.Move --------------------------------------
cd ~/Downloads/1.Downloading/
for filename in *.*; do mv -- "$filename" "${filename:0: -4}"; done
mv *.rar ~/Downloads/2.Extracting/

# 2.Extract -----------------------------------
# !/bin/bash
cd ~/Downloads/2.Extracting/
for filename in *.rar;
do
  unrar e -cu -o- -pPASSWORD "${filename}" \*.{avi,AVI,mkv,MKV,mp4,MP4,mpg,MPG,mpeg,MPEG,rm,RM,rmvb,RMVB,vob,VOB,wmv,WMV};
done
rm *.rar
find . -name '*.*' -type f -exec bash -c 'base=${0%.*} ext=${0##*.} a=$base.${ext,,}; [ "$a" != "$0" ] && mv -- "$0" "$a"' {} \;

# 1.-df (delete file after extracting) maybe invalid in RAR 5.80, so add rm command.
# 2.Alternative script:
#	find . -name '*.*' -exec sh -c ' a=$(echo "$0" | sed -r "s/([^.]*)\$/\L\1/"); [ "$a" != "$0" ] && mv "$0" "$a" ' {} \;
