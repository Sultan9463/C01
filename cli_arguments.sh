#!/bin/bash
#afficher chaque argument avec son numero
read -a "arg"
i=1
for arg in ["$@"]; do 
echo "Argument $i : $arg"
((i++))
done 
