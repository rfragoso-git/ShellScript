#!/usr/bin/env bash
echo "Nome do Script:$0"

for (( i = 10; i > 0; i-- ))
do
  result=$(( $i % 2 ))
  if [[ $result -eq 0 ]]
  then
    echo "O numero $i é par!"
  fi
done
