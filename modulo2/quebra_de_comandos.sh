#!/usr/bin/env bash

echo $0

find / -iname "*.so"  \
       -user rfragoso \
       -type f        \
       -size +10M      \
       -exec ls {}    \;
