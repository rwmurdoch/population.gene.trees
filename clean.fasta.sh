#!/bin/bash

#https://stackoverflow.com/questions/20796200/how-to-iterate-over-files-in-a-directory-with-bash

cd genestrim
for f in *
	do
	sed -i 's/\s.*$//g' $f
done

cd ../proteinstrim
for f in *
	do
	sed -i 's/\s.*$//g' $f
done
