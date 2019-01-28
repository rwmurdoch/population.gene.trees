#!/bin/bash

#https://stackoverflow.com/questions/20796200/how-to-iterate-over-files-in-a-directory-with-bash

for f in genes.align/*
	do 
	name=${f##*/}
	base=${name%.align}
	/Users/robertmurdoch/Tools/trimAl/source/trimal -in "$f" -out genestrim/"${base}.trim" -nogaps
done

for f in proteins.align/*
	do 
	name=${f##*/}
	base=${name%.align}
	/Users/robertmurdoch/Tools/trimAl/source/trimal -in "$f" -out proteinstrim/"${base}.trim" -nogaps
done