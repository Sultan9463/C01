#!/bin/bash
# Demander à l'utilisateur de saisir les deux nombres et l'opérateur
read num1
read op
read num2
# Effectuer l'opération en fonction de l'opérateur
case $op in
    +)
        result=$(echo "$num1 + $num2" | bc)
        ;;
    -)
        result=$(echo "$num1 - $num2" | bc)
        ;;
    *)
        result=$(echo "$num1 * $num2" | bc)
        ;;
    /)
        result=$(echo "$num1 / $num2" | bc)
        ;;
    *)
        echo "Opérateur invalide"
        ;;
esac

# Afficher le résultat
echo "Résultat est :$result"
