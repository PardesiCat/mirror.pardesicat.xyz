#written by Pardesi_Cat

syync () {
    git clone https://github.com/Athena-OS/athena-repository.git
}

place="/home/linuxmirror/athena-repository/athena-repository"
checkp="/home/linuxmirror/athena-repository/"

echo -e "checking if mirror already exist"

if [ -d $checkp ] ; then


echo -e "starting the sync"

cd $place
sleep2
git pull

else 
	echo "doesnt exist any mirror files"
	sleep 2
	cd $checkp
	sleep 2 
	echo -e "syncing started, take tea/coffe break"
        syync
fi
