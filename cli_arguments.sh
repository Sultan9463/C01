#!/bin/bash
#afficher chaque argument avec son numero
read -a "args"
i=1
for arg in "${args["@"]}"; do 
echo "Argument '$i': $arg"
((i++))
done 
