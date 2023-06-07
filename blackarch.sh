#written by pardeiscat


path=/home/linuxmirror/blackarch/
income=ftp.halifax.rwth-aachen.de/blackarch/


syync () {
 
	rsync -rlptH --safe-links --delete-delay --delay-updates rsync://$income $path

	
}

echo -e "starting the blackarch sync"
sleep 2 
syync
