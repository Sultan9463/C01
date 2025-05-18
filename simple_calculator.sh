#!/bin/bash
# Demander à l'utilisateur de saisir les deux nombres et l'opérateur
echo "Entrez le premier nombre :"
read num1

echo "Entrez l'opérateur (+, -, *, /) :"
read op

echo "Entrez le second nombre :"
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
        if [ "$num2" -eq 0 ]; then
            echo "Erreur : Division par zéro impossible"
            exit 1
        fi
        result=$(echo "$num1 / $num2" | bc)
        ;;
    *)
        echo "Opérateur invalide"
        exit 1
        ;;
esac

# Afficher le résultat
echo "Le résultat est : $result"
