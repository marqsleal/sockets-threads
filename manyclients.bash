#!/bin/bash

# Inicie 50 clients acessando aleatóriamente um dos 5 arquivos de teste
for N in {1..50}
do
    X=$((RANDOM % 5 + 1))
    ruby client.rb "$X" &
done
wait