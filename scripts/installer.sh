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

_installSymLink() {
    symlinkName="$1"   # This is just the name for logging purposes
    linkSource="$2"
    linkTarget="$3"
    
    # Remove existing symlink, directory, or file at the target location
    [ -L "${linkTarget}" ] && rm "${linkTarget}"
    [ -d "${linkTarget}" ] && rm -rf "${linkTarget}"
    [ -f "${linkTarget}" ] && rm "${linkTarget}"
    
    # Create the new symlink
    ln -s "${linkSource}" "${linkTarget}"
    echo "Symlink ${linkSource} -> ${linkTarget} created (Named: ${symlinkName})."
}
