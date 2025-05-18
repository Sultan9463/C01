#!/bin/bash
#compter le nombre du fichiers 
nb_nombres=$((ls -l) | (wc -1))
echo "Le dossier myfolder contient $nb_fichiers fichier(s)."
