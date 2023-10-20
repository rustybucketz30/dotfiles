#!/bin/bash
# Check if a package is installed using pacman
_isInstalledPacman() {
    package="$1"
    check="$(sudo pacman -Qs --color always "${package}" | grep "local" | grep "${package} ")"
    [ -n "${check}" ] && echo 0 || echo 1
}

# Check if a package is installed using yay
_isInstalledYay() {
    package="$1"
    check="$(yay -Qs --color always "${package}" | grep "local" | grep "${package} ")"
    [ -n "${check}" ] && echo 0 || echo 1
}

# Install packages using pacman if not installed
_installPackagesPacman() {
    for pkg; do
        if [[ $(_isInstalledPacman "${pkg}") == 0 ]]; then
            echo "${pkg} is already installed."
            continue
        fi
        sudo pacman --noconfirm -S "${pkg}"
    done
}

# Install packages using yay if not installed
_installPackagesYay() {
    for pkg; do
        if [[ $(_isInstalledYay "${pkg}") == 0 ]]; then
            echo "${pkg} is already installed."
            continue
        fi
        yay --noconfirm -S "${pkg}"
    done
}

# Create symbolic links
_installSymLink() {
    symlink="$1"
    linksource="$2"
    linktarget="$3"
    
    # Remove existing symlink, directory, or file
    [ -L "${symlink}" ] && rm ${symlink}
    [ -d "${symlink}" ] && rm -rf ${symlink}
    [ -f "${symlink}" ] && rm ${symlink}
    
    # Create the new symlink
    ln -s ${linksource} ${linktarget}
    echo "Symlink ${linksource} -> ${linktarget} created."
}
