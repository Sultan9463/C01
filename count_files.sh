#!/bin/bash
nb_fichiers=$(find . -maxdepth 1 -type f | wc -l)
echo "Le répertoire courant contient $nb_fichiers fichier(s)."