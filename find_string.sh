#!/bin/bash
read -p "Entrez le nom du fichier :" fichier
#verification si le fichier existe
#demande de la chaine à rechercher
read -p "Entrez la chaîne à recherche :" chaine
#recherche de la chaine dans le fichier
if grep -q "$chaine" "$fichier"; then 
echo "la chaîne '$chaine' a été trouvée dans le $fichier."
else
echo "la chaîne '$chaine' n'a pas été trouvée dans le $fichier."
fi