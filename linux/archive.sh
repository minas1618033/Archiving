# Archive -----------------------------------
# !/bin/bash
cd /home/zelko/Downloads/3.Pending/
mv *.avi .avi
mv *.mkv .mkv
mv *.mp4 .mp4
mv *.mpg .mpg
mv *.mpeg .mpeg
mv *.rm .rm
mv *.rmvb .rmvb
mv *.vob .vob
mv *.wmv .wmv
cd /home/zelko/Downloads/3.Pending/.avi/
for filename in *.avi; do 7z a -t7z -m0=lzma2 -mx1 -mhe -mmt=4 -sdel -p'PASSWORD' ${filename%%.*}.7z $filename; done;
mv *.7z ../
cd /home/zelko/Downloads/3.Pending/.mkv/
for filename in *.mkv; do 7z a -t7z -m0=lzma2 -mx1 -mhe -mmt=4 -sdel -p'PASSWORD' ${filename%%.*}.7z $filename; done;
mv *.7z ../
cd /home/zelko/Downloads/3.Pending/.mp4/
for filename in *.mp4; do 7z a -t7z -m0=lzma2 -mx1 -mhe -mmt=4 -sdel -p'PASSWORD' ${filename%%.*}.7z $filename; done;
mv *.7z ../
cd /home/zelko/Downloads/3.Pending/.mpg/
for filename in *.mpg; do 7z a -t7z -m0=lzma2 -mx1 -mhe -mmt=4 -sdel -p'PASSWORD' ${filename%%.*}.7z $filename; done;
mv *.7z ../
cd /home/zelko/Downloads/3.Pending/.mpeg/
for filename in *.mpeg; do 7z a -t7z -m0=lzma2 -mx1 -mhe -mmt=4 -sdel -p'PASSWORD' ${filename%%.*}.7z $filename; done;
mv *.7z ../
cd /home/zelko/Downloads/3.Pending/.rm/
for filename in *.rm; do 7z a -t7z -m0=lzma2 -mx1 -mhe -mmt=4 -sdel -p'PASSWORD' ${filename%%.*}.7z $filename; done;
mv *.7z ../
cd /home/zelko/Downloads/3.Pending/.rmvb/
for filename in *.rmvb; do 7z a -t7z -m0=lzma2 -mx1 -mhe -mmt=4 -sdel -p'PASSWORD' ${filename%%.*}.7z $filename; done;
mv *.7z ../
cd /home/zelko/Downloads/3.Pending/.vob/
for filename in *.vob; do 7z a -t7z -m0=lzma2 -mx1 --mhe -mmt=4 -sdel -p'PASSWORD' ${filename%%.*}.7z $filename; done;
mv *.7z ../
cd /home/zelko/Downloads/3.Pending/.wmv/
for filename in *.wmv; do 7z a -t7z -m0=lzma2 -mx1 --mhe -mmt=4 -sdel -p'PASSWORD' ${filename%%.*}.7z $filename; done;
mv *.7z ../

# Method 1, when for function have Null value (If haven't *.avi in folder), then occurre unexpected result.
# cd /home/zelko/Downloads/3.Pending/
# for filename in *.{avi,mkv,mp4,mpg,mpeg,rm,rmvb,vob,wmv};
# do 7z a -t7z -m0=lzma2 -mx1 -stx7z -mhe -mmt=4 -sdel -p'PASSWORD' ${filename%%.*}.7z $filename >> ~/Desktop/7z.log;
# done

# Method 2, still can't execute.
# null=;
# for filename in *.{avi,mkv,mp4,mpg,mpeg,rm,rmvb,vob,wmv};
# do 
# if [ "${filename}" != "${null}" ]; then
#	7z a -t7z -m0=lzma2 -mx1 -stx7z -mhe -mmt=4 -sdel -p'PASSWORD' ${filename%%.*}.7z $filename;
# fi
# done
