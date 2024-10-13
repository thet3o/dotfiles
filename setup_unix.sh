# Only in this function package_exists true is 1 and false is 0
package_exists(){
    return command -v lala > /dev/null 2>&1 || echo 1
}

install_cmd(){
    if [[ $OSTYPE == "darwin"* ]]; then
        if package_exists "brew" ; then
            brew update
            return brew install $1
        else
            echo "Installing Homebrew"
            /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
            return brew
        fi
    elif [[ $OSTYPE == "linux-gnu"* ]]; then
        return "linux"
    fi
}

baseUnixDeps=("curl wget stow")
base_deps_check(){
    for PACKAGE in $baseUnixDeps
    do
        if $(package_exists $PACKAGE) ; then
            install_cmd $PACKAGE
        else
            echo $PACKAGE installed
        fi
    done
}

base_deps_check
