#!/bin/bash

# Demander les deux nombres à l'utilisateur
read -p "Entrez le premier nombre : " nombre1
read -p "Entrez le deuxième nombre : " nombre2

# Demander l'opération à effectuer
echo "Choisissez une opération :"
echo "1. Addition (+)"
echo "2. Soustraction (-)"
echo "3. Multiplication (*)"
echo "4. Division (/)"
read -p "Votre choix (1/2/3/4) : " choix

# Effectuer l'opération choisie
case $choix in
    1)
        resultat=$((nombre1 + nombre2))
        echo "$nombre1 + $nombre2 = $resultat"
        ;;
    2)
        resultat=$((nombre1 - nombre2))
        echo "$nombre1 - $nombre2 = $resultat"
        ;;
    3)
        resultat=$((nombre1 * nombre2))
        echo "$nombre1 * $nombre2 = $resultat"
        ;;
    4)
        resultat=$((nombre1 / nombre2))
        echo "$nombre1 / $nombre2 = $resultat"
        ;;
    *)
        echo "Erreur : Choix invalide."
        exit 1
        ;;
esac
