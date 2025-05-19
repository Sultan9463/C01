#!/bin/bash
read -p "Entrez le nom du fichier :"fichier
read -p "Entrez la chaîne à rechercher :"chaine
# Vérifie si le fichier existe avant de rechercher
if [[ -f "$fichier" ]]; then
    # Recherche de la chaîne avec affichage des numéros de ligne
    if grep -n "$chaine" "$fichier"; then
        echo "La chaîne '$chaine' a été trouvée dans $fichier."
    else
        echo "La chaîne '$chaine' n'a pas été trouvée dans $fichier."
    fi
else
    echo "Le fichier '$fichier' n'existe pas."
fi
