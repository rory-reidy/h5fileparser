process_play()
{
  r="a"
  while [ $r = "a" ]
  do
    xterm -e aplay $1 &
    echo "'r' to rename,\n'd' to delete\n'a' to replay"
    read r
  done
  if [ $r = "r" ]
  then echo "New Filename: "; read fn; mv $f ./$fn.wav
elif [ $r = "d" ]
  then rm $f; echo "Deleting...";
  fi
}


for f in *.wav ; do echo "Would you like to listen to $f? [y/n]" ;
read response ;
if [ $response = "y" ]
then process_play $f
else echo "Ignoring $f"
fi ;
done
