#written by pardeiscat


income="ftp.halifax.rwth-aachen.de"



name="blackarch"

path=/home/linuxmirror/"$name"


syync () {
 
	rsync -rlptH --safe-links --delete-delay --delay-updates rsync://$income/"$name"/ $path
	
}

echo -e "starting the "$name" sync"
sleep 2 
syync
