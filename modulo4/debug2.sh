#!/usr/bin/env bash

# soma.sh - Extrair usuários do /etc/passwd

# Autor: Renato Oliveira
# Manutenção: Renato Oliveira

#---------------------------------------------------------------------------#
# Objetivo é somar uma sequencia numerica

# Exempplos:

#   $ .soma.sh
#   Neste exemplo o script ira somar a sequencia numerica

#---------------------------------------------------------------------------#
# Histórico

#   v1.0  10/07/2023, Renato Oliveira
#   - inicio do programa

#----------------------------------------------------------------------------#
#-----------------------------VARIAVEIS-------------------------------------#
VERSAO=1.0
#----------------------------------------------------------------------------#
#-----------------------------FUNÇÃO-----------------------------------------#

Soma () {
  local total=0

  for i in $(seq 1 50)
    do
    total=$(($total+$i))
  done
  echo "$0 versão $VERSAO" 
  echo "A soma é $total"
}

#----------------------------------------------------------------------------#
#-----------------------------EXECUÇÃO--------------------------------------#

Soma
