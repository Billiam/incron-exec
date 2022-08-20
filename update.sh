#!/usr/bin/env bash

DIR=$(dirname -- "$0")

if [[ "$1" != *".txt" ]]; then
  exit 0
fi

SCRIPT="$DIR/bin/$(echo $1 | sed "s/\.txt$/.sh/")"

echo "$1 updated"

if [ -x "$SCRIPT" ]; then
  "./$SCRIPT"
else
  echo "$SCRIPT is not executable"
  exit 1
fi
