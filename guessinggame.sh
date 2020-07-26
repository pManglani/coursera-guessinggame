#!/usr/bin/env bash

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'
function game() {
    number_of_files_in_directory=$(ls -a1  | wc -l)
    echo "How many files are in current directory"
    while true
    do
    read response
    if [[ $response -eq $number_of_files_in_directory ]];
    then
        echo -e "${GREEN}Congrats${NC}"
        break;
    elif [[ $response -gt $number_of_files_in_directory ]];
    then
        echo -e "${RED}Too High${NC}"
    else
        echo -e "${RED}Too Low${NC}"
    fi
    echo "Guess Again"
    done
}

game