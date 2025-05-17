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

# Vérifier que les entrées sont des nombres
if ! [[ "$nombre1" =~ ^-?[0-9]+$ ]] || ! [[ "$nombre2" =~ ^-?[0-9]+$ ]]; then
    echo "Erreur : Veuillez entrer uniquement des nombres."
    exit 1
fi

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
        # Vérifier la division par zéro
        if [ "$nombre2" -eq 0 ]; then
            echo "Erreur : Division par zéro impossible."
            exit 1
        fi
        resultat=$((nombre1 / nombre2))
        echo "$nombre1 / $nombre2 = $resultat"
        ;;
    *)
        echo "Erreur : Choix invalide."
        exit 1
        ;;
esac
