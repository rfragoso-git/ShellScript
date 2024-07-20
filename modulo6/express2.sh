#!/usr/bin/env bash

CIANO="\033[36;1m"
AMARELO="\033[33;1m"

echo -e "${CIANO}""Filtrar qualquer coisa do inicio e fim, tendo no meio 50 digitos na linha: " && grep -E "^.{50,}$" /etc/passwd
echo -e "${AMARELO}""Filtrar qualquer coisa, que começa com a letra S dizendo que no meio { , } tem que ter 50 digitos na linha :" && egrep "^s.{50,}$" /etc/passwd
echo -e "${CIANO}" "Que contenha entre 50 a 60 digitos" && grep -E "^.{50,60}$" /etc/passwd 
echo -e "${AMARELO}""Operador OR | :" && egrep "fragoso|root" /etc/password