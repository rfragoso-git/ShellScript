#!/usr/bin/env bash

echo "=== For 1"
 for (( i = 0; i < 10; i++ )); do
  echo $i
done

echo "=== For 2 c/ comando seq"
 for r in $(seq 1 11)
 do
   echo $r
 done

echo "=== For 3 c/ Array"
 frutas=(
 "laranja"
 "banana"
 "maça"
 "pera"
 )
 for r in "${frutas[@]}"
 do
   echo "$r" #statements
 done

echo "=== While"

vlr=10

while [[ $vlr -gt 0 ]]; do
  echo $vlr
  vlr=$(($vlr-1)) #statementsch
done

echo "=== While c/ Arrray"

cont=0

while [[ $cont -lt ${#frutas[@]} ]]
do
  echo "${frutas[$cont]}"
  cont=$(($cont+1)) #statementsch
done
