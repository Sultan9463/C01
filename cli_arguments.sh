#!/bin/bash
#afficher chaque argument avec son numero
position=1
for arg in "$@"; do 
echo "Argument $position: $arg"
((position++))
done 