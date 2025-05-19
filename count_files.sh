#!/bin/bash 
if [ -d . ]; then 
nb_fichiers=$(ls -1 | wc -l)
echo "Le dossier my folder contient $nb_fichiers fichier(s)."
else 
echo "Erreur"
fi
