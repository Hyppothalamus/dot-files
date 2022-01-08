#!/bin/fish

echo "installing fisher and tide"
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

fisher install IlanCosman/tide@v5
echo "done now configuring tide"
tide configure
