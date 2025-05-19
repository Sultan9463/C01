#!/bin/bash
# Afficher chaque argument avec son numéro
# Vérifie si des arguments ont été passés
    read -a "args"
# Affichage des arguments
i=1
for arg in "${args[@]}"; do
    echo "Argument $i: $arg"
    ((i++))
done
