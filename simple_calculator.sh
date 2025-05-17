#!/bin/bash
read -p "entrez le premier nombre A :" A
read -p "entrez le deuxieme nombre B :" B
read -p "entrez l'operation (+, -, *, /) :" op
if [ "$op" == "+" ]; then 
echo "Résultat:$((A + B))" 
elif [ "$op" == "-" ]; then
echo "Résultat:$((A - B))"
elif [ "$op" == "*" ]; then
echo "Résultat:$(( A * B))"
elif [ "$op" == "/" ]; then
echo "Résultat:$((A / B))"
fi 
