#!/bin/bash

array=($(find csgo/maps csgo/sound csgo/materials csgo/models -type f \( ! -name ".DS_Store" -and ! -name "*.bz2" -and ! -name "*.nav" -and ! -name "*.ztmp" \)))
for i in ${array[@]};
do
	DIR=$(dirname "${i}")
	echo "Compressing $i"
	bzip2 $i;
done