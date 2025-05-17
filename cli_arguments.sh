#!/bin/bash
#afficher chaque argument avec son numero
position=1
for arg in "$@"; do 
echo "argument $position : $arg"
((position++))
done 