<#
.SYNOPSIS
This script installs the fonts on MacOS devices

.DESCRIPTION 
The Shell script will download the font files from publicly accessible location and install them on MacOS devices.

.NOTES
Website: https://www.prajwaldesai.com
Post Link: https://www.prajwaldesai.com/install-fonts-on-macos-using-intune/
#>

#!/bin/bash

#Specify the source directory where your font files are located
SOURCE_DIR=(
"https://prajwaldesai.blob.core.windows.net/macfonts/MouldyCheeseRegular.ttf"
"https://prajwaldesai.blob.core.windows.net/macfonts/SunnyspellsRegular.otf"
)

#Specify the destination directory where fonts should install on Mac
DEST_DIR="/Library/Fonts/"

#Download and install each font file
for url in "${SOURCE_DIR[@]}"
do
  echo "Downloading $url..."
  curl -L -o "$DEST_DIR/$(basename "$url")" "$url"
done

# Inform the user that the fonts have been installed
echo "Fonts installed successfully!"