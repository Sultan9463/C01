#!/bin/bash
read -p "Entrez le premier nombre A :" A
read -p "Entrez le deuxième nombre B :" B
read -p "Entrez l'opération (+, -, *, /) :" op

if [ "$op" == "+" ]; then
    echo "Addition = $(( A + B ))"
elif [ "$op" == "-" ]; then
    echo "Soustraction = $(( A - B ))"
elif [ "$op" == "*" ]; then
    echo "Multiplication = $(( A * B ))"
elif [ "$op" == "/" ]; then
    echo "Division = $(( A / B ))"
fi
