#!/bin/bash
#compter le nombre du fichiers 
nb_nombres=$(ls -l) | (wc -l)
echo "Le dossier myfolder contient $nb_fichiers fichier(s)."
