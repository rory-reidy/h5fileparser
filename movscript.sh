cd ..
#cd /media/irrational/3434-6632/

find -name \*.WAV > script/fileList.txt
#find | grep .WAV | xargs cp -t ~/Music/zoom/script
cd ~/Music/zoom/script
rename 'y/A-Z/a-z/' *
