if [[ $OSTYPE == "darwin"* ]]; then
	if [[ $(command -v brew) == "" ]]; then
	    echo "Installing Homebrew"
	    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
        else
	    echo "Updating Homebrew"
	    brew update
	fi
	echo "Installing stow"
	brew install stow
elif [[ $OSTYPE == "linux-gnu"* ]]; then
	echo "It's Linux"
else
	echo "No it's not Apple"
fi
