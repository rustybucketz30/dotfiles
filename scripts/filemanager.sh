#/bin/sh

if [ -f "/usr/bin/dolphin" ]; then
    echo "dolphin is installed."
    dolphin --new-window
else
    echo "dolphin not installed. Launching thunar instead."
    thunar
fi;
