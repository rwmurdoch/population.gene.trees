#!/bin/bash

#https://stackoverflow.com/questions/20796200/how-to-iterate-over-files-in-a-directory-with-bash

for f in genes/*
	do 
	name=${f##*/}
	mafft --auto "$f" > genes.align/"${name}.align"
done

for f in proteins/*
	do 
	name=${f##*/}
	mafft --auto "$f" > proteins.align/"${name}.align"
done