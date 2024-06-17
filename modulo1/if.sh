#!/usr/bin/env bash

VAR=""
VAR2="b"

if [[ "$VAR" = "$VAR2" ]]; then
  echo "São iguais"
fi

VAR3=""
VAR4="a"

if [[ "$VAR3" = "$VAR4" ]]
then
  echo "São iguais"
fi

if test "$VAR3" = "$VAR4"
then
  echo "São iguais"
fi

[ "$VAR3" = "$VAR4" ] || echo "São iguais"
