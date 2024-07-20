#!/usr/bin/env bash

CIANO="\033[36;1m"
VERMELHO="\033[31;5;1m"
AMARELO="\033[33;1m"

echo -e "${CIANO}""Tudo que começou com R : " && grep "^r" /etc/passwd
echo -e "${AMARELO}""Tudo que terminou com BASH :" && grep "bash$" /etc/passwd
echo -e "${VERMELHO}""Tudo que começou com RF e terminou BASH :" && grep "^rf.*.bash$" /etc/passwd
echo -e "${CIANO}" "Tudo que começou com letra M e a segunda letra era A :" && grep "^m[a]" /etc/passwd 
echo -e "${AMARELO}""tudo que começou com a letra M e negando que a segunda letra seja A :" && grep "^m[^a]" /etc/passwd