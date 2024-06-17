#!/usr/bin/env bash

# conataNumeros.sh - Extrair usuários do /etc/passwd

# Autor: Renato Oliveira
# Manutenção: Renato Oliveira

#---------------------------------------------------------------------------#
# Objetivo imprimir na tela os numero de 0 a 100

# Exempplos:

#   $ imprimeEstrela.sh
#   Neste exemplo o script vai imprimir na Asteriscos natela do número
#   maior ao zero pulando uma linha a cada ciclo do laço FOR

#---------------------------------------------------------------------------#
# Histórico

#   v1.0  09/07/2023, Renato Oliveira
#   - inicio do programa

#---------------------------------------------------------------------------#
# Testado em
#  Commando $ bash --version
#   bash 5.1.11 (versão)coo

#---------------------------------------------------------------------------##-----------------------------VARIAVEIS-------------------------------------#

VERSAO=1.0
INICIO=0
FIM=125
#---------------------------------------------------------------------------#

#-----------------------------EXECUÇÃO--------------------------------------#
echo "$VERSAO"

[ $INICIO -ge $FIM ] && exit 1

for i in $(seq $INICIO $FIM);
do
  for j in $(seq $i $FIM);
  do
    printf "*";
  done
    printf "\n";
done
#---------------------------------------------------------------------------#
