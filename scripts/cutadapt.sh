#!/bin/bash

if [ $# != 2 ]; then
	echo "USAGE: bash cutadapt.sh <inputFile (.fa or .fq - can be compressed)> <output file>"
	exit 1;
else

	inFile=$1
	outFile=$2
	prime5=$3	# 32
	prime3=$4   # -8
	
	ml cutadapt/2.9-foss-2019b-Python-3.7.4 
	#cutadapt -a TCTTGTGGAAAGGACGAAACACCG...GTTTTAG -m 17 -o $outFile $inFile
	cutadapt -u $prime5 -u $prime3 -o $outFile $inFile
fi		
