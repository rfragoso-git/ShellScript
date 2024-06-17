#!/usr/bin/env bash

NOME="Renato de Oliveira Fragoso"
echo "$NOME"

NRO1=27
NRO2=35
TOTAL=$(($NRO1+$NRO2))
echo $TOTAL

VERSION="$(cat /etc/os-release)"
echo "$VERSION"

echo "-----------------------------------------------------"

echo "Parametro 1: $1"
echo "Parametro 2: $2"
echo "Parametro 3: $3"

echo "Todos os Parametros? $*"
echo "Quantos Parametros?: $#"

echo "Saida doi último comando: $?"

echo "PID: $$"
echo "Exibe o nome do script"
echo "$0"
