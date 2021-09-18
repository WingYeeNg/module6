#!/bin/bash

source ccodes.sh

gwtc() {
    curl -s $2 > wpage.txt
    wcnt="'grep -c -i $1 wpage.txt'"
    echo -e "This web page has ${YELLOW}$wcnt${NCOL} instances of the term ${GREEN}$1${NCOL}"
}

read -p 'Enter a serach term: ' sterm
echo -e "The search will be conducted for ${YELLOW}$sterm${NCOL}"
read -p 'Enter a web page address: ' url
echo -e "${RED}Scanning webpage now...${NCOL}"
gwtc $sterm $url