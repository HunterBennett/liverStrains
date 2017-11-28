#!/usr/bin/bash
# This script first takes a path to a tab/newline separated gene list ($1) 
# secondly it takes a path to the full mm10 annotation ($2)
# third it takes the output path ($3)

while read p || [[ -n $p ]]; do

	grep -i "exon.*$p.*" $2 >> $3

done <$1
