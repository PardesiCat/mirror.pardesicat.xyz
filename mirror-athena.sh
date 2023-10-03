#written by Pardesi_Cat
#for report or any queries contact https://pardesicat.xyz


# put your choice of directrory here,  where you want to store mirror files

dirr="/home/linuxmirror"


# require things

mirror="https://github.com/Athena-OS/athena-repository.git"
name="athena-repository"


# custom commads

check_git () {

if ! command -v git &> /dev/null; then
	echo -e "git not found install git first"
	sleep 3
	exit
fi
}

install_repo () {

	echo "installing Mirror files 1st time,"
	mkdir -p "$dir/$name/"
	mkdir -p "$dirr/$name/$name/"
	cd "$dirr/$name/$name/"

if [ -e .git ]; then

	cd "$dirr/$name/$name/"
	rm -rf .git
	git init
	git remote add origin "$mirror" &> /dev/null
        echo "syning"
	git fetch

else
	cd "$dirr/$name/$name/"
	git init
	git remote add origin "$mirror" &> /dev/null
	echo "syncing"
        git fetch
fi

}

update_mirror () {

    echo "syning mirror files..."
    cd "$dirr/$name/$name/"
    git pull origin main
    echo "Syncing successfully done!"

}


# main works starts

check_git

if [ -e $dirr/$name/$name/x86_64 ]; then

	echo "syncing updated mirror files"
	update_mirror
	git pull origin main
	echo -e "Done"
else
     echo "no mirror found"
     install_repo
     git pull origin main
     echo "Done"
fi

# main work end
