#!/usr/bin/env bash
echo "Nome do Script:$0 | PID de execução: $$"

if test "$1 -gt 10"
then
  echo "O primeiro é maior"
fi
