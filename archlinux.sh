#written by pardeiscat


path=/home/linuxmirror/archlinux/
income=ftp.halifax.rwth-aachen.de/archlinux/


syync () {
 
	rsync -rlptH --safe-links --delete-delay --delay-updates rsync://$income $path

	
}

echo -e "starting the arch sync"
sleep 2 
syync
