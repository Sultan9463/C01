#!/bin/bash

# Vérification du nombre d'arguments
if [ $# -ne 3 ]; then
    echo "Utilisation : $0 nombre1 nombre2 opérateur"
    echo "Exemple : $0 5 3 +"
    exit 1
fi

# Récupération des arguments
nombre1=$1
nombre2=$2
operateur=$3
# Calcul en fonction de l'opérateur
case "$operateur" in
    +)
        resultat=$((nombre1 + nombre2))
        ;;
    -)
        resultat=$((nombre1 - nombre2))
        ;;
    \*)
        resultat=$((nombre1 * nombre2))
        ;;
    /)
        if [ "$nombre2" -eq 0 ]; then
            echo "Erreur : division par zéro."
            exit 1
        fi
        resultat=$((nombre1 / nombre2))
        ;;
    *)
        echo "Erreur : opérateur non supporté. Utilisez +, -, * ou /."
        exit 1
        ;;
esac

# Affichage du résultat
echo "Résultat: $resultat"
