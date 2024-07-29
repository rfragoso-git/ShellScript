#!/usr/bin/env bash
#
#------------------------------- VARIÁVEIS ------------------------------- #
ARQUIVO_CONFIGURACAO="$1"
#
# ------------------------------------------------------------------------ #
# 
# Histórico:
#
# -------------------------------TESTES----------------------------------- #
#
[ ! -e "$ARQUIVO_CONFIGURACAO" ] && echo "ERRO! Arquivo não existe !!!" && exit 1
[ ! -r "$ARQUIVO_CONFIGURACAO" ] && echo "ERRO! Sem acesso de leitura ao arquivo !!!" && exit 1
#
# ------------------------------------------------------------------------ #
#
# -------------------------------FUNÇÕES---------------------------------- #

# ------------------------------------------------------------------------ #
#
# -------------------------------EXECUÇÕES-------------------------------- #
while read -r linha
do
  [ "$(echo $linha | cut -c1)" = "#" ]  && continue # Se for umalinha com comentário
  [ ! "$linha" ]  && continue # Se for uma linhaem branco
  
  chave="$(echo $linha | cut -d = -f 1)" # Retirar somente a coluna 1
  valor="$(echo $linha | cut -d = -f 2)" # Retirar somente a o valor da coluna 2

  echo "CONFIG_$chave=$valor"

done < "$ARQUIVO_CONFIGURACAO"

# ------------------------------------------------------------------------ #