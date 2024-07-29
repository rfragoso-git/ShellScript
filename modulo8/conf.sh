#!/usr/bin/env bash
#
#
#
#------------------------------- VARIÁVEIS ------------------------------- #
ARQUIVO_CONFIG="configuracao.cf"
USAR_CORES=
USAR_MAIUSCULAS=
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
# -------------------------------TESTES-----------------Ç----------------- #
[ ! -r "$ARQUIVO_CONFIG" ] && echo "Sem acesso de leitura ao arquivo !!!" && exit 1
# ------------------------------------------------------------------------ #
#
# -------------------------------FUNÇÕES---------------------------------- #
  DefinirParametros () {
    local parametro="$(echo $1 | cut -d = -f 1)"
    local valor="$(echo $1 | cut -d = -f 2)"
    local cor="$(echo $1 | cut -d = -f 2)"

    case "$parametro" in
      USAR_CORES) USAR_CORES="$valor"   ;;
      USAR_MAIUSCULAS) USAR_MAIUSCULAS="$valor" ;;
      QUAL_COR)QUAL_COR="$cor" ;;
    esac
  }

# ------------------------------------------------------------------------ #
#
# -------------------------------EXECUÇÕES-------------------------------- #
while read -r linha
do
  [ "$(echo $linha | cut -c1)" = "#" ]  && continue
  [ ! "$linha" ]  && continue
  DefinirParametros "$linha"
done < "$ARQUIVO_CONFIG"

[ "$USAR_MAIUSCULAS" = "1" ] && MENSAGEM="$(echo -e $MENSAGEM | tr [a-z] [A-Z])"
[ "$USAR_CORES" = "1" ] && MENSAGEM="$(echo -e ${QUAL_COR}$MENSAGEM)"

echo "VALOR USAR_CORES: $USAR_CORES"
echo "VALOR USAR_MAIUSCULAS: $USAR_MAIUSCULAS"
echo "QUAL_COR: $QUAL_COR"

echo $MENSAGEM

# ------------------------------------------------------------------------ #
