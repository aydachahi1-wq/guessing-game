#!/usr/bin/env bash

function count_files {
    ls -A | wc -l
}

function check_guess {
    local guess=$1
    local actual=$2
    if [[ $guess -lt $actual ]]; then
        echo "Trop bas ! Essayez encore."
        return 1
    elif [[ $guess -gt $actual ]]; then
        echo "Trop haut ! Essayez encore."
        return 1
    else
        echo "Félicitations ! Bonne réponse : $actual"
        return 0
    fi
}

echo "Bienvenue ! Combien de fichiers dans le répertoire actuel ?"
real_count=$(count_files)
finished=0

while [[ $finished -eq 0 ]]; do
    read -p "Votre estimation : " user_guess
    if ! [[ "$user_guess" =~ ^[0-9]+$ ]]; then
        echo "Entrez un nombre entier."
        continue
    fi
    check_guess "$user_guess" "$real_count"
    finished=$?
done

echo "Merci d'avoir joué !"
