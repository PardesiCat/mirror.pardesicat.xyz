#!/bin/bash
# written by pardeiscat


income="rsync-packages.linuxmint.com::packages"

name="linuxmint"

path=/home/linuxmirror/"$name"


syync () {

	rsync -rlptH --safe-links --delete-delay --delay-updates "$income" "$path"
	
}

echo -e "starting the "$name" sync"
sleep 2
syync
