#!/bin/bash

# Run from the same directory "csgo" is in
# unzip -o -qq -d temp master.zip
# cd temp
# ./copy.sh

if [ ! -d ../csgo/cfg ]
then
	echo "Not run from the correct directory. Please run from csgo parent directory." >&2  # write error message to stderr
	exit 1
fi

# Decompress bz2 files
array=($(find csgo/maps csgo/sound csgo/materials csgo/models -type f \( -name "*.bz2" \)))
for i in ${array[@]};
do
	DIR=$(dirname "${i}")
	FILE=${i%.bz2}
	echo "Decompressing $i"
	if [ ! -d ../$DIR ]
	then
		mkdir -p ../$DIR
	fi
	bzip2 -cd $i > ../$FILE;
done

# Copy other files
array=($(find csgo/maps csgo/sound csgo/materials csgo/models -type f \( ! -name ".DS_Store" -and ! -name "*.bz2" \)))
for i in ${array[@]};
do
	DIR=$(dirname "${i}")
	FILE=${i}
	echo "Copying $i"
	if [ ! -d ../$DIR ]
	then
		mkdir -p ../$DIR
	fi
	cp -n $i ../$FILE
done