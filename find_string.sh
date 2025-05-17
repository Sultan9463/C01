#!/bin/bash
read -p "Entrez le nom du fichier :" fichier
#verification si le fichier existe
#demande de la chaine à rechercher
read -p " Entrez la chaine à recherche :" chaine
#recherche de la chaine dans le fichier
if grep -q "$chaine" "$fichier"; then 
echo "la chaine '$chaine' a été trouvée dans le $fichier."
else
echo "la chaine '$chaine' n'a pas été trouvée dans le $fichier."
fi