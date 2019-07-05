#!/bin/bash

array=($(find csgo/maps csgo/sound csgo/materials csgo/models -type f \( -name "*.bz2" \)))
for i in ${array[@]};
do
	echo "Decompressing $i"
	bzip2 -d $i;
done