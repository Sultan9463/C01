#!/bin/bash 
d=$(pwd)
nb_fichiers=$(ls -1 "$d" | wc -l)
echo "Le dossier "$d" contient $nb_fichiers fichier(s)."
