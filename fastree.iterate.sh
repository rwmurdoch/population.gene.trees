#!/bin/bash

#https://stackoverflow.com/questions/20796200/how-to-iterate-over-files-in-a-directory-with-bash


for f in genestrim/*
	do 
	name=${f##*/}
	base=${name%.trim}
	fasttree -nt "$f" > genestree/"$base" 
done

#for f in proteinstrim/*
#	do 
#	name=${f##*/}
#	base=${name%.trim}
#	fasttree "$f" > proteinstree/"$base" 
#done


