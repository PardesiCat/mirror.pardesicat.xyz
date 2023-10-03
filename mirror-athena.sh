#written by Pardesi_Cat
#for report or any queries contact https://pardesicat.xyz

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
      
	echo -e "installing Mirror files 1st time,"
	
if [ -e .git ]; then
	rm -rf .git
	git init
	git remote add origin "$mirror" &> /dev/null
        echo "syning"
	git fetch

else 
	git init
	git remote add origin "$mirror" &> /dev/null
	echo "syncing"
        git fetch
fi
 
}

update_mirror () {

    echo "syning mirror files..."
    git pull origin main
    echo "Syncing successfully done!"

}


# main works starts

check_git

if [ -e x86_64 ]; then

	echo -e "syncing updated mirror files"
	update_mirror
	git pull origin main
	echo -e "Done"
else
     echo "no mirror found"
     install_repo
     git pull origin main
     echo -e "Done"
fi

# main work end

