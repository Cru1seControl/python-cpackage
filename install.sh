#!/bin/bash

#This install.sh was created for
#python3.6. Other version WILL NOT WORK.
#install path ~/.local/lib/python3.6/site-packages

DIR=$PWD
SITE_PACKAGE="~/.local/lib/python3.6/site-packages"
SITE_CPACK="~/.local/lib/python3.6/site-packages/cpackage"
SITE_OTHER="~/.local/lib/python3.6/site-packages/cpackage-other"

echo -e "[+] Creating \e[92m$SITE_OTHER\e[39m for \e[92mREADME.md\e[39m & \e[92mLICENSE\e[39m"
mkdir ~/.local/lib/python3.6/site-packages/cpackage-other

echo -e "[+] Moving \e[92m$DIR/cpackage\e[39m \e[92m$SITE_PACKAGE\e[39m"
mv $DIR/cpackage ~/.local/lib/python3.6/site-packages

echo -e "[+] Moving \e[92m$DIR/LICENSE\e[39m \e[92m$SITE_OTHER\e[39m"
mv $DIR/LICENSE ~/.local/lib/python3.6/site-packages/cpackage-other

echo -e "[+] Moving \e[92m$DIR/README.md\e[39m \e[92m$SITE_OTHER\e[39m"
mv $DIR/README.md ~/.local/lib/python3.6/site-packages/cpackage-other

echo -e "[!] \e[92mDONE\e[39m"