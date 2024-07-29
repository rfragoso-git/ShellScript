#!/usr/bin/env bash

# cores.sh - Imprimir a relação em cores

# Autor: Renato Oliveira
# Manutenção: Renato Oliveira

#---------------------------------------------------------------------------#
# Objetivo é executar um debug sobre o processo de somar

# Exempplos:

#   $ cores.sh
#   Neste exemplo o script ira somar a sequencia numerica executando um
# debug conforme nivel escolhido
#---------------------------------------------------------------------------#
# Histórico
#   v1.0  12/07/2023, Renato Oliveira
#   - inicio do programa


#----------------------------------------------------------------------------#
#--------c---------------------VARIAVEIS-------------------------------------#
LEVEL_DEBUG=0

CIANO="\033[36;1m"
VERMELHO="\033[31;5;1m"
AMARELO="\033[33;1m"

MSG_USR="
  $(basename $0) - [OPÇÕES]
    -h  - Menu
    -l  - Level
    -s  - Somar
  "
VERSAO="v1.0"
#----------------------------------------------------------------------------#
#-----------------------------FUNÇÃO-----------------------------------------#
Debugar() {
  [ $1 -le $LEVEL_DEBUG ] && echo -e "${2}Debug $* ---"
}
Soma () {
  local total=0

  for i in $(seq 1 25)
    do
      Debugar 1 "${CIANO}" "Entrando no FOR com o valor: $i"
      total=$(($total+$i))
      Debugar 2 "${AMARELO}" "Depois da soma : $total"
    done
    echo -e "${VERMELHO}A soma é $total"
}

#----------------------------------------------------------------------------#

case "$1" in
  -h) echo "$MSG_USR" && exit 0  ;;
  -l) [ $2 ] && LEVEL_DEBUG=$2   ;;
  -s) Soma  && exit 0            ;;

   *) echo "Opção invalida, utilize o -h" && exit 1 ;;
esac

Soma
#-----------------------------EXECUÇÃO--------------------------------------#
