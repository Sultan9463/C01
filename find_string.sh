#!/bin/bash
read -p "Entrez le nom du fichier :"fichier
read -p "Entrez la chaîne à recherche :"chaine
#recherche de la chaine dans le fichier
if grep -n "$chaine" "$fichier" ; then 
echo "la chaîne'$chaine'a été trouvée dans $fichier."
else
echo "la chaîne'$chaine'n'a pas été trouvée dans $fichier."
fi
