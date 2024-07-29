#!/usr/bin/env bash
#
#------------------------------- VARIÁVEIS ------------------------------- #
ARQUIVO_CONFIGURACAO="config_task.cf"
USAR_CORES=
USAR_MAIUSCULAS=
QUAL_COR=
MENSAGEM="Script que usa arqs configuração e parse !!!"
AMARELO="\e[33m"
VERDE="\e[32m"
CIANO="\e[36m"
VERMELHO="\e[31m"
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
then COR=$CIANO
fi

if  [ "$(echo $CONFIG_QUAL_COR)" = "2" ]
then COR=$AMARELO
fi

if [ "$(echo $CONFIG_QUAL_COR)" = "3" ]
then COR=$VERDE
fi

if [ "$(echo $CONFIG_QUAL_COR)" = "4" ]
then COR=$VERMELHO
fi

[ "$USAR_MAIUSCULAS" = "1" ] && MENSAGEM="$(echo -e $MENSAGEM | tr a-z A-Z)"

[ "$USAR_CORES" = "1" ] && MENSAGEM="$(echo -e ${COR}$MENSAGEM)"

echo -e $MENSAGEM

# ------------------------------------------------------------------------ #