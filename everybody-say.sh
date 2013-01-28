#!/bin/sh

# Usage: everybody-say.sh [TEXT]

if test $# -eq 0; then
  exit 0
fi

voices=`say -v ?`
echo "$voices" | while read line; do
  array=($line)
  who=${array[0]}
  echo "$who says."
  say -v "$who" "$@"
done
