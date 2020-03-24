# Archive -----------------------------------
# !/bin/bash
cd ~/Downloads/HV.2/A-Class/
mv *.jpg ~/Downloads/HV.3/A-Class/
mv *.png ~/Downloads/HV.3/A-Class/
for filename in *.{avi,mkv,mp4,mpg,mpeg,rm,rmvb,vob,wmv};
do wine 7z a -t7z -m0=lzma2 -mx9 -stx7z -mhe -mmt=4 -sdel -p'PASSWORD' ${filename%%.*}.7z $filename; rm "*.7z"; mv *.7z ~/Downloads/HV.3/A-Class/; done
cd ~/Downloads/HV.2/B-Class/
mv *.jpg ~/Downloads/HV.3/B-Class/
mv *.png ~/Downloads/HV.3/B-Class/
for filename in *.{avi,mkv,mp4,mpg,mpeg,rm,rmvb,vob,wmv};
do wine 7z a -t7z -m0=lzma2 -mx9 -stx7z -mhe -mmt=4 -sdel -p'PASSWORD' ${filename%%.*}.7z $filename; rm "*.7z"; mv *.7z ~/Downloads/HV.3/B-Class/; done
cd ~/Downloads/HV.2/C-Class/
mv *.jpg ~/Downloads/HV.3/C-Class/
mv *.png ~/Downloads/HV.3/C-Class/
for filename in *.{avi,mkv,mp4,mpg,mpeg,rm,rmvb,vob,wmv};
do wine 7z a -t7z -m0=lzma2 -mx9 -stx7z -mhe -mmt=4 -sdel -p'PASSWORD' ${filename%%.*}.7z $filename; rm "*.7z"; mv *.7z ~/Downloads/HV.3/C-Class/; done
