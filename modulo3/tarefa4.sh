#!/usr/bin/env bash

# tarefa4.sh - Extrair grupos do usuários do /etc/group

# Autor: Renato Oliveira
# Manutenção: Renato Oliveira

#---------------------------------------------------------------------------#
# Objetivo extrair os grpos cadastrados para o usuário informado no /etc/group,
# com a possibilidade de exibir os usuários do grupo.

# Exemplos:

#   $ ./listaGrupos.sh
#   v1.0  15/07/2023, Renato Oliveira
#   - inicio do programa

#----------------------------------------------u-----------------------------#
#-----------------------------VARIAVEIS-------------------------------------#

USUARIO="$1"
GRUPOS="$(grep "$USUARIO" /etc/group | cut -d : -f 1)"
MSG_USR="
  $(basename $0) - [OPÇÕES]

    -h  - Menu de ajuda
    -v  - Versão
    -s  - Ordenar a saída
    -m  - Exibe em maiusculas

    Digite username -opção
"
VERSAO="v1.1"
KEY_ORDER=0
KEY_LETTER=0
#---------------------------------------------------------------------------#

#-----------------------------EXECUÇÃO--------------------------------------#
while test -n "$2"
do
  case "$2" in
    -h) echo "$MSG_USR" && exit 0                    ;;
    -v) echo "$VERSAO" && exit 0                     ;;
    -s) KEY_ORDER=2                                  ;;
    -m) KEY_LETTER=2                                 ;;
     *) echo "Opção invalida, utilize o -h" && exit 1 ;;
  esac
  shift
done

[ $KEY_ORDER -eq 2 ] && GRUPOS=$(echo "$GRUPOS" | sort)
[ $KEY_LETTER -eq 2 ] && GRUPOS=$(echo "$GRUPOS" | tr [a-z] [A-Z])

echo "Lista dos grupos cadastrados: $GRUPOS"

#---------------------------------------------------------------------------#
