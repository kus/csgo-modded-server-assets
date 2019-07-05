#!/bin/bash

# Run from "csgo" parent directory so you are in the same folder as srcds

if [ ! -d csgo/cfg ]
then
	echo "Not run from the correct directory. Please run from csgo parent directory." >&2  # write error message to stderr
	exit 1
fi

curl https://github.com/kus/csgo-modded-server-assets/archive/master.zip -s -L -o master.zip
unzip -o -qq master.zip
cd csgo-modded-server-assets-master
chmod +x copy.sh
./copy.sh
cd ../
rm -r csgo-modded-server-assets-master master.zip