#!/bin/bash
read -p "Entrez le premier nombre A :" A
read -p "Entrez le deuxième nombre B :" B
read -p "Entrez l'opération (+, -, *, /) :" op

if [ "$op" == "+" ]; then
    echo "Résultat = $(( A + B ))"
elif [ "$op" == "-" ]; then
    echo "Résultat = $(( A - B ))"
elif [ "$op" == "*" ]; then
    echo "Résultat = $(( A * B ))"
elif [ "$op" == "/" ]; then
    echo "Résultat = $(( A / B ))"
fi
