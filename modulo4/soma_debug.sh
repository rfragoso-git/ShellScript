#!/usr/bin/env bash

# soma_debug- Extrair usuários do /etc/passwd

# Autor: Renato Oliveira
# Manutenção: Renato Oliveira

#---------------------------------------------------------------------------#
# Objetivo é executar um debug sobre o processo de somar

# Exemplos:

#   $ soma_debug.sh
#   Neste exemplo o script ira somar a sequencia numerica executando um
# debug conforme nivel escolhido

#---------------------------------------------------------------------------#
# Histórico
#   v1.0  10/07/2023, Renato Oliveira
#   - inicio do programa
#   v1.1  10/07/2023, Renato Oliveira
#   - inclusão do case nivel Debug
#   v1.2  10/07/2023, Renato Oliveira
#   - Inclusão do Menu
#   - Exclusão variavel CHAVE_DEBUG não utilizada

#----------------------------------------------------------------------------#
#--------c---------------------VARIAVEIS-------------------------------------#
LEVEL_DEBUG=0

MSG_USR="
  $(basename $0) - [OPÇÕES]
    -h  - Menu
    -l  - Level
    -s  - Somar
  "
VERSAO="v1.2"
#----------------------------------------------------------------------------#
#-----------------------------FUNÇÃO-----------------------------------------#
Debugar() {
  [ $1 -le $LEVEL_DEBUG ] && echo "Debug $* ---"
}
Soma () {
  local total=0

  for i in $(seq 1 25)
    do
      Debugar 1 "Entrando no FOR com o valor: $i"
      total=$(($total+$i))
      Debugar 2 "Depois da soma : $total"
    done
    echo "A soma é $total"
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
