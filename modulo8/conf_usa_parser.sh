#!/usr/bin/env bash
#
#------------------------------- VARIÁVEIS ------------------------------- #
ARQUIVO_CONFIGURACAO="configuracao.cf"
USAR_CORES=
USAR_MAIUSCULAS=
QUAL_COR=
MENSAGEM="Mensagem de teste !!!"
AMARELO="\033[33;1m"
VERDE="\033[32;1m"
AZUL="\033[34;1m"
RESET="\033[0m"
#
# ------------------------------------------------------------------------ #
# 
# Histórico:
#
#
# -------------------------------EXECUÇÕES-------------------------------- #

eval $(./parser.sh "$ARQUIVO_CONFIGURACAO") # Cria um encapsulamente dentro ambiente de execução

[ "$(echo $CONFIG_USAR_MAIUSCULAS)" = "1" ] && USAR_MAIUSCULAS=1
[ "$(echo $CONFIG_USAR_CORES)" = "1" ] && USAR_CORES=1

if [ "$(echo $CONFIG_QUAL_COR)" = "1" ] 
then COR=$AZUL 
fi

if  [ "$(echo $CONFIG_QUAL_COR)" = "2" ]
then COR=$AMARELO
fi

if [ "$(echo $CONFIG_QUAL_COR)" = "3" ]
then COR=$VERDE
fi

[ "$USAR_MAIUSCULAS" = "1" ] && MENSAGEM="$(echo -e $MENSAGEM | tr a-z A-Z)"

[ "$USAR_CORES" = "1" ] && MENSAGEM="$(echo -e ${COR}$MENSAGEM)"

echo -e $MENSAGEM

# ------------------------------------------------------------------------ #