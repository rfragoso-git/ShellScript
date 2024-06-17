#!/usr/bin/env bash

# listaUsusraios.sh - Extrair usuários do /etc/passwd

# Autor: Renato Oliveira
# Manutenção: Renato Oliveira

#---------------------------------------------------------------------------#
# Objetivo extrair usuários do /etc/passwd, com a possibilidade de colocar em
# maiusculas e em ordem alfabetica

# Exempplos:

#   $ ./listaUsusraios.sh -s -m ()
#   Neste exemplo o script dexara -s ordem alfabbetica e -m maiusculas

#---------------------------------------------------------------------------#
# Histórico

#   v1.0  05/07/2023, Renat Oliveira
#   - inicio do programa
#   v1.1  06/07/2023, Renat Oliveira
#   - Ajuste layout Menu

#----------------------------------------------u-----------------------------#
#-----------------------------VARIAVEIS-------------------------------------#

USUARIOS="$(cat /etc/passwd | cut -d : -f 1 )"
MSG_USR="
  $(basename $0) - [OPÇÕES]

    -h  - Menu de ajuda
    -v  - Versão
    -s  - Ordenar a saída
"
VERSAO="v1.1"
#---------------------------------------------------------------------------#

#-----------------------------TESTES----------------------------------------#

#---------------------------------------------------------------------------#

#-----------------------------FUNÇÕES---------------------------------------#

#---------------------------------------------------------------------------#

#-----------------------------EXECUÇÃO--------------------------------------#
if [[ "$1" = "-h" ]]; then
  echo "$MSG_USR" &&
  exit 0
fi
if [[ "$1" = "-v" ]]; then
  echo "$VERSAO" &&
  exit 0
fi
if [[ "$1" = "-s" ]]; then
  echo "$USUARIOS" | sort &&
  exit 0
fi

echo "$USUARIOS"
#---------------------------------------------------------------------------#
