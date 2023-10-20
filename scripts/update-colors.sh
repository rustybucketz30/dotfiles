#!/bin/sh
# toggles between colors and grayscale

# Check if grayscale is already applied
if xcalib -d :0 -s 0 -v 2>&1 | grep -q "Display not corrected"; then
    # Grayscale not applied, apply it now
    xcalib -c -a
else
    # Grayscale is applied, reset it
    xcalib -c
fi
