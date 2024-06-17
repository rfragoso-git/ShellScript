#!/usr/bin/env bash

echo $0

PARAMETRO=2

if [[ $PARAMETRO -gt 0 ]]
then
  if [[ $PARAMETRO -gt 1 ]] #Valida parâmero 1?
  then
    if [[ $PARAMETRO -gt 2 ]]
    then
      echo "Oi !!!"
    fi
    echo "Maior que um!"
  fi
  echo "Maior que zero!"
fi
