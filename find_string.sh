#!/bin/bash
read -p "Entrez le nom du fichier :"fichier
read -p "Entrez la chaîne à rechercher :"chaine
    # Recherche de la chaîne avec affichage des numéros de ligne
    if grep -n "$chaine" "$fichier"; then
        echo "La chaîne '$chaine' a été trouvée dans $fichier."
    else
     echo "La chaîne '$chaine' n'a pas été trouvée dans $fichier."
     fi
