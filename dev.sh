#!/bin/sh

#Dev structure
echo "Making your dev directory..."
mkdir "~/Documents"
mkdir "~/Documents/Development"

#Fonts
echo "Installing fonts..."
git clone https://github.com/powerline/fonts.git
. fonts/install.sh
rm -rf fonts
curl https://raw.githubusercontent.com/qrpike/Web-Font-Load/master/install.sh | sh
