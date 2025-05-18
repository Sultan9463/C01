#!/bin/bash
#afficher chaque argument avec son numero
i=1
for arg in "$@"; do 
echo "Argument $i:$arg"
((i++))
done 
