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

#   v1.0  05/07/2023, Renato Oliveira
#   - inicio do programa
#   v1.1  06/07/2023,
#   - Ajuste layout Menu - adiçao do basename
#   - Troca do IF pelo CASE
#   v1.2  06/07/2023, Renato Oliveira
#   - Adiçao do -s
#   - Adiçao do -m
#   v1.3  06/07/2023, Renato Oliveira
#   - Adiçao do while e validação de variáveis
#   v1.4  07/07/2023, Renato Oliveira
#   - Adiçao do while com shift
#----------------------------------------------u-----------------------------#
#-----------------------------VARIAVEIS-------------------------------------#

USUARIOS="$(cat /etc/passwd | cut -d : -f 1 )"
MSG_USR="
  $(basename $0) - [OPÇÕES]

    -h  - Menu de ajuda
    -v  - Versão
    -s  - Ordenar a saída
    -m  - Exibe em maiusculas
"
VERSAO="v1.4"
KEY_ORDER=0
KEY_LETTER=0
#---------------------------------------------------------------------------#

#-----------------------------EXECUÇÃO--------------------------------------#
while test -n "$1"
do
  case "$1" in
    -h) echo "$MSG_USR" && exit 0                    ;;
    -v) echo "$VERSAO" && exit 0                     ;;
    -s) KEY_ORDER=1                                  ;;
    -m) KEY_LETTER=1                                 ;;
     *) echo "Opção invalida, utilize o -h" && exit 1 ;;
  esac
  shift
done

[ $KEY_ORDER -eq 1 ] && USUARIOS=$(echo "$USUARIOS" | sort)
[ $KEY_LETTER -eq 1 ] && USUARIOS=$(echo "$USUARIOS" | tr [a-z] [A-Z])

echo "$USUARIOS"

#---------------------------------------------------------------------------#
