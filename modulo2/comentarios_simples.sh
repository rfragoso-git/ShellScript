#!/usr/bin/env bash

echo $0

#programa verifica se o programa which está instalado

[ ! -x "$(which)" ] && printf "${AMARELO}Precisa instlar o ${VERDE}which ${AMARELO}"
