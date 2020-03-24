# Archive -----------------------------------
# !/bin/bash
cd ~/Downloads/HV.2/A-Class/
for filename in *.{avi,mkv,mp4,mpg,mpeg,rm,rmvb,vob,wmv}; do
    if [ ${#filename} -ge 7 ]; then
        mv ${filename%%.*}.jpg ~/Downloads/HV.3/.A-Class/
        wine 7z a -t7z -m0=lzma2 -mx9 -stx7z -mhe -mmt=4 -sdel -p'PASSWORD' ~/Downloads/HV.3/.A-Class/${filename%%.*}.7z $filename
        mv ~/Downloads/HV.3/.A-Class/${filename%%.*}.* ~/Downloads/HV.3/A-Class/
    fi done

cd ~/Downloads/HV.2/A-Class.MF/
for dirname in *; do
    mv ~/Downloads/HV.2/A-Class.MF/$dirname/$dirname.jpg ~/Downloads/HV.3/.A-Class/
    wine 7z a -t7z -m0=lzma2 -mx9 -r -stx7z -mhe -mmt=4 -sdel -p'PASSWORD' ~/Downloads/HV.3/.A-Class/$dirname.7z ~/Downloads/HV.2/A-Class.MF/$dirname/*.*
    find ~/Downloads/HV.2/A-Class.MF -depth -empty -type d -exec rmdir -v {} \;
    mv ~/Downloads/HV.3/.A-Class/$dirname.* ~/Downloads/HV.3/A-Class/
done

cd ~/Downloads/HV.2/B-Class/
for filename in *.{avi,mkv,mp4,mpg,mpeg,rm,rmvb,vob,wmv}; do
    if [ ${#filename} -ge 7 ]; then
        mv ${filename%%.*}.jpg ~/Downloads/HV.3/.B-Class/
        wine 7z a -t7z -m0=lzma2 -mx9 -stx7z -mhe -mmt=4 -sdel -p'PASSWORD' ~/Downloads/HV.3/.B-Class/${filename%%.*}.7z $filename
        mv ~/Downloads/HV.3/.B-Class/${filename%%.*}.* ~/Downloads/HV.3/B-Class/
    fi done

cd ~/Downloads/HV.2/B-Class.MF/
for dirname in *; do
    mv ~/Downloads/HV.2/B-Class.MF/$dirname/$dirname.jpg ~/Downloads/HV.3/B-Class/
    find ~/Downloads/HV.2/B-Class.MF -depth -empty -type d -exec rmdir -v {} \;
    mv ~/Downloads/HV.3/.B-Class/$dirname.* ~/Downloads/HV.3/B-Class/
done

cd ~/Downloads/HV.2/C-Class/
for filename in *.{avi,mkv,mp4,mpg,mpeg,rm,rmvb,vob,wmv}; do
    if [ ${#filename} -ge 7 ]; then
        mv ${filename%%.*}.jpg ~/Downloads/HV.3/.C-Class/
        wine 7z a -t7z -m0=lzma2 -mx9 -stx7z -mhe -mmt=4 -sdel -p'PASSWORD' ~/Downloads/HV.3/.C-Class/${filename%%.*}.7z $filename
        mv ~/Downloads/HV.3/.C-Class/${filename%%.*}.* ~/Downloads/HV.3/C-Class/
    fi done

cd ~/Downloads/HV.2/C-Class.MF/
for dirname in *; do
    mv ~/Downloads/HV.2/C-Class.MF/$dirname/$dirname.jpg ~/Downloads/HV.3/C-Class/
    wine 7z a -t7z -m0=lzma2 -mx9 -r -stx7z -mhe -mmt=4 -sdel -p'PASSWORD' ~/Downloads/HV.3/.C-Class/$dirname.7z ~/Downloads/HV.2/C-Class.MF/$dirname/*.*
    find ~/Downloads/HV.2/C-Class.MF -depth -empty -type d -exec rmdir -v {} \;
    mv ~/Downloads/HV.3/.C-Class/$dirname.* ~/Downloads/HV.3/C-Class/
done

mv ~/Downloads/HV.3/A-Class/* ~/Downloads/HV.3/A-Class.UL
mv ~/Downloads/HV.3/B-Class/* ~/Downloads/HV.3/B-Class.UL
mv ~/Downloads/HV.3/C-Class/* ~/Downloads/HV.3/C-Class.UL
