#!/bin/bash
URL='https://pokeapi.co/api/v2/pokemon?limit=100000&offset=0'

curl https://pokeapi.co/api/v2/pokemon?limit=100000 | jq

POKEMON_LIST=$(curl -sL https://pokeapi.co/api/v2/pokemon?limit=100000 | jq ".results[].name" -r)
#echo $POKEMON_LIST
for POKEMON in $POKEMON_LIST; do
    echo $POKEMON
    echo ""
done
