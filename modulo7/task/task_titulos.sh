#!/usr/bin/env bash
#
# task_titulos.sh - Extrai titulos do blog
#
# Site:       https://spacetoday.com.br/
# Autor:      Renato Fragoso
# Manutenção: Renato Fragoso
#
# ------------------------------------------------------------------------ #
#  Este programa irá extrair títulos do blog Space Today, colocar em um arquivo de
#  texto e ler mostrando com cores na tela.
#
#  Exemplos:
#      $ ./task_titulos.sh
#      Neste exemplo o programa vai extrair os titulos e mostrar na tela.
# ------------------------------------------------------------------------ #
# Histórico:
#
#   v1.0 27/06/2024, Renato:
#       - Montamos a expressões regular com fator em comum
#       - Criado primeiro código com cores
# ------------------------------------------------------------------------ #
# Testado em:
#   bash 5.0.17
# ------------------------------------------------------------------------ #

# ------------------------------- VARIÁVEIS ----------------------------------------- #
ARQUIVO_DE_TITULOS="titulos-spacetoday.txt"

VERDE="\033[32;1m"
VERMELHO="\033[31;1m"
# ------------------------------------------------------------------------ #

# ------------------------------- TESTES ----------------------------------------- #
[ ! -x "$(which lynx)" ] && sudo apt install lynx -y # Lynx instalado?
# ------------------------------------------------------------------------ #

# ------------------------------- EXECUÇÃO ----------------------------------------- #
lynx -source https://spacetoday.com.br | egrep "entry-title" | sed 's/body.*}//' | sed 's/<h2.*\/">//' | sed 's/<.*2>//' > titulos-spacetoday.txt

while read -r titulo_spacetoday
do
  echo -e "${VERMELHO}Titulo: ${VERDE}$titulo_spacetoday"
done < "$ARQUIVO_DE_TITULOS"
# ------------------------------------------------------------------------ #
