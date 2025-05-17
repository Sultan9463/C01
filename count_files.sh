#!/bin/bash
nb_fichiers=$(find . -maxdepth 1 -type f | wc -l)
echo "Le dossier myfolder contient $nb_fichiers fichier(s)."
