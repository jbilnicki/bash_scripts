#!/bin/bash

# wszystkie argumenty:
#echo "Argumenty: $@"

# poszczegolne argumenty
#echo "argument 1: $1"
#echo "argument 2: $2"

# znaczenie argumentow w zmiennych
#liczba1=$1
#liczba2=$2

read -p "Wprowadz pierwsza liczbe: " liczba1
read -p "Wprowadz deruga liczbe: " liczba2 

suma=$[liczba1+liczba2]
echo "suma: $liczba1 + $liczba2 = $suma"

# inne  sposoby zapisu
let roznica=liczba1-liczba2
echo "roznica: $liczba1 - $liczba2 = $roznica"


iloczyn=$((liczba1*liczba2))
echo "iloczyn: $liczba1 * $iczba2 = $iloczyn"
