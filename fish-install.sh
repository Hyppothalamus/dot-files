#!/bin/fish

echo "installing fisher and tide"
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

fisher install IlanCosman/tide@v5
echo "done now configuring tide"
runuser -l $SUDO_USER -c 'tide configure'
runuser -l $SUDO_USER -c 'chsh -s /usr/bin/fish'
