#!/bin/bash
# Lire l'expression de l'utilisateur
read -p "Entrez l'expression (ex: 4 2 +):" expression
# Évaluer l'expression
result=$(echo "$expression" | awk '{ 
    if ($3 == "+") print $1 + $2;
    else if ($3 == "-") print $1 - $2;
    else if ($3 == "*") print $1 * $2;
    else if ($3 == "/") print $1 / $2;
    else print "Opérateur non supporté";
}')

echo "Résultat : $result"
