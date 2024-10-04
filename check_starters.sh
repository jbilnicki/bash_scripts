#!/bin/bash

read  -p "Type sequence of your starter: "  starter

# starter in uppercase
starter=${starter^^}

# melting temperature
let "Tm=0"

# length
length=${#starter}

# % of GC pairs in sequence
let "GC=0"

# calculate starter characterisic via a for loop
for (( n=0; n<$length; n++ )); 
do

# fragment of variable starting from nth element and length 1 element 
nucleotide=${starter:n:1}

if [[  "$nucleotide" == "C" ]] || [[  "$nucleotide" == "G" ]]; then
let "GC++"
let "Tm+=4"

elif [[ "$nucleotide" == "A" ]] || [[ "$nucleotide" == "T" ]]; then
let "Tm+=2"

else
echo "Wrong character input: should be A, T, C or G"
fi
done

# now GC should be converted to %
let "GC=GC*100/length"

# display results
echo  "Length of provided starter: ${length}"
echo "Approximated melting temperature: ${Tm} Celcius degrees"
echo "% of GC pairs in the starter: ${GC}%"

