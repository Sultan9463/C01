#!/bin/bash
# Afficher chaque argument avec son numéro
# Vérifie si des arguments ont été passés
if [ "$#" -eq 0 ]; then
    echo "Aucun argument fourni. Entrez les arguments séparés par des espaces :"
    read -a args
else
    args=("$@")
fi
# Affichage des arguments
i=1
for arg in "${args[@]}"; do
    echo "Argument $i : $arg"
    ((i++))
done
