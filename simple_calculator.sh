#!/bin/bash

# Demander les deux nombres à l'utilisateur
read -p "Entrez le premier nombre : " num1
read -p "Entrez le deuxième nombre : " num2

# Affichage du menu
echo "Choisissez une opération :"
echo "1) Addition"
echo "2) Soustraction"
echo "3) Multiplication"
echo "4) Division"

# Lire le choix de l'utilisateur
read -p "Votre choix : " choix

case $choix in
    1)
        echo "Résultat : $((num1 + num2))"
        ;;
    2)
        echo "Résultat : $((num1 - num2))"
        ;;
    3)
        echo "Résultat : $((num1 * num2))"
        ;;
    4)
        if [ "$num2" -ne 0 ]; then
            echo "Résultat : $((num1 / num2))"
        else
            echo "Erreur : Division par zéro"
        fi
        ;;
    *)
        echo "Choix invalide"
        ;;
esac
