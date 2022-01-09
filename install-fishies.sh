#!/bin/bash

if [ "$EUID" -ne 0 ]
   then echo "Please run as root"
   exit
fi

echo "installing fishies dependencies"
apt install -y perl libcurses-perl make cpanminus

cpanm Term::Animation

echo "downloading fihies and storing in /usr/bin/fishies"
wget -O /usr/bin/fishies https://raw.githubusercontent.com/rwxrob/dot/main/scripts/fishies
chmod 775 /usr/bin/fishies

echo "done"
